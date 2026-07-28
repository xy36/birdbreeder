import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/theme/app_colors.dart';

/// Sticky summary header for the contacts overview.
///
/// Mirrors the birds roster summary: a large monospace total with the
/// "Kontakte" label and two chips for the aggregate bought / sold bird counts.
class ContactsSummary extends StatelessWidget {
  const ContactsSummary({
    required this.total,
    required this.boughtCount,
    required this.soldCount,
    super.key,
  });

  final int total;
  final int boughtCount;
  final int soldCount;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final appColors = context.appColors;
    final overview = context.tr.contacts.overview;

    return Container(
      padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
      decoration: BoxDecoration(
        color: cs.surface,
        border: Border(bottom: BorderSide(color: cs.outlineVariant)),
      ),
      child: Row(
        children: [
          Text(
            '$total',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 28,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5,
              height: 1,
              color: cs.onSurface,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            overview.total_label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: cs.onSurfaceVariant,
            ),
          ),
          const Spacer(),
          if (boughtCount > 0)
            _SummaryChip(
              icon: AppIcons.buy,
              label: overview.bought_chip(Count: boughtCount),
              background: cs.primaryContainer,
              foreground: cs.onPrimaryContainer,
            ),
          if (soldCount > 0) ...[
            const SizedBox(width: 6),
            _SummaryChip(
              icon: AppIcons.sell,
              label: overview.sold_chip(Count: soldCount),
              background: appColors.income.withValues(alpha: 0.16),
              foreground: appColors.income,
            ),
          ],
        ],
      ),
    );
  }
}

class _SummaryChip extends StatelessWidget {
  const _SummaryChip({
    required this.icon,
    required this.label,
    required this.background,
    required this.foreground,
  });

  final IconData icon;
  final String label;
  final Color background;
  final Color foreground;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12, color: foreground),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              color: foreground,
            ),
          ),
        ],
      ),
    );
  }
}
