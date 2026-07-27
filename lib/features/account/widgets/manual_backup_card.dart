import 'dart:async';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/account/widgets/account_ui.dart';
import 'package:birdbreeder/features/account/widgets/restore_sheet.dart';
import 'package:birdbreeder/features/backup/cubit/backup_cubit.dart';
import 'package:birdbreeder/features/backup/cubit/backup_list_cubit.dart';
import 'package:birdbreeder/features/backup/extensions/file_extensions.dart';
import 'package:birdbreeder/shared/icons.dart';

/// Manual backup card: shows the latest snapshot, creates & shares a new one,
/// and opens the restore flow.
class ManualBackupCard extends StatelessWidget {
  const ManualBackupCard({super.key});

  Future<void> _createAndShare(BuildContext context) async {
    final cubit = context.read<BackupCubit>();
    await cubit.createBackup();
    await cubit.shareExportBundle();
  }

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.backup;
    return BlocBuilder<BackupCubit, BackupState>(
      builder: (context, state) {
        final latest = state.latestSnapshot;
        final subtitle = latest == null
            ? tr.no_backup_size
            : '${latest.displayName} · ${latest.sizeString}';
        return AccountCard(
          child: Column(
            children: [
              AccountRow(
                badge: const AccountIconBadge(icon: AppIcons.description),
                title: tr.last_backup_label,
                subtitle: Text(subtitle),
                showDivider: true,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 12, 14, 8),
                child: FilledButton.icon(
                  style: FilledButton.styleFrom(
                    minimumSize: const Size.fromHeight(44),
                  ),
                  icon: const Icon(AppIcons.iosShare, size: 18),
                  label: Text(tr.actions.create_and_save),
                  onPressed: () => unawaited(_createAndShare(context)),
                ),
              ),
              AccountInfoStrip(text: tr.create_hint),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 14, 8),
                child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size.fromHeight(44),
                  ),
                  icon: const Icon(AppIcons.restore, size: 18),
                  label: Text(tr.actions.restore),
                  onPressed: () => unawaited(
                    RestoreSheet.show(
                      context,
                      context.read<BackupListCubit>(),
                    ),
                  ),
                ),
              ),
              AccountInfoStrip(text: tr.restore_hint),
            ],
          ),
        );
      },
    );
  }
}
