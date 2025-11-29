import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/bird/bird_filter.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

class BirdPickerField extends StatelessWidget {
  const BirdPickerField({
    required this.label,
    super.key,
    this.initialValue,
    this.enabled = true,
    this.onChanged,
    this.validator,
    this.birdFilter = const BirdFilter(),
    this.icon,
  });

  final Bird? initialValue;
  final bool enabled;
  final void Function(Bird?)? onChanged;
  final String? Function(Bird?)? validator;
  final BirdFilter birdFilter;

  final String label;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<Bird?>(
      name: 'bird_picker_field',
      initialValue: initialValue,
      enabled: enabled,
      validator: validator,
      builder: (field) {
        final bird = field.value;
        final hasValue = bird != null;
        final display = hasValue ? (bird.ringNumber ?? '—') : '';

        return InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: !enabled
              ? null
              : () async {
                  FocusManager.instance.primaryFocus?.unfocus();
                  final picked = await onPickBird(
                    context,
                    birdFilter: birdFilter,
                  );
                  if (picked != null) {
                    field.didChange(picked);
                    onChanged?.call(picked);
                  }
                },
          child: InputDecorator(
            isEmpty: !hasValue,
            decoration: InputDecoration(
              labelText: label,
              prefixIcon: icon,
              errorText: field.errorText,
              enabled: enabled,
              suffixIcon: hasValue && enabled
                  ? IconButton(
                      tooltip: context.tr.common.reset,
                      icon: const Icon(AppIcons.clear),
                      onPressed: () {
                        field.didChange(null);
                        onChanged?.call(null);
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
  }
}
