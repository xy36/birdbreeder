import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/shared/widgets/generic_picker_field.dart';

class ContactTitlePickerField extends StatelessWidget {
  const ContactTitlePickerField({
    super.key,
    this.initialValue,
    this.enabled = true,
    this.onChanged,
    this.validator,
  });

  final ContactTitle? initialValue;
  final bool enabled;
  final void Function(ContactTitle?)? onChanged;
  final String? Function(ContactTitle?)? validator;

  @override
  Widget build(BuildContext context) {
    return GenericPickerField<ContactTitle>(
      name: 'contact_title_selector',
      values: ContactTitle.values,
      displayStringFor: (initial) => initial.getDisplayName(context),
      initialValue: initialValue,
      enabled: enabled,
      decoration: InputDecoration(
        hintText: context.tr.contacts.fields.title.name,
        contentPadding: const EdgeInsets.all(8),
      ),
      onChanged: onChanged,
      validator: validator,
      itemBuilder: (context, item, index) => ListTile(
        title: Text(item.getDisplayName(context)),
      ),
      title: context.tr.contacts.fields.title.name,
    );
  }
}
