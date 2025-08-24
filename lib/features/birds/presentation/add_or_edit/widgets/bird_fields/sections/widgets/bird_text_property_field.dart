import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/bird_property_field.dart';

class BirdTextPropertyField extends StatelessWidget {
  const BirdTextPropertyField({
    super.key,
    required this.bird,
    required this.label,
    required this.name,
    this.hint,
    required this.select,
    required this.apply,
    this.maxLines,
    this.minLines,
    this.suffixIcon,
    this.suffixText,
  });

  final Bird bird;
  final String label;
  final String name;
  final String? hint;
  final int? maxLines;
  final int? minLines;
  final Widget? suffixIcon;
  final String? suffixText;

  final String? Function(Bird) select;
  final Bird Function(Bird, String?) apply;

  @override
  Widget build(BuildContext context) {
    return BirdPropertyField<String>(
      bird: bird,
      label: label,
      name: name,
      hint: hint,
      select: select,
      apply: apply,
      builder: (ctx, initialValue, onChanged) {
        return FormBuilderTextField(
          name: name,
          onChanged: onChanged,
          initialValue: initialValue,
          minLines: minLines,
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hint ?? context.l10n.common__hint_text,
            contentPadding: const EdgeInsets.all(8),
            suffixIcon: suffixIcon,
            suffixText: suffixText,
          ),
        );
      },
    );
  }
}
