import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/models/bird_filter.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

enum ParentType { father, mother }

class ParentPickerField extends StatelessWidget {
  const ParentPickerField.father({
    super.key,
    this.initialValue,
    this.enabled = true,
    this.onChanged,
    this.validator,
  }) : parentType = ParentType.father;

  const ParentPickerField.mother({
    super.key,
    this.initialValue,
    this.enabled = true,
    this.onChanged,
    this.validator,
  }) : parentType = ParentType.mother;

  final ParentType parentType;
  final Bird? initialValue;
  final bool enabled;
  final void Function(Bird?)? onChanged;
  final String? Function(Bird?)? validator;

  String _label(BuildContext c) => switch (parentType) {
        ParentType.father => c.tr.common.father,
        ParentType.mother => c.tr.common.mother,
      };

  IconData get _icon =>
      parentType == ParentType.father ? Icons.male : Icons.female;

  String get name => 'parent_${parentType.name}';

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<Bird?>(
      name: name,
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
                    birdFilter: BirdFilter(
                      sexes: [
                        if (parentType == ParentType.father)
                          Sex.male
                        else
                          Sex.female,
                        Sex.unknown,
                      ],
                    ),
                  );
                  if (picked != null) {
                    field.didChange(picked);
                    onChanged?.call(picked);
                  }
                },
          child: InputDecorator(
            isEmpty: !hasValue,
            decoration: InputDecoration(
              labelText: _label(context),
              prefixIcon: Icon(_icon),
              errorText: field.errorText,
              enabled: enabled,
              suffixIcon: hasValue && enabled
                  ? IconButton(
                      tooltip: context.tr.common.reset,
                      icon: const Icon(Icons.clear),
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
