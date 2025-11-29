import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/widgets/bird_property_field.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

class BirdSelectPropertyField extends StatelessWidget {
  const BirdSelectPropertyField({
    required this.bird,
    required this.label,
    required this.name,
    required this.select,
    required this.apply,
    required this.title,
    super.key,
    this.hint,
    this.selectedItem,
    this.onClear,
    this.prefixIcon,
  });

  final Bird bird;
  final String label;
  final String title;
  final String name;
  final String? hint;
  final Icon? prefixIcon;

  final Bird? Function(Bird) select;
  final Bird Function(Bird, Bird?) apply;
  final Bird? selectedItem;
  final void Function()? onClear;

  @override
  Widget build(BuildContext context) {
    return BirdPropertyField<Bird>(
      bird: bird,
      label: label,
      name: name,
      hint: hint,
      select: select,
      apply: apply,
      builder: (ctx, initialValue, onChanged) {
        return FormBuilderField<Bird?>(
          name: name,
          initialValue: initialValue,
          builder: (field) {
            final bird = field.value;
            final hasValue = bird != null;
            final display = hasValue ? (bird.ringNumber ?? '—') : '';

            return InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () async {
                FocusManager.instance.primaryFocus?.unfocus();
                final picked = await onPickBird(
                  context,
                );
                if (picked != null) {
                  field.didChange(picked);
                  onChanged.call(picked);
                }
              },
              child: InputDecorator(
                isEmpty: !hasValue,
                decoration: InputDecoration(
                  hintText: label,
                  prefixIcon: prefixIcon,
                  errorText: field.errorText,
                  suffixIcon: hasValue
                      ? IconButton(
                          tooltip: context.tr.common.reset,
                          icon: const Icon(AppIcons.clear),
                          onPressed: () {
                            field.didChange(null);
                            onChanged.call(null);
                          },
                        )
                      : null,
                ),
                child: Text(
                  display,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
