import 'package:birdbreeder/common_imports.dart';

class BirdTextField extends StatelessWidget {
  const BirdTextField({
    super.key,
    this.label,
    this.onChanged,
    required this.name,
    this.initialValue,
  });

  final String name;
  final String? label;
  final void Function(String?)? onChanged;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      onChanged: onChanged,
      initialValue: initialValue,
      decoration: InputDecoration(
        labelText: label,
      ),
    );
  }
}
