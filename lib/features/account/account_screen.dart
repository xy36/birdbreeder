import 'dart:async';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/account/cubit/account_cubit.dart';
import 'package:birdbreeder/features/account/widgets/appearance_section.dart';
import 'package:birdbreeder/features/account/widgets/user_widget.dart';
import 'package:birdbreeder/features/backup/widgets/backup_section.dart';
import 'package:birdbreeder/services/authentication/i_authentication_service.dart';
import 'package:birdbreeder/services/data_mode/data_mode.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/buttons/data_action_button.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isLocal = s1.get<DataMode>() == DataMode.local;

    return Scaffold(
      appBar: SharedAppBarWithDrawer(title: context.tr.account.title),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!isLocal) ...[
                  UserWidget(
                    user: s1
                        .get<IAuthenticationService>()
                        .currentUser()
                        .asValue
                        ?.value,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => s1.get<IAuthenticationService>().signOut(),
                    child: Text(context.tr.account.logout),
                  ),
                  const SizedBox(height: 8),
                  OutlinedButton.icon(
                    onPressed: () => _switchToLocal(context),
                    icon: const Icon(AppIcons.phoneAndroid),
                    label: Text(context.tr.account.switch_to_local),
                  ),
                ],
                if (isLocal) ...[
                  Icon(
                    AppIcons.phoneAndroid,
                    size: 64,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    context.tr.account.local_mode.title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    context.tr.account.local_mode.description,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 32),
                  const Divider(),
                  const SizedBox(height: 16),
                  Text(
                    context.tr.backup.section_title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 16),
                  const BackupSection(),
                ],
                const SizedBox(height: 32),
                const Divider(),
                const SizedBox(height: 16),
                Text(
                  context.tr.account.appearance.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 16),
                const AppearanceSection(),
                const SizedBox(height: 32),
                const Divider(),
                const SizedBox(height: 16),
                Text(
                  context.tr.account.data.section_title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 16),
                DataActionButton(
                  icon: AppIcons.upload,
                  label: context.tr.account.data.export_json,
                  onPressed: () =>
                      unawaited(context.read<AccountCubit>().exportJson()),
                ),
                const SizedBox(height: 8),
                DataActionButton(
                  icon: AppIcons.download,
                  label: context.tr.account.data.import_json,
                  onPressed: () => unawaited(_importData(context)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _switchToLocal(BuildContext context) async {
    final tr = context.tr;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(tr.account.switch_to_local_dialog.title),
        content: Text(tr.account.switch_to_local_dialog.content),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text(tr.common.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: Text(tr.account.switch_to_local_dialog.confirm),
          ),
        ],
      ),
    );
    if (confirmed != true || !context.mounted) return;
    await context.read<AccountCubit>().switchToLocal();
  }

  Future<void> _importData(BuildContext context) async {
    final tr = context.tr;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(tr.account.data.import_dialog.title),
        content: Text(tr.account.data.import_dialog.content),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text(tr.common.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text(tr.account.data.import_dialog.add),
          ),
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: Text(tr.account.data.import_dialog.replace),
          ),
        ],
      ),
    );
    if (confirmed == null || !context.mounted) return;
    await context.read<AccountCubit>().importJson(clearExisting: confirmed);
  }
}
