import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/generic_picker_field.dart';

class ContactPickerField extends StatelessWidget {
  const ContactPickerField({
    super.key,
    this.initialValue,
    this.enabled = true,
    this.onChanged,
    this.hintText,
    this.labelText,
  });

  final Contact? initialValue;
  final bool enabled;
  final void Function(Contact?)? onChanged;
  final String? labelText;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return GenericPickerField<Contact>(
      name: 'contact_selector',
      values:
          context.watch<BirdBreederCubit>().state.birdBreederResources.contacts,
      displayStringFor: (contact) => contact.lastName ?? '—',
      initialValue: initialValue,
      enabled: enabled,
      onChanged: onChanged,
      labelText: labelText ?? context.tr.contacts.select,
      hintText: hintText ?? context.tr.contacts.select,
      itemBuilder: (context, item, index) => ListTile(
        title: Text(item.lastName ?? '-'),
      ),
      filterFn: (item, filter) =>
          item.lastName?.toLowerCase().contains(filter.toLowerCase()) ?? false,
      title: context.tr.contacts.select,
      onAdd: (String name) async {
        final newContact =
            await context.read<BirdBreederCubit>().addContact(Contact.create());
        return newContact;
      },
    );
  }
}
