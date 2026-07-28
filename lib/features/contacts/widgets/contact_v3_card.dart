import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/theme/app_colors.dart';

/// Compact card-based contact tile ("Contacts V3").
///
/// Shows a type-neutral avatar, the name and location, and a last-activity
/// preview derived from linked birds. The whole card is tappable and opens the
/// contact's detail screen, where calling, e-mailing and editing live.
class ContactV3Card extends StatelessWidget {
  const ContactV3Card({
    required this.contact,
    required this.onTap,
    super.key,
  });

  final Contact contact;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final activity = contact.lastActivity;
    final location = [contact.city, contact.country]
        .where((e) => e != null && e.trim().isNotEmpty)
        .cast<String>()
        .join(' • ');

    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: cs.outlineVariant.withValues(alpha: 0.6)),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Row(
                children: [
                  _Avatar(name: contact.fullName),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          contact.fullName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: context.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        if (location.isNotEmpty) ...[
                          const SizedBox(height: 2),
                          Row(
                            children: [
                              Icon(
                                AppIcons.locationOnOutlined,
                                size: 12,
                                color: cs.onSurfaceVariant,
                              ),
                              const SizedBox(width: 3),
                              Expanded(
                                child: Text(
                                  location,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: cs.onSurfaceVariant,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ],
                    ),
                  ),
                  if (contact.number != null && contact.number!.isNotEmpty) ...[
                    const SizedBox(width: 8),
                    _NumberPill(number: contact.number!),
                  ],
                  Icon(
                    AppIcons.chevronRight,
                    size: 18,
                    color: cs.onSurfaceVariant,
                  ),
                ],
              ),
            ),
            if (activity != null) _ActivityRow(activity: activity),
          ],
        ),
      ),
    );
  }
}

class _ActivityRow extends StatelessWidget {
  const _ActivityRow({required this.activity});

  final ContactActivity activity;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final appColors = context.appColors;
    final ring = activity.bird.ringNumber ?? '—';
    final text = activity.sold
        ? context.tr.contacts.overview.activity_sold(Ring: ring)
        : context.tr.contacts.overview.activity_bought(Ring: ring);
    final tint = activity.sold ? appColors.income : cs.primary;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: BoxDecoration(
        color: cs.surfaceContainerHighest.withValues(alpha: 0.5),
        border: Border(top: BorderSide(color: cs.outlineVariant)),
      ),
      child: Row(
        children: [
          Icon(
            activity.sold ? AppIcons.sell : AppIcons.buy,
            size: 13,
            color: tint,
          ),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: cs.onSurface,
              ),
            ),
          ),
          if (activity.date != null) ...[
            const SizedBox(width: 8),
            Text(
              _shortDate(activity.date!),
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: cs.onSurfaceVariant,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _NumberPill extends StatelessWidget {
  const _NumberPill({required this.number});

  final String number;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: cs.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        '#$number',
        style: TextStyle(
          fontFamily: 'monospace',
          fontSize: 11,
          fontWeight: FontWeight.w700,
          color: cs.onSurfaceVariant,
        ),
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: cs.primaryContainer,
        borderRadius: BorderRadius.circular(11),
      ),
      child: Text(
        _initialsOf(name),
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.3,
          color: cs.onPrimaryContainer,
        ),
      ),
    );
  }
}

String _initialsOf(String value) {
  final parts = value.trim().split(RegExp(r'\s+'));
  final chars = parts.take(2).map((e) => e.isNotEmpty ? e[0] : '').join();
  return chars.toUpperCase();
}

String _shortDate(DateTime date) {
  final day = date.day.toString().padLeft(2, '0');
  final month = date.month.toString().padLeft(2, '0');
  return '$day.$month';
}
