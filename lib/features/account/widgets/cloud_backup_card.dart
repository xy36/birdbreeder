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
    final chosen = (confirmed ?? false) &&
        context.mounted &&
        await _changeFolder(context, cubit);
    // Without a folder cloud backup can't work, so revert the enable rather
    // than leaving it on in a permanently unavailable state.
    if (!chosen && context.mounted) await cubit.toggle(false);
  }

  /// Picks a cloud folder and, if one was chosen, offers to sync immediately —
  /// picking a folder alone uploads nothing until the next auto/manual sync.
  ///
  /// Returns whether a folder was chosen.
  Future<bool> _changeFolder(
    BuildContext context,
    CloudBackupCubit cubit,
  ) async {
    final chosen = await cubit.chooseLocation();
    if (!chosen || !context.mounted) return chosen;
    final tr = context.tr.backup.cloud.sync_after_change_dialog;
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
    if ((confirmed ?? false) && context.mounted) {
      await _syncNow(context, cubit);
    }
    return true;
  }

  /// Runs a sync behind a blocking spinner dialog so the upload can't be left
  /// half-done by navigating away mid-flight. The dialog closes itself when the
  /// sync future settles — it must not be popped from here, since a fast sync
  /// can finish before the dialog route is even pushed, which would pop the
  /// wrong route.
  Future<void> _syncNow(BuildContext context, CloudBackupCubit cubit) {
    // Start the sync once, outside the builder: showDialog may invoke its
    // builder more than once, and calling syncNow there would fire concurrent
    // syncs.
    final sync = cubit.syncNow();
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (_) => _SyncingDialog(sync: sync),
    );
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
                    onPressed: () => unawaited(_changeFolder(context, cubit)),
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
                        ? () => unawaited(_syncNow(context, cubit))
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

/// Non-dismissible spinner shown while a cloud sync runs, blocking interaction
/// (including back navigation) until the upload finishes.
///
/// The dialog pops itself once [sync] settles, using its own route context —
/// this avoids the race of popping from the caller before the route is pushed.
class _SyncingDialog extends StatefulWidget {
  const _SyncingDialog({required this.sync});

  final Future<void> sync;

  @override
  State<_SyncingDialog> createState() => _SyncingDialogState();
}

class _SyncingDialogState extends State<_SyncingDialog> {
  @override
  void initState() {
    super.initState();
    widget.sync.whenComplete(() {
      if (mounted) Navigator.of(context).pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.backup.cloud;
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    return PopScope(
      canPop: false,
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(28, 28, 28, 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox.square(
                dimension: 68,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircularProgressIndicator(
                      strokeWidth: 3,
                      color: scheme.primary,
                      backgroundColor: scheme.primary.withValues(alpha: 0.12),
                    ),
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: scheme.primaryContainer,
                      ),
                      child: Icon(
                        AppIcons.cloudSync,
                        size: 24,
                        color: scheme.onPrimaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text(
                tr.syncing,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 6),
              Text(
                tr.syncing_hint,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
