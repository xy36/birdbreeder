import 'package:awesome_extensions/awesome_extensions.dart';
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
    return FieldWithLabel(
      label: context.tr.common.sex.name,
      hasChangedIndicator:
          bird.sex != context.read<BirdCubit>().initialBird?.sex,
      child: Row(
        children: [
          Expanded(
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
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Theme.of(context)
                                .colorScheme
                                .onSurface
                                .withAlpha(35),
                            child: Icon(
                              e.iconData,
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                          ),
                          Text(
                            e.getDisplayName(context),
                            style: context.bodyLarge,
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
          ),
        ],
      ),
    );
  }
}
