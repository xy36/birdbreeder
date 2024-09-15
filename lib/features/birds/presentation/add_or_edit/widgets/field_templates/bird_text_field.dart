import 'package:birdbreeder/common_imports.dart';

class BirdTextField extends StatelessWidget {
  const BirdTextField({
    super.key,
    this.hint,
    this.onChanged,
    required this.name,
    this.initialValue,
  });

  final String name;
  final String? hint;
  final void Function(String?)? onChanged;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      onChanged: onChanged,
      initialValue: initialValue,
      decoration: InputDecoration(
        hintText: hint ?? context.l10n.common__hint_text,
        contentPadding: const EdgeInsets.all(8),
      ),
    );
  }
}
