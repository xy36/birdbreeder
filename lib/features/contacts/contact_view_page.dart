import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/models/contact/contact_actions.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/theme/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

/// Read-only detail screen for a single [Contact].
///
/// Presents contact data as tappable action rows, a commerce summary derived
/// from linked birds, and the birds bought from / sold to the contact. Editing
/// is reached through the "Bearbeiten" action, which opens the contact form.
@RoutePage()
class ContactViewPage extends StatelessWidget {
  const ContactViewPage({required this.contact, super.key});

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirdBreederCubit, BirdBreederState>(
      builder: (context, state) {
        // Resolve the latest version so edits are reflected on return.
        final current =
            state.birdBreederResources.contacts.findById(contact.id) ?? contact;

        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  context.tr.contacts.detail.title,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  current.fullName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
            actions: [ContactActions.buildMenu(context, current)],
          ),
          body: ListView(
            physics: const AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics(),
            ),
            children: [
              _Hero(contact: current),
              _StatsStrip(contact: current),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 6, 12, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _ContactMethods(contact: current),
                    _LinkedBirds(contact: current),
                    const SizedBox(height: 16),
                    _ActionBar(contact: current),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

Future<void> _launch(Uri uri) async {
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }
}

String _initialsOf(String value) {
  final parts = value.trim().split(RegExp(r'\s+'));
  final chars = parts.take(2).map((e) => e.isNotEmpty ? e[0] : '').join();
  return chars.toUpperCase();
}

class _Hero extends StatelessWidget {
  const _Hero({required this.contact});

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final location = [contact.city, contact.country]
        .where((e) => e != null && e.trim().isNotEmpty)
        .cast<String>()
        .join(' • ');

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      decoration: BoxDecoration(
        color: cs.surface,
        border: Border(bottom: BorderSide(color: cs.outlineVariant)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 64,
            height: 64,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: cs.primaryContainer,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              _initialsOf(contact.fullName),
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: cs.onPrimaryContainer,
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  contact.fullName,
                  style: context.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 6),
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: [
                    if (location.isNotEmpty)
                      _MetaPill(
                        icon: AppIcons.locationOnOutlined,
                        label: location,
                      ),
                    if (contact.number != null && contact.number!.isNotEmpty)
                      _MetaPill(
                        icon: AppIcons.contactSectionBreederInformation,
                        label: '#${contact.number}',
                        mono: true,
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MetaPill extends StatelessWidget {
  const _MetaPill({required this.icon, required this.label, this.mono = false});

  final IconData icon;
  final String label;
  final bool mono;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 3),
      decoration: BoxDecoration(
        color: cs.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12, color: cs.onSurfaceVariant),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontFamily: mono ? 'monospace' : null,
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: cs.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

class _StatsStrip extends StatelessWidget {
  const _StatsStrip({required this.contact});

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final appColors = context.appColors;
    final detail = context.tr.contacts.detail;
    final balance = contact.commerceBalance;
    final balanceLabel = context.money.signed(balance, decimals: false);

    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: cs.outlineVariant)),
      ),
      child: Row(
        children: [
          _StatCell(
            value: '${contact.birdsBoughtCount}',
            label: detail.bought,
            color: cs.primary,
          ),
          _divider(cs),
          _StatCell(
            value: '${contact.birdsSoldCount}',
            label: detail.sold,
            color: appColors.income,
          ),
          _divider(cs),
          _StatCell(
            value: balanceLabel,
            label: detail.balance,
            color: balance >= 0 ? appColors.income : appColors.expense,
          ),
        ],
      ),
    );
  }

  Widget _divider(ColorScheme cs) =>
      Container(width: 1, height: 44, color: cs.outlineVariant);
}

class _StatCell extends StatelessWidget {
  const _StatCell({
    required this.value,
    required this.label,
    required this.color,
  });

  final String value;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Expanded(
      child: ColoredBox(
        color: cs.surface,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          child: Column(
            children: [
              Text(
                value,
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: color,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                label.toUpperCase(),
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                  color: cs.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  const _SectionLabel({required this.icon, required this.label, this.count});

  final IconData icon;
  final String label;
  final int? count;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 14, 4, 8),
      child: Row(
        children: [
          Icon(icon, size: 13, color: cs.onSurfaceVariant),
          const SizedBox(width: 6),
          Text(
            label.toUpperCase(),
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
              color: cs.onSurfaceVariant,
            ),
          ),
          if (count != null) ...[
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 1),
              decoration: BoxDecoration(
                color: cs.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                '$count',
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  color: cs.onSurface,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _ContactMethods extends StatelessWidget {
  const _ContactMethods({required this.contact});

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final l10n = context.tr;

    String? clean(String? value) =>
        (value != null && value.trim().isNotEmpty) ? value.trim() : null;

    final rows = <_MethodRow>[
      if (clean(contact.phone) != null)
        _MethodRow(
          icon: AppIcons.phone,
          label: l10n.contacts.fields.phone,
          value: contact.phone!,
          mono: true,
          actionIcon: AppIcons.phone,
          onAction: () => _launch(Uri(scheme: 'tel', path: contact.phone)),
        ),
      if (clean(contact.cellPhoneNumber) != null)
        _MethodRow(
          icon: AppIcons.phone,
          label: l10n.contacts.fields.cell_phone_number,
          value: contact.cellPhoneNumber!,
          mono: true,
          actionIcon: AppIcons.phone,
          onAction: () =>
              _launch(Uri(scheme: 'tel', path: contact.cellPhoneNumber)),
        ),
      if (clean(contact.email) != null)
        _MethodRow(
          icon: AppIcons.email,
          label: l10n.contacts.fields.email,
          value: contact.email!,
          actionIcon: AppIcons.email,
          onAction: () => _launch(Uri(scheme: 'mailto', path: contact.email)),
        ),
      if (clean(contact.website) != null)
        _MethodRow(
          icon: AppIcons.website,
          label: l10n.contacts.fields.website,
          value: contact.website!,
          actionIcon: AppIcons.website,
          onAction: () => _launch(Uri.parse(_asUrl(contact.website!))),
        ),
      if (_addressLine(contact) != null)
        _MethodRow(
          icon: AppIcons.locationOnOutlined,
          label: l10n.contacts.detail.location,
          value: _addressLine(contact)!,
          actionIcon: AppIcons.city,
          onAction: () => _launch(
            Uri.parse(
              'https://www.google.com/maps/search/?api=1&query='
              '${Uri.encodeComponent(_addressLine(contact)!)}',
            ),
          ),
        ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SectionLabel(
          icon: AppIcons.contactSectionContactInformation,
          label: l10n.contacts.detail.contact_data,
        ),
        if (rows.isEmpty)
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: cs.surface,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: cs.outlineVariant),
            ),
            child: Text(
              l10n.contacts.detail.no_contact_data,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: cs.onSurfaceVariant,
              ),
            ),
          )
        else
          Container(
            decoration: BoxDecoration(
              color: cs.surface,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: cs.outlineVariant),
            ),
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                for (var i = 0; i < rows.length; i++) ...[
                  if (i > 0) Divider(height: 1, color: cs.outlineVariant),
                  rows[i],
                ],
              ],
            ),
          ),
      ],
    );
  }

  static String? _addressLine(Contact c) {
    final parts = [c.address, c.postalCode, c.city, c.country]
        .where((e) => e != null && e.trim().isNotEmpty)
        .cast<String>()
        .toList();
    return parts.isEmpty ? null : parts.join(', ');
  }

  static String _asUrl(String raw) {
    final value = raw.trim();
    if (value.startsWith('http://') || value.startsWith('https://')) {
      return value;
    }
    return 'https://$value';
  }
}

class _MethodRow extends StatelessWidget {
  const _MethodRow({
    required this.icon,
    required this.label,
    required this.value,
    required this.actionIcon,
    required this.onAction,
    this.mono = false,
  });

  final IconData icon;
  final String label;
  final String value;
  final IconData actionIcon;
  final VoidCallback onAction;
  final bool mono;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onAction,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        child: Row(
          children: [
            Container(
              width: 36,
              height: 36,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: cs.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, size: 18, color: cs.onSurfaceVariant),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label.toUpperCase(),
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.8,
                      color: cs.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 1),
                  Text(
                    value,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: mono ? 'monospace' : null,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: cs.onSurface,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Container(
              width: 36,
              height: 36,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: cs.primaryContainer,
                shape: BoxShape.circle,
              ),
              child: Icon(actionIcon, size: 18, color: cs.onPrimaryContainer),
            ),
          ],
        ),
      ),
    );
  }
}

class _LinkedBirds extends StatelessWidget {
  const _LinkedBirds({required this.contact});

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final links = contact.linkedBirds;
    if (links.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SectionLabel(
          icon: AppIcons.pets,
          label: context.tr.contacts.detail.linked_birds,
          count: links.length,
        ),
        Container(
          decoration: BoxDecoration(
            color: cs.surface,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: cs.outlineVariant),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              for (var i = 0; i < links.length; i++) ...[
                if (i > 0) Divider(height: 1, color: cs.outlineVariant),
                _LinkedBirdRow(link: links[i]),
              ],
            ],
          ),
        ),
      ],
    );
  }
}

class _LinkedBirdRow extends StatelessWidget {
  const _LinkedBirdRow({required this.link});

  final LinkedBird link;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final bird = link.bird;
    final sexColor = bird.sex.colorOf(context);
    final color = bird.colorResolved;

    return InkWell(
      onTap: () => context.router.push(BirdRoute(bird: bird)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Row(
          children: [
            Container(
              width: 26,
              height: 26,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: sexColor.withValues(alpha: 0.12),
                shape: BoxShape.circle,
                border: Border.all(color: sexColor, width: 1.5),
              ),
              child: Text(
                bird.sex.symbol,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: sexColor,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bird.ringNumber ?? '—',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: cs.onSurface,
                    ),
                  ),
                  if (color?.name != null) ...[
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        if (color?.hex != null && color!.hex!.isNotEmpty) ...[
                          Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: _parseHex(color.hex!),
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: cs.outline),
                            ),
                          ),
                          const SizedBox(width: 4),
                        ],
                        Text(
                          color?.name ?? '',
                          style: TextStyle(
                            fontSize: 11,
                            color: cs.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(width: 8),
            _RolePill(sold: link.sold),
          ],
        ),
      ),
    );
  }
}

class _RolePill extends StatelessWidget {
  const _RolePill({required this.sold});

  final bool sold;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final appColors = context.appColors;
    final detail = context.tr.contacts.detail;
    final bg =
        sold ? appColors.income.withValues(alpha: 0.16) : cs.primaryContainer;
    final fg = sold ? appColors.income : cs.onPrimaryContainer;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        sold ? detail.role_sold : detail.role_bought,
        style: TextStyle(
          fontSize: 9,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
          color: fg,
        ),
      ),
    );
  }
}

class _ActionBar extends StatelessWidget {
  const _ActionBar({required this.contact});

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final hasPhone = contact.phone != null && contact.phone!.trim().isNotEmpty;

    return Row(
      children: [
        Expanded(
          child: FilledButton.icon(
            onPressed: () => context.router.push(
              ContactDetailsRoute(initialContact: contact),
            ),
            icon: const Icon(AppIcons.edit, size: 18),
            label: Text(context.tr.contacts.detail.edit),
            style: FilledButton.styleFrom(
              minimumSize: const Size.fromHeight(48),
            ),
          ),
        ),
        if (hasPhone) ...[
          const SizedBox(width: 8),
          SizedBox(
            width: 48,
            height: 48,
            child: OutlinedButton(
              onPressed: () => _launch(Uri(scheme: 'tel', path: contact.phone)),
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.zero,
                side: BorderSide(color: cs.outline),
              ),
              child: const Icon(AppIcons.phone, size: 20),
            ),
          ),
        ],
      ],
    );
  }
}

Color _parseHex(String hex) {
  var value = hex.replaceAll('#', '').trim();
  if (value.length == 6) value = 'ff$value';
  final parsed = int.tryParse(value, radix: 16);
  return parsed == null ? Colors.transparent : Color(parsed);
}
