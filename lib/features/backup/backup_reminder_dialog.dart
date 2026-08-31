import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/account/account_section.dart';
import 'package:birdbreeder/services/backup/backup_service.dart';
import 'package:birdbreeder/services/backup/cloud/cloud_backup_manager.dart';
import 'package:birdbreeder/services/injection.dart';

Future<void> showBackupReminderDialog(BuildContext context) async {
  final tr = context.tr.backup;
  final days = await BackupService.daysSinceLastExternal();
  if (!context.mounted) return;

  final ageText =
      days == null ? tr.reminder.never : tr.reminder.age(count: days);

  await showDialog<void>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(tr.reminder.title),
      content: Text(
        '$ageText\n\n${tr.reminder.body}\n\n${tr.reminder.cloud_hint}',
      ),
      actions: [
        TextButton(
          onPressed: () async {
            await BackupService.snoozeReminder();
            if (!ctx.mounted) return;
            Navigator.of(ctx).pop();
          },
          child: Text(tr.reminder.snooze),
        ),
        TextButton(
          onPressed: () async {
            await BackupService.markSharedExternally();
            if (!ctx.mounted) return;
            Navigator.of(ctx).pop();
          },
          child: Text(tr.reminder.already_saved),
        ),
        // Hidden where cloud backup does not exist: the account screen renders
        // no cloud card there, so the link would land on nothing.
        if (CloudBackupManager.isSupported)
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              unawaited(
                ctx.router.push(
                  AccountRoute(scrollTo: AccountSection.cloudBackup),
                ),
              );
            },
            child: Text(tr.reminder.setup_cloud),
          ),
        FilledButton(
          onPressed: () async {
            Navigator.of(ctx).pop();
            try {
              var snapshot = await BackupService.latestSnapshot();
              snapshot ??= await BackupService.createSnapshot();
              await BackupService.shareSnapshot(snapshot);
            } on Exception catch (e) {
              s1.get<SnackbarService>().showError(
                    tr.events.share_failed(Error: e.toString()),
                  );
            }
          },
          child: Text(tr.reminder.share_now),
        ),
      ],
    ),
  );
}
