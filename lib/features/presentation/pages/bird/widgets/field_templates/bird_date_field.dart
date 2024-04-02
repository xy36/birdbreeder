import 'package:birdbreeder/common_imports.dart';

class BirdDateField extends StatelessWidget {
  const BirdDateField({
    super.key,
    this.label,
    required this.onChanged,
    required this.name,
    this.initialValue,
  });

  final String name;
  final String? label;
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
        labelText: label,
      ),
    );
  }
}
