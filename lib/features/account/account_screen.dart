import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/account/widgets/account_ui.dart';
import 'package:birdbreeder/features/account/widgets/appearance_section.dart';
import 'package:birdbreeder/features/account/widgets/cloud_backup_card.dart';
import 'package:birdbreeder/features/account/widgets/manual_backup_card.dart';
import 'package:birdbreeder/features/account/widgets/profile_hero_card.dart';
import 'package:birdbreeder/services/backup/cloud/cloud_backup_manager.dart';
import 'package:birdbreeder/shared/icons.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tr = context.tr;
    return Scaffold(
      appBar: SharedAppBarWithDrawer(title: tr.account.title),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const ProfileHeroCard(),
            const SizedBox(height: 16),
            AccountSectionLabel(
              icon: AppIcons.paletteOutlined,
              label: tr.account.appearance.title,
            ),
            const AccountCard(
              child: Padding(
                padding: EdgeInsets.all(14),
                child: AppearanceSection(),
              ),
            ),
            const SizedBox(height: 16),
            AccountSectionLabel(
              icon: AppIcons.export,
              label: tr.export.title,
            ),
            AccountCard(
              child: AccountRow(
                badge: const AccountIconBadge(icon: AppIcons.letterhead),
                title: tr.export.header.title,
                subtitle: Text(tr.export.header.subtitle),
                trailing: const Icon(AppIcons.chevronRight),
                onTap: () => context.router.push(const PdfHeaderListRoute()),
              ),
            ),
            const SizedBox(height: 16),
            AccountSectionLabel(
              icon: AppIcons.save,
              label: tr.backup.manual_section,
            ),
            const ManualBackupCard(),
            if (CloudBackupManager.isSupported) ...[
              const SizedBox(height: 16),
              AccountSectionLabel(
                icon: AppIcons.cloud,
                label: tr.backup.cloud.section_title,
              ),
              const CloudBackupCard(),
            ],
          ],
        ),
      ),
    );
  }
}
