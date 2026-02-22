import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/shared/widgets/generic_picker_field.dart';

class ContactInitialsPickerField extends StatelessWidget {
  const ContactInitialsPickerField({
    super.key,
    this.initialValue,
    this.enabled = true,
    this.onChanged,
    this.validator,
  });

  final ContactInitials? initialValue;
  final bool enabled;
  final void Function(ContactInitials?)? onChanged;
  final String? Function(ContactInitials?)? validator;

  @override
  Widget build(BuildContext context) {
    return GenericPickerField<ContactInitials>(
      name: 'contact_initials_selector',
      values: ContactInitials.values,
      displayStringFor: (initial) => initial.getDisplayName(context),
      initialValue: initialValue,
      enabled: enabled,
      decoration: InputDecoration(
        hintText: context.tr.contacts.fields.initials.name,
        contentPadding: const EdgeInsets.all(8),
      ),
      onChanged: onChanged,
      validator: validator,
      itemBuilder: (context, item, index) => ListTile(
        title: Text(item.getDisplayName(context)),
      ),
      title: context.tr.contacts.fields.initials.name,
    );
  }
}
