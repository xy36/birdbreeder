import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/contact_extension.dart';
import 'package:birdbreeder/features/contacts/cubit/contact_cubit.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';

class ContactPropertyField<T> extends StatelessWidget {
  const ContactPropertyField({
    required this.contact,
    required this.label,
    required this.name,
    required this.select,
    required this.apply,
    required this.builder,
    super.key,
    this.hint,
  });

  final Contact contact;
  final String label;
  final String name;
  final String? hint;

  final T? Function(Contact) select;
  final Contact Function(Contact, T?) apply;

  final Widget Function(
    BuildContext context,
    T? initialValue,
    void Function(T?) onChanged,
  ) builder;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ContactCubit>();
    final initial = cubit.initialContact;
    final value = select(contact);

    return FieldWithLabel(
      label: label,
      hasChangedIndicator: contact.changed<T>(initial, select),
      child: builder(
        context,
        value,
        (T? newValue) => cubit.changeContact(apply(contact, newValue)),
      ),
    );
  }
}
