import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/bird_fields.dart';

class LifeStageField extends StatelessWidget {
  const LifeStageField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  double _toDouble(LifeStage stage) =>
      LifeStage.values.indexOf(stage).toDouble();
  LifeStage _toEnum(double d) => LifeStage.values[d.round()];

  void onChanged(BuildContext context, double value) {
    final next = _toEnum(value);

    if (next.index <= (bird.lifeStage?.index ?? 0)) return;

    final now = DateTime.now();
    final currentState = formKey.currentState;
    final fledgedAtField = currentState?.fields['fledged_at_date_field'];
    final hatchedAtField = currentState?.fields['hatched_at_date_field'];
    final laidAtField = currentState?.fields['laid_at_date_field'];
    final diedAtField = currentState?.fields['died_at_date_field'];

    switch (next) {
      case LifeStage.egg:
        laidAtField?.didChange(now);
        hatchedAtField?.didChange(null);
        fledgedAtField?.didChange(null);
        diedAtField?.didChange(null);
        context.read<BirdCubit>().changeBird(
              bird.copyWith(
                laidAt: now,
                hatchedAt: null,
                fledgedAt: null,
                diedAt: null,
              ),
            );
        break;
      case LifeStage.chick:
        hatchedAtField?.didChange(now);
        fledgedAtField?.didChange(null);
        diedAtField?.didChange(null);
        context.read<BirdCubit>().changeBird(
              bird.copyWith(
                hatchedAt: now,
                fledgedAt: null,
                diedAt: null,
              ),
            );
        break;
      case LifeStage.adult:
        fledgedAtField?.didChange(now);
        diedAtField?.didChange(null);
        context.read<BirdCubit>().changeBird(
              bird.copyWith(
                fledgedAt: now,
                diedAt: null,
              ),
            );
        break;
      case LifeStage.deceased:
        diedAtField?.didChange(now);
        context.read<BirdCubit>().changeBird(
              bird.copyWith(
                diedAt: now,
              ),
            );
    }
  }

  @override
  Widget build(BuildContext context) {
    final value = bird.lifeStage;
    final cs = Theme.of(context).colorScheme;

    if (value == null) return const SizedBox.shrink();

    return Column(
      children: [
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackShape: const RectangularSliderTrackShape(),
            trackHeight: 4,
            tickMarkShape: const RoundSliderTickMarkShape(tickMarkRadius: 3),
            activeTickMarkColor: cs.primary,
            inactiveTickMarkColor: cs.onSurface.withValues(alpha: 0.3),
          ),
          child: Slider(
            value: _toDouble(value),
            max: (LifeStage.values.length - 1).toDouble(),
            divisions: LifeStage.values.length - 1,
            label: value.getDisplayName(context),
            onChanged: (value) => onChanged(context, value),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: LifeStage.values.map((stage) {
            final isActive = stage == value;
            return GestureDetector(
              onTap: () {
                onChanged(context, _toDouble(stage));
              },
              child: SizedBox(
                width: 64,
                child: Column(
                  children: [
                    Icon(
                      stage.icon,
                      color: isActive
                          ? cs.primary
                          : Theme.of(context).disabledColor,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      stage.getDisplayName(context),
                      style: context.bodySmall?.copyWith(
                        color: isActive
                            ? cs.primary
                            : cs.onSurface.withValues(alpha: 0.3),
                        fontWeight: isActive ? FontWeight.bold : null,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
