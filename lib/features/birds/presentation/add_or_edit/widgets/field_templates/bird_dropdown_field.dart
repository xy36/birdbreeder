import 'package:birdbreeder/common_imports.dart';

class BirdDropdownField<T> extends StatelessWidget {
  const BirdDropdownField({
    super.key,
    this.hint,
    this.onChanged,
    required this.name,
    required this.items,
    this.selectedItemBuilder,
    this.initialValue,
  });

  final String name;
  final String? hint;
  final void Function(T?)? onChanged;
  final List<DropdownMenuItem<T>> items;
  final List<Widget> Function(BuildContext)? selectedItemBuilder;
  final T? initialValue;

  @override
  Widget build(BuildContext context) {
    return FormBuilderDropdown<T>(
      name: name,
      decoration: InputDecoration(
        hintText: hint ?? context.l10n.common__select,
      ),
      initialValue: initialValue,
      onChanged: onChanged,
      items: items,
      selectedItemBuilder: selectedItemBuilder,
    );
  }
}
