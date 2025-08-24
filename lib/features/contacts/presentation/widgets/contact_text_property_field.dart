import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:birdbreeder/features/contacts/presentation/widgets/contact_property_field.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class ContactTextPropertyField extends StatelessWidget {
  const ContactTextPropertyField({
    super.key,
    required this.contact,
    required this.label,
    required this.name,
    this.hint,
    required this.select,
    required this.apply,
    this.maxLines,
    this.minLines,
    this.suffixIcon,
    this.suffixText,
    this.validator,
    this.autofillHints,
    this.isRequired = false,
  });

  final Contact contact;
  final String label;
  final String name;
  final String? hint;
  final int? maxLines;
  final int? minLines;
  final Widget? suffixIcon;
  final String? suffixText;
  final String? Function(String?)? validator;
  final Iterable<String>? autofillHints;

  final String? Function(Contact) select;
  final Contact Function(Contact, String?) apply;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return ContactPropertyField<String>(
      contact: contact,
      label: isRequired ? '$label *' : label,
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
            hintText: hint ?? label,
            contentPadding: const EdgeInsets.all(8),
            suffixIcon: suffixIcon,
            suffixText: suffixText,
          ),
          validator: FormBuilderValidators.compose([
            if (isRequired) FormBuilderValidators.required(),
            if (validator != null) validator!,
          ]),
          autofillHints: autofillHints,
        );
      },
    );
  }
}
