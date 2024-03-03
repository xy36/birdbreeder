import 'package:birdbreeder/common_imports.dart';

class BirdDropdownField<T> extends StatelessWidget {
  const BirdDropdownField({
    super.key,
    this.label,
    this.onChanged,
    required this.name,
    required this.items,
    this.initialValue,
  });

  final String name;
  final String? label;
  final void Function(T?)? onChanged;
  final List<DropdownMenuItem<T>> items;
  final T? initialValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: FormBuilderDropdown<T>(
        name: name,
        decoration: InputDecoration(
          labelText: label,
        ),
        initialValue: initialValue,
        onChanged: onChanged,
        items: items,
      ),
    );
  }
}
