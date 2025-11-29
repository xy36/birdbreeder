import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';

class UnknownLifecycleField extends StatelessWidget {
  const UnknownLifecycleField({required this.bird, super.key});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    return FormBuilderSwitch(
      name: 'unknown_lifecycle_field',
      title: Text(
        context.tr.bird.sections.life.unknown_lifecycle_title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        context.tr.bird.sections.life.unknown_lifecycle_sub_title,
        style: context.bodySmall,
      ),
      initialValue: bird.unknownLifecycle ?? false,
      decoration: const InputDecoration(
        border: InputBorder.none,
      ),
      onChanged: (value) {
        context
            .read<BirdCubit>()
            .changeBird(bird.copyWith(unknownLifecycle: value));
      },
    );
  }
}
