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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: FormBuilderTextField(
        name: name,
        onChanged: onChanged,
        initialValue: initialValue,
        decoration: InputDecoration(
          labelText: label,
        ),
      ),
    );
  }
}
