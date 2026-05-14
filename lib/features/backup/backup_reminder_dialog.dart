import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/services/backup/backup_service.dart';
import 'package:birdbreeder/services/injection.dart';

Future<void> showBackupReminderDialog(BuildContext context) async {
  final tr = context.tr.backup;
  final days = await BackupService.daysSinceLastExternal();
  if (!context.mounted) return;

  final ageText = days == null
      ? tr.reminder.never
      : tr.reminder.age(count: days);

  await showDialog<void>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(tr.reminder.title),
      content: Text('$ageText\n\n${tr.reminder.body}'),
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
