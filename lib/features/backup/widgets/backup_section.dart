import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/backup/cubit/backup_cubit.dart';
import 'package:birdbreeder/shared/widgets/buttons/data_action_button.dart';

class BackupSection extends StatelessWidget {
  const BackupSection({super.key});

  String _formatDate(DateTime d) {
    String two(int n) => n.toString().padLeft(2, '0');
    return '${two(d.day)}.${two(d.month)}.${d.year} '
        '${two(d.hour)}:${two(d.minute)}';
  }

  Future<void> _confirmAndRestore(BuildContext context) async {
    final cubit = context.read<BackupCubit>();
    final tr = context.tr;
    final file = await cubit.pickRestoreFile();
    if (file == null || !context.mounted) return;

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(tr.backup.restore_dialog.title),
        content: Text(tr.backup.restore_dialog.content_picked),
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
    await cubit.restoreFromFile(file);
  }

  void _openList(BuildContext context) {
    final cubit = context.read<BackupCubit>();
    context.router
        .push(const BackupListRoute())
        .then((_) => cubit.refresh());
  }

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.backup;
    return BlocBuilder<BackupCubit, BackupState>(
      builder: (context, state) {
        final latest = state.latestSnapshot;
        final days = state.daysSinceExternal;
        final loading = state.isLoading;

        final subtitle = loading
            ? tr.loading
            : latest == null
                ? tr.no_backup_yet
                : tr.last_backup(Date: _formatDate(latest.lastModifiedSync()));

        final externText = loading
            ? null
            : days == null
                ? tr.external.never
                : days == 0
                    ? tr.external.today
                    : tr.external.days_ago(count: days);

        return Column(
          children: [
            Text(
              subtitle,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            if (externText != null) ...[
              const SizedBox(height: 4),
              Text(
                externText,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ],
            const SizedBox(height: 12),
            DataActionButton(
              icon: Icons.ios_share,
              label: tr.actions.share_latest,
              onPressed: latest == null
                  ? null
                  : () => unawaited(
                        context.read<BackupCubit>().shareLatestBackup(),
                      ),
            ),
            const SizedBox(height: 8),
            DataActionButton(
              icon: Icons.backup,
              label: tr.actions.create_now,
              onPressed: () =>
                  unawaited(context.read<BackupCubit>().createBackup()),
            ),
            const SizedBox(height: 8),
            DataActionButton(
              icon: Icons.restore,
              label: tr.actions.restore,
              onPressed: () => unawaited(_confirmAndRestore(context)),
            ),
            const SizedBox(height: 8),
            DataActionButton(
              icon: Icons.list,
              label: tr.actions.manage,
              onPressed: () => _openList(context),
            ),
          ],
        );
      },
    );
  }
}
