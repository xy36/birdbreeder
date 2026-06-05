import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/resource_overview_ui.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/theme/app_colors.dart';

class CageRow extends StatelessWidget {
  const CageRow({
    required this.cage,
    required this.occupied,
    required this.last,
    required this.onTap,
    super.key,
  });

  final Cage cage;
  final int occupied;
  final bool last;
  final VoidCallback onTap;

  IconData get _icon {
    switch (cage.type) {
      case CageType.breedingBox:
        return AppIcons.cageBreedingBox;
      case CageType.quarantine:
        return AppIcons.cageQuarantine;
      case CageType.aviary:
      case null:
        return AppIcons.cageAviary;
    }
  }

  (Color, Color) _typeColors(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    switch (cage.type) {
      case CageType.breedingBox:
        return (cs.tertiaryContainer, cs.tertiary);
      case CageType.quarantine:
        return (
          context.appColors.expense.withValues(alpha: 0.18),
          context.appColors.expense,
        );
      case CageType.aviary:
      case null:
        return (cs.primaryContainer, cs.primary);
    }
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final (bg, fg) = _typeColors(context);
    final rawCapacity = cage.capacity ?? 0;
    final capacity = rawCapacity > occupied ? rawCapacity : occupied;
    final ratio = capacity == 0 ? 0.0 : occupied / capacity;
    final full = capacity > 0 && occupied >= capacity;
    final barColor = full
        ? context.appColors.expense
        : ratio > 0.7
            ? cs.tertiary
            : cs.primary;

    return OverviewRow(
      onTap: onTap,
      last: last,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(_icon, size: 20, color: fg),
      ),
      title: Text(cage.name ?? '—'),
      subtitle: Row(
        children: [
          if (cage.type != null)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 1),
              decoration: BoxDecoration(
                color: bg,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Text(
                cage.type!.getDisplayName(context).toUpperCase(),
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                  color: fg,
                ),
              ),
            ),
          const SizedBox(width: 5),
          if (occupied == 0)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 1),
              decoration: BoxDecoration(
                color: cs.surfaceContainer,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Text(
                context.tr.cages.empty_badge,
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                  color: cs.onSurfaceVariant,
                ),
              ),
            ),
          if (rawCapacity == 0 && occupied > 0)
            Tooltip(
              message: context.tr.cages.capacity_missing_hint,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: context.appColors.expense.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  AppIcons.warning,
                  size: 10,
                  color: context.appColors.expense,
                ),
              ),
            ),
        ],
      ),
      trailing: SizedBox(
        width: 92,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '$occupied',
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: cs.onSurface,
                    ),
                  ),
                  TextSpan(
                    text: '/$capacity',
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: cs.outline,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 3),
            ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child: Stack(
                children: [
                  Container(height: 5, color: cs.surfaceContainer),
                  FractionallySizedBox(
                    widthFactor: ratio.clamp(0.04, 1.0),
                    child: Container(height: 5, color: barColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
