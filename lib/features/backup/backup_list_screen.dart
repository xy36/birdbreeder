import 'dart:async';
import 'dart:io';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/backup/cubit/backup_list_cubit.dart';
import 'package:birdbreeder/features/backup/extensions/file_extensions.dart';
import 'package:birdbreeder/shared/icons.dart';

class BackupListScreen extends StatelessWidget {
  const BackupListScreen({super.key});

  Future<void> _confirmDelete(BuildContext context, File f) async {
    final cubit = context.read<BackupListCubit>();
    final tr = context.tr;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(tr.backup.delete_dialog.title),
        content: Text(f.displayName),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text(tr.common.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: Text(tr.backup.delete_dialog.confirm),
          ),
        ],
      ),
    );
    if (confirmed != true) return;
    await cubit.delete(f);
  }

  Future<void> _confirmRestore(BuildContext context, File f) async {
    final cubit = context.read<BackupListCubit>();
    final tr = context.tr;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(tr.backup.restore_dialog.title),
        content: Text(
          tr.backup.restore_dialog.content_named(Name: f.displayName),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text(tr.common.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: Text(tr.backup.restore_dialog.confirm),
          ),
        ],
      ),
    );
    if (confirmed != true) return;
    await cubit.restore(f);
  }

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.backup;
    return Scaffold(
      appBar: AppBar(title: Text(tr.page_title)),
      body: BlocBuilder<BackupListCubit, BackupListState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          final snapshots = state.snapshots;
          if (snapshots.isEmpty) {
            return Center(child: Text(tr.empty));
          }
          return RefreshIndicator(
            onRefresh: () => context.read<BackupListCubit>().refresh(),
            child: ListView.separated(
              itemCount: snapshots.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (context, i) {
                final f = snapshots[i];
                return ListTile(
                  leading: const Icon(AppIcons.storage),
                  title: Text(f.displayName),
                  subtitle: Text(f.sizeString),
                  trailing: PopupMenuButton<String>(
                    onSelected: (v) {
                      switch (v) {
                        case 'share':
                          unawaited(context.read<BackupListCubit>().share(f));
                        case 'restore':
                          unawaited(_confirmRestore(context, f));
                        case 'delete':
                          unawaited(_confirmDelete(context, f));
                      }
                    },
                    itemBuilder: (_) => [
                      PopupMenuItem(
                        value: 'share',
                        child: ListTile(
                          leading: const Icon(AppIcons.iosShare),
                          title: Text(tr.menu.share),
                        ),
                      ),
                      PopupMenuItem(
                        value: 'restore',
                        child: ListTile(
                          leading: const Icon(AppIcons.restore),
                          title: Text(tr.menu.restore),
                        ),
                      ),
                      PopupMenuItem(
                        value: 'delete',
                        child: ListTile(
                          leading: const Icon(AppIcons.deleteOutline),
                          title: Text(tr.menu.delete),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(AppIcons.add),
        label: Text(tr.actions.kNew),
        onPressed: () =>
            unawaited(context.read<BackupListCubit>().createSnapshot()),
      ),
    );
  }
}
