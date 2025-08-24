import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';

class SexField extends StatelessWidget {
  const SexField({
    super.key,
    required this.bird,
  });

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return FieldWithLabel(
      label: context.l10n.common__sex,
      hasChangedIndicator:
          bird.sex != context.read<BirdCubit>().initialBird?.sex,
      child: SegmentedButton(
        style: SegmentedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        showSelectedIcon: false,
        segments: <ButtonSegment<Sex>>[
          ...Sex.values.map(
            (e) => ButtonSegment<Sex>(
              value: e,
              label: Padding(
                padding: const EdgeInsets.all(4),
                child: Column(
                  spacing: 8,
                  children: [
                    e.getIcon(context, size: 20),
                    Text(
                      e.getDisplayName(context),
                      style: context.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
        selected: <Sex>{bird.sex},
        onSelectionChanged: (sex) {
          context.read<BirdCubit>().changeBird(
                bird.copyWith(sex: sex.first),
              );
        },
      ),
    );
  }
}
