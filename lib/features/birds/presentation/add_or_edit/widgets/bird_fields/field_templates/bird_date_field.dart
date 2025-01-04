import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/widgets/icons.dart';

class BirdDateField extends StatelessWidget {
  const BirdDateField({
    super.key,
    this.hint,
    required this.onChanged,
    required this.name,
    this.initialValue,
  });

  final String name;
  final String? hint;
  final void Function(DateTime) onChanged;
  final DateTime? initialValue;

  @override
  Widget build(BuildContext context) {
    return FormBuilderDateTimePicker(
      name: name,
      initialValue: initialValue,
      currentDate: DateTime.now(),
      inputType: InputType.date,
      format: context.getDateFormat(),
      onChanged: (date) => date != null ? onChanged(date) : null,
      decoration: InputDecoration(
        hintText: hint ?? context.l10n.common__hint_select,
        contentPadding: const EdgeInsets.all(8),
        suffix: dateIcon,
      ),
    );
  }
}
