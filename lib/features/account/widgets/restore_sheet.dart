import 'dart:io';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/backup/cubit/backup_list_cubit.dart';
import 'package:birdbreeder/features/backup/extensions/file_extensions.dart';
import 'package:birdbreeder/services/backup/backup_service.dart';
import 'package:birdbreeder/services/backup/cloud/cloud_backup_manager.dart';
import 'package:birdbreeder/services/backup/cloud/cloud_backup_target.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/theme/app_colors.dart';

/// A restorable backup — either a cloud snapshot or a local snapshot file.
class _RestoreItem {
  _RestoreItem.cloud(CloudEntry e)
      : isCloud = true,
        label = e.name,
        sub = _fmtSize(e.size),
        cloud = e,
        file = null;

  _RestoreItem.local(File f)
      : isCloud = false,
        label = f.displayName,
        sub = f.sizeString,
        cloud = null,
        file = f;

  final bool isCloud;
  final String label;
  final String sub;
  final CloudEntry? cloud;
  final File? file;

  static String _fmtSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
  }
}

/// Restore flow bottom sheet: list available backups (cloud + local) → confirm
/// → restore (which resets the DB and restarts the app).
class RestoreSheet extends StatefulWidget {
  const RestoreSheet({required this.cubit, super.key});

  final BackupListCubit cubit;

  static Future<void> show(BuildContext context, BackupListCubit cubit) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (_) => RestoreSheet(cubit: cubit),
    );
  }

  @override
  State<RestoreSheet> createState() => _RestoreSheetState();
}

class _RestoreSheetState extends State<RestoreSheet> {
  late Future<List<_RestoreItem>> _itemsFuture;
  _RestoreItem? _selected;
  bool _restoring = false;

  @override
  void initState() {
    super.initState();
    _itemsFuture = _loadItems();
  }

  Future<List<_RestoreItem>> _loadItems() async {
    final cloud = await CloudBackupManager.listRemoteSnapshots();
    final local = await BackupService.listSnapshots();
    return [
      ...cloud.map(_RestoreItem.cloud),
      ...local.map(_RestoreItem.local),
    ];
  }

  Future<void> _confirmRestore() async {
    setState(() => _restoring = true);
    final item = _selected!;
    if (item.isCloud) {
      await widget.cubit.restoreFromCloud(item.cloud!);
    } else {
      await widget.cubit.restore(item.file!);
    }
    // On success the app restarts via runApp; if we get here it failed.
    if (mounted) setState(() => _restoring = false);
  }

  Future<void> _pickFromDevice() async {
    final file = await BackupService.pickRestoreFile();
    if (file == null) return;
    setState(() => _selected = _RestoreItem.local(file));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: _selected == null ? _buildList() : _buildConfirm(),
      ),
    );
  }

  Widget _buildList() {
    final tr = context.tr.backup.restore_sheet;
    final scheme = Theme.of(context).colorScheme;
    return FutureBuilder<List<_RestoreItem>>(
      future: _itemsFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Padding(
            padding: EdgeInsets.all(32),
            child: Center(child: CircularProgressIndicator()),
          );
        }
        final items = snapshot.data ?? const <_RestoreItem>[];
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
              child: Text(
                tr.title,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
            if (items.isEmpty)
              Padding(
                padding: const EdgeInsets.all(24),
                child: Text(tr.empty, textAlign: TextAlign.center),
              )
            else
              Flexible(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    for (final item in items)
                      _RestoreTile(
                        item: item,
                        onTap: () => setState(() => _selected = item),
                      ),
                  ],
                ),
              ),
            Divider(height: 1, color: scheme.outlineVariant),
            ListTile(
              leading: const Icon(AppIcons.folderOpen),
              title: Text(tr.pick_file_title),
              subtitle: Text(tr.pick_file_sub),
              onTap: _pickFromDevice,
            ),
          ],
        );
      },
    );
  }

  Widget _buildConfirm() {
    final tr = context.tr.backup.restore_sheet;
    final scheme = Theme.of(context).colorScheme;
    final warnColor = context.appColors.statusWarning;
    final item = _selected!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            tr.confirm_title,
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: scheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.label,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 3),
                Text(
                  item.sub,
                  style: TextStyle(
                    fontSize: 12,
                    color: scheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: warnColor.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(AppIcons.warning, size: 18, color: warnColor),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    tr.warning(Name: item.label),
                    style: const TextStyle(fontSize: 12, height: 1.4),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          FilledButton.icon(
            style: FilledButton.styleFrom(
              backgroundColor: scheme.error,
              foregroundColor: scheme.onError,
              minimumSize: const Size.fromHeight(46),
            ),
            icon: _restoring
                ? const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(AppIcons.restore, size: 18),
            label: Text(_restoring ? tr.restoring : tr.confirm_button),
            onPressed: _restoring ? null : _confirmRestore,
          ),
          const SizedBox(height: 8),
          TextButton(
            onPressed:
                _restoring ? null : () => setState(() => _selected = null),
            child: Text(tr.back),
          ),
        ],
      ),
    );
  }
}

class _RestoreTile extends StatelessWidget {
  const _RestoreTile({required this.item, required this.onTap});

  final _RestoreItem item;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final tr = context.tr.backup.restore_sheet;
    final isCloud = item.isCloud;
    return ListTile(
      leading: CircleAvatar(
        backgroundColor:
            isCloud ? scheme.primaryContainer : scheme.surfaceContainerHighest,
        foregroundColor:
            isCloud ? scheme.onPrimaryContainer : scheme.onSurfaceVariant,
        child: Icon(isCloud ? AppIcons.cloud : AppIcons.backup, size: 19),
      ),
      title: Row(
        children: [
          Flexible(
            child: Text(
              item.label,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(width: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
            decoration: BoxDecoration(
              color: isCloud
                  ? scheme.primaryContainer
                  : scheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              isCloud ? tr.kind_cloud : tr.kind_manual,
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.5,
                color: isCloud
                    ? scheme.onPrimaryContainer
                    : scheme.onSurfaceVariant,
              ),
            ),
          ),
        ],
      ),
      subtitle: Text(item.sub),
      trailing: const Icon(AppIcons.chevronRight, size: 18),
      onTap: onTap,
    );
  }
}
