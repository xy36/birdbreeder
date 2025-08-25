import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/models/bird_mode.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';

class BirdPropertyField<T> extends StatelessWidget {
  const BirdPropertyField({
    super.key,
    required this.bird,
    required this.label,
    required this.name,
    this.hint,
    required this.select,
    required this.apply,
    required this.builder,
  });

  final Bird bird;
  final String label;
  final String name;
  final String? hint;

  final T? Function(Bird) select;
  final Bird Function(Bird, T?) apply;

  final Widget Function(
    BuildContext context,
    T? initialValue,
    void Function(T?) onChanged,
  ) builder;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BirdCubit>();
    final initial = cubit.initialBird;
    final value = select(bird);
    final showHasChangedIndicator = cubit.state.mode == BirdMode.edit;

    return FieldWithLabel(
      label: label,
      hasChangedIndicator:
          showHasChangedIndicator && bird.changed<T>(initial, select),
      child: builder(
        context,
        value,
        (T? newValue) => cubit.changeBird(apply(bird, newValue)),
      ),
    );
  }
}
