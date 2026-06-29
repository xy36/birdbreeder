import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/genetics/inbreeding_calculator.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/inbreeding_presentation.dart';

/// Compact banner showing an inbreeding coefficient and its severity, colored by
/// risk. Used in the breeding-pair sheet once both birds are selected.
class InbreedingBanner extends StatelessWidget {
  const InbreedingBanner({required this.result, this.onTap, super.key});

  final InbreedingResult result;

  /// Optional tap handler, e.g. to open a details sheet.
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final severity = result.severity;
    final color = severity.colorOf(context);
    final tr = context.tr.inbreeding;
    final count = result.commonAncestorIds.length;
    final ancestorsLabel = count == 1
        ? tr.common_ancestors_one
        : tr.common_ancestors_other(Count: count);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.12),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: color.withValues(alpha: 0.6)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Row(
          children: [
            Icon(AppIcons.warning, size: 18, color: color),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tr.banner_label(
                      Percent: formatInbreedingPercent(result.percent),
                    ),
                    style: TextStyle(fontWeight: FontWeight.w700, color: color),
                  ),
                  Text(
                    '${severity.label(context)} · $ancestorsLabel',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            if (onTap != null)
              Icon(AppIcons.chevronRight, size: 18, color: color),
          ],
        ),
      ),
    );
  }
}
