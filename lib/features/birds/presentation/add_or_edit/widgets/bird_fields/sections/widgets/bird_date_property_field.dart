import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/bird_property_field.dart';
import 'package:birdbreeder/shared/widgets/icons.dart';

class BirdDatePropertyField extends StatelessWidget {
  const BirdDatePropertyField({
    super.key,
    required this.bird,
    required this.label,
    required this.name,
    this.hint,
    required this.select,
    required this.apply,
  });

  final Bird bird;
  final String label;
  final String name;
  final String? hint;

  final DateTime? Function(Bird) select;
  final Bird Function(Bird, DateTime?) apply;

  @override
  Widget build(BuildContext context) {
    return BirdPropertyField<DateTime>(
      bird: bird,
      label: label,
      name: name,
      hint: hint,
      select: select,
      apply: apply,
      builder: (ctx, initialValue, onChanged) {
        return FormBuilderField<DateTime>(
          name: name,
          initialValue: initialValue,
          builder: (field) {
            return InputDecorator(
              decoration: InputDecoration(
                hintText: hint ?? context.l10n.common__hint_select,
                contentPadding: const EdgeInsets.all(8),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    dateIcon,
                    if (field.value != null)
                      IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          field.didChange(null);
                          onChanged(null);
                        },
                      ),
                  ],
                ),
              ),
              child: InkWell(
                onTap: () async {
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: field.value ?? DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                  );
                  if (picked != null) {
                    field.didChange(picked);
                    onChanged(picked);
                  }
                },
                child: Text(
                  field.value != null
                      ? context.getDateFormat().format(field.value!)
                      : '',
                ),
              ),
            );
          },
        );
      },
    );
  }
}
