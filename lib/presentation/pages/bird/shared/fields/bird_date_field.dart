import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/extensions/build_context_extensions.dart';

class BirdDateField extends StatelessWidget {
  const BirdDateField({
    super.key,
    this.label,
    this.onChanged,
    required this.name,
    this.initialValue,
  });

  final String name;
  final String? label;
  final void Function(DateTime?)? onChanged;
  final DateTime? initialValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: FormBuilderDateTimePicker(
        name: name,
        initialDate: initialValue,
        currentDate: DateTime.now(),
        inputType: InputType.date,
        format: context.getDateFormat(),
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: label,
        ),
      ),
    );
  }
}
