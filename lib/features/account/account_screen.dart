import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/account/account_section.dart';
import 'package:birdbreeder/features/account/widgets/account_ui.dart';
import 'package:birdbreeder/features/account/widgets/appearance_section.dart';
import 'package:birdbreeder/features/account/widgets/cloud_backup_card.dart';
import 'package:birdbreeder/features/account/widgets/currency_section.dart';
import 'package:birdbreeder/features/account/widgets/language_section.dart';
import 'package:birdbreeder/features/account/widgets/manual_backup_card.dart';
import 'package:birdbreeder/features/account/widgets/profile_hero_card.dart';
import 'package:birdbreeder/services/backup/cloud/cloud_backup_manager.dart';
import 'package:birdbreeder/shared/icons.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key, this.scrollTo});

  /// Section to reveal once the page is laid out. The cloud card sits at the
  /// very bottom of a long page, so linking here without scrolling would drop
  /// the user somewhere that looks unrelated to what they tapped.
  final AccountSection? scrollTo;

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final GlobalKey _cloudBackupKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    if (widget.scrollTo == null) return;
    WidgetsBinding.instance.addPostFrameCallback((_) => _revealTarget());
  }

  Future<void> _revealTarget() async {
    final key = switch (widget.scrollTo) {
      AccountSection.cloudBackup => _cloudBackupKey,
      null => null,
    };
    final target = key?.currentContext;
    // Absent when the section isn't rendered on this platform — the cloud card
    // only exists where cloud backup is supported.
    if (target == null) return;
    await Scrollable.ensureVisible(
      target,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
      alignment: 0.1,
    );
  }

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
            const SizedBox(height: 8),
            const AccountCard(child: LanguageSection()),
            const SizedBox(height: 8),
            const AccountCard(child: CurrencySection()),
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
                key: _cloudBackupKey,
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
