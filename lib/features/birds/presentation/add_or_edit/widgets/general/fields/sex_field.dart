import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/bird/sex_enum.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';

class SexField extends StatelessWidget {
  const SexField({
    required this.bird,
    super.key,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return FieldWithLabel(
      label: context.tr.common.sex.name,
      hasChangedIndicator:
          bird.sex != context.read<BirdCubit>().initialBird?.sex,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: scheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          children: [
            for (final sex in Sex.values)
              Expanded(
                child: _SexSegment(
                  sex: sex,
                  selected: sex == bird.sex,
                  onTap: () => context.read<BirdCubit>().changeBird(
                        bird.copyWith(sex: sex),
                      ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

/// A single stacked-icon card within [SexField].
class _SexSegment extends StatelessWidget {
  const _SexSegment({
    required this.sex,
    required this.selected,
    required this.onTap,
  });

  final Sex sex;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final labelColor = selected ? scheme.onSurface : scheme.onSurfaceVariant;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: selected ? scheme.primaryContainer : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          boxShadow: selected
              ? [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.10),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ]
              : null,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(sex.iconData, size: 22, color: sex.colorOf(context)),
            const SizedBox(height: 6),
            Text(
              sex.getDisplayName(context),
              style: TextStyle(
                fontSize: 12.5,
                fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
                color: labelColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
