import 'dart:async';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/account/widgets/account_ui.dart';
import 'package:birdbreeder/features/backup/cubit/cloud_backup_cubit.dart';
import 'package:birdbreeder/services/backup/backup_service.dart';
import 'package:birdbreeder/services/backup/cloud/cloud_backup_target.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/theme/app_colors.dart';

/// Cloud backup card: enable toggle, folder, last sync, sync-now and the
/// auto-backup interval picker. Wired to [CloudBackupCubit].
class CloudBackupCard extends StatelessWidget {
  const CloudBackupCard({super.key});

  Future<void> _onToggle(
    BuildContext context,
    CloudBackupCubit cubit,
    bool value,
  ) async {
    await cubit.toggle(value);
    if (!value || !context.mounted || !cubit.needsLocation) return;
    // Enabled but no folder chosen yet — ask to pick one instead of erroring.
    final tr = context.tr.backup.cloud.choose_folder_dialog;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(tr.title),
        content: Text(tr.content),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: Text(context.tr.common.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: Text(tr.confirm),
          ),
        ],
      ),
    );
    if (confirmed ?? false) await cubit.chooseLocation();
  }

  String _intervalLabel(BuildContext context, AutoBackupInterval interval) {
    final tr = context.tr.backup.cloud.interval;
    return switch (interval) {
      AutoBackupInterval.everyLaunch => tr.every_launch,
      AutoBackupInterval.daily => tr.daily,
      AutoBackupInterval.weekly => tr.weekly,
      AutoBackupInterval.off => tr.off,
    };
  }

  String _lastSyncText(BuildContext context, CloudBackupState state) {
    final tr = context.tr.backup.cloud;
    if (state.syncing) return tr.syncing;
    if (!state.available) {
      return switch (state.unavailableReason) {
        CloudUnavailableReason.notSignedIn => tr.status.unavailable_icloud,
        _ => tr.status.unavailable_folder,
      };
    }
    final last = state.lastSyncAt;
    if (last == null) return tr.status.never;
    final days = DateTime.now().toUtc().difference(last).inDays;
    return days == 0
        ? tr.status.synced_today
        : tr.status.synced_days_ago(count: days);
  }

  Future<void> _pickInterval(
    BuildContext context,
    CloudBackupCubit cubit,
    AutoBackupInterval current,
  ) {
    final tr = context.tr.backup.cloud.interval;
    return showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      builder: (sheetContext) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              tr.sheet_title,
              style: Theme.of(sheetContext).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            for (final option in AutoBackupInterval.values)
              ListTile(
                leading: Icon(
                  option == current
                      ? AppIcons.radioChecked
                      : AppIcons.radioUnchecked,
                  color: option == current
                      ? Theme.of(sheetContext).colorScheme.primary
                      : null,
                ),
                title: Text(_intervalLabel(context, option)),
                onTap: () {
                  unawaited(cubit.setInterval(option));
                  Navigator.of(sheetContext).pop();
                },
              ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.backup.cloud;
    final scheme = Theme.of(context).colorScheme;
    final success = context.appColors.statusSuccess;
    return BlocBuilder<CloudBackupCubit, CloudBackupState>(
      builder: (context, state) {
        if (state.loading || !state.supported) {
          return const SizedBox.shrink();
        }
        final cubit = context.read<CloudBackupCubit>();
        return AccountCard(
          child: Column(
            children: [
              AccountRow(
                badge: AccountIconBadge(
                  icon: AppIcons.cloudDone,
                  background:
                      state.enabled ? success.withValues(alpha: 0.18) : null,
                  foreground: state.enabled ? success : null,
                ),
                title: tr.auto_title,
                subtitle: Text(state.enabled ? tr.auto_on : tr.auto_off),
                trailing: Switch(
                  value: state.enabled,
                  onChanged: (v) => unawaited(_onToggle(context, cubit, v)),
                ),
                showDivider: state.enabled,
              ),
              if (state.enabled) ...[
                AccountRow(
                  badge: AccountIconBadge(
                    icon: AppIcons.folder,
                    background: scheme.primaryContainer,
                    foreground: scheme.onPrimaryContainer,
                  ),
                  title: tr.folder_label,
                  subtitle: Text(state.locationName ?? tr.location_none),
                  trailing: TextButton(
                    onPressed: () => unawaited(cubit.chooseLocation()),
                    child: Text(tr.change),
                  ),
                  showDivider: true,
                ),
                AccountRow(
                  badge: const AccountIconBadge(icon: AppIcons.history),
                  title: tr.last_sync_label,
                  subtitle: Text(_lastSyncText(context, state)),
                  showDivider: true,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size.fromHeight(44),
                    ),
                    icon: const Icon(AppIcons.cloudSync, size: 18),
                    label: Text(state.syncing ? tr.syncing : tr.sync_now),
                    onPressed: state.available && !state.syncing
                        ? () => unawaited(cubit.syncNow())
                        : null,
                  ),
                ),
                ColoredBox(
                  color: scheme.surfaceContainerHighest.withValues(alpha: 0.4),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(14, 10, 14, 4),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            tr.settings.toUpperCase(),
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1,
                              color: scheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                      ),
                      AccountRow(
                        title: tr.interval.label,
                        subtitle: Text(tr.interval.sub),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              _intervalLabel(context, state.interval),
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: scheme.primary,
                              ),
                            ),
                            Icon(
                              AppIcons.expandMore,
                              size: 18,
                              color: scheme.primary,
                            ),
                          ],
                        ),
                        onTap: () =>
                            _pickInterval(context, cubit, state.interval),
                      ),
                    ],
                  ),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
