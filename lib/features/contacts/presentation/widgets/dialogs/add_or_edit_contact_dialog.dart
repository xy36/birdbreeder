import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/generic_join.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:birdbreeder/features/contacts/presentation/cubit/contacts_cubit.dart';
import 'package:birdbreeder/features/contacts/presentation/widgets/buttons/delete_contact_button.dart';
import 'package:birdbreeder/services/screen_size.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';
import 'package:birdbreeder/shared/widgets/icons.dart';
import 'package:birdbreeder/shared/widgets/navigate_back_button.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class AddOrEditContactDialog extends StatefulWidget {
  const AddOrEditContactDialog({
    super.key,
    this.initialContact,
    required this.contactsCubit,
  });

  final ContactsCubit contactsCubit;
  final Contact? initialContact;

  @override
  State<AddOrEditContactDialog> createState() => _AddOrEditContactDialogState();
}

class _AddOrEditContactDialogState extends State<AddOrEditContactDialog> {
  @override
  void initState() {
    _contact = widget.initialContact;
    super.initState();
  }

  Contact? _contact;

  final formKey = GlobalKey<FormState>();

  bool get isDirty => widget.initialContact != _contact;

  bool get isEdit => widget.initialContact != null;

  bool get isValid =>
      formKey.currentState?.validate() == true && _contact != null;

  Widget get icon => isEdit ? saveIcon : acceptIcon;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.contactsCubit,
      child: Scaffold(
        appBar: AppBar(
          title: Text(context.l10n.contacts__title),
          leading: NavigateBackButton(discardDialogEnabled: isDirty),
          actions: [
            IconButton(
              onPressed: () {
                if (isValid) {
                  isEdit
                      ? widget.contactsCubit.edit(_contact!)
                      : widget.contactsCubit.add(_contact!);

                  Navigator.of(context).pop();
                }
              },
              icon: isDirty ? icon : const SizedBox(),
            ),
            if (widget.initialContact != null)
              DeleteContactButton(contact: _contact!),
          ],
        ),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(
                context.responsiveValueMobileAndGreater<double>(
                  mobile: 8,
                  greater: 16,
                ),
              ),
              child: Column(
                children: <Widget>[
                  FieldWithLabel(
                    label: '${context.l10n.contacts__field_first_name} *',
                    child: TextFormField(
                      initialValue: _contact?.firstName,
                      decoration: InputDecoration(
                        hintText: context.l10n.contacts__field_first_name,
                      ),
                      onChanged: (value) {
                        setState(() {
                          _contact = (_contact ?? Contact.create())
                              .copyWith(firstName: value);
                        });
                      },
                      validator: (value) {
                        if (value.isNullOrEmpty) {
                          return context.l10n.common__required;
                        }
                        return null;
                      },
                    ),
                  ),
                  FieldWithLabel(
                    label: '${context.l10n.contacts__field_first_name} *',
                    child: TextFormField(
                      initialValue: _contact?.name,
                      decoration: InputDecoration(
                        hintText: context.l10n.contacts__field_first_name,
                      ),
                      onChanged: (value) {
                        setState(() {
                          _contact = (_contact ?? Contact.create())
                              .copyWith(name: value);
                        });
                      },
                      validator: (value) {
                        if (value.isNullOrEmpty) {
                          return context.l10n.common__required;
                        }
                        return null;
                      },
                    ),
                  ),
                  FieldWithLabel(
                    label: context.l10n.contacts__field_email,
                    child: TextFormField(
                      initialValue: _contact?.email,
                      decoration: InputDecoration(
                        hintText: context.l10n.contacts__field_email,
                      ),
                      validator: FormBuilderValidators.email(
                        errorText:
                            context.l10n.contacts__field_email_error_text,
                      ),
                      onChanged: (value) {
                        setState(() {
                          _contact = (_contact ?? Contact.create())
                              .copyWith(email: value);
                        });
                      },
                    ),
                  ),
                  FieldWithLabel(
                    label: context.l10n.contacts__field_number,
                    child: TextFormField(
                      initialValue: _contact?.number,
                      decoration: InputDecoration(
                        hintText: context.l10n.contacts__field_number,
                      ),
                      onChanged: (value) {
                        setState(() {
                          _contact = (_contact ?? Contact.create())
                              .copyWith(number: value);
                        });
                      },
                    ),
                  ),
                  FieldWithLabel(
                    label: context.l10n.contacts__field_address,
                    child: TextFormField(
                      initialValue: _contact?.address,
                      decoration: InputDecoration(
                        hintText: context.l10n.contacts__field_address,
                      ),
                      onChanged: (value) {
                        setState(() {
                          _contact = (_contact ?? Contact.create())
                              .copyWith(address: value);
                        });
                      },
                    ),
                  ),
                  FieldWithLabel(
                    label: context.l10n.contacts__field_city,
                    child: TextFormField(
                      initialValue: _contact?.city,
                      decoration: InputDecoration(
                        hintText: context.l10n.contacts__field_city,
                      ),
                      onChanged: (value) {
                        setState(() {
                          _contact = (_contact ?? Contact.create())
                              .copyWith(city: value);
                        });
                      },
                    ),
                  ),
                  FieldWithLabel(
                    label: context.l10n.contacts__field_country,
                    child: TextFormField(
                      initialValue: _contact?.country,
                      decoration: InputDecoration(
                        hintText: context.l10n.contacts__field_country,
                      ),
                      onChanged: (value) {
                        setState(() {
                          _contact = (_contact ?? Contact.create())
                              .copyWith(country: value);
                        });
                      },
                    ),
                  ),
                  FieldWithLabel(
                    label: context.l10n.contacts__field_postal_code,
                    child: TextFormField(
                      initialValue: _contact?.postalCode,
                      decoration: InputDecoration(
                        hintText: context.l10n.contacts__field_postal_code,
                      ),
                      onChanged: (value) {
                        setState(() {
                          _contact = (_contact ?? Contact.create())
                              .copyWith(postalCode: value);
                        });
                      },
                    ),
                  ),
                  FieldWithLabel(
                    label: context.l10n.contacts__field_website,
                    child: TextFormField(
                      initialValue: _contact?.website,
                      decoration: InputDecoration(
                        hintText: context.l10n.contacts__field_website,
                      ),
                      onChanged: (value) {
                        setState(() {
                          _contact = (_contact ?? Contact.create())
                              .copyWith(website: value);
                        });
                      },
                    ),
                  ),
                ].genericJoin(
                  const SizedBox(height: 12),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
