import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/section_card.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:birdbreeder/features/contacts/presentation/cubit/contact_cubit.dart';
import 'package:birdbreeder/features/contacts/presentation/cubit/contact_listener.dart';
import 'package:birdbreeder/features/contacts/presentation/widgets/contact_text_property_field.dart';
import 'package:birdbreeder/features/contacts/presentation/widgets/section_grid.dart';
import 'package:birdbreeder/services/screen_size.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/bird_breeder_wrapper.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';
import 'package:birdbreeder/shared/widgets/navigate_back_button.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

final formKey = GlobalKey<FormState>();

enum ContactActions {
  delete;

  PopupMenuEntry<ContactActions> getItem(BuildContext context) {
    return switch (this) {
      delete => PopupMenuItem(
          value: ContactActions.delete,
          child: Text(
            context.tr.pop_up_menu.delete,
            style: const TextStyle(color: Colors.red),
          ),
        )
    };
  }
}

@RoutePage()
class ContactDetailsPage extends StatelessWidget {
  const ContactDetailsPage({
    super.key,
    this.initialContact,
  });

  final Contact? initialContact;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BirdBreederCubit>();
    return BlocProvider(
      create: (context) => ContactCubit(
        cubit,
        initialContact: initialContact,
      ),
      child: ContactListener(
        child: BlocBuilder<ContactCubit, ContactState>(
          builder: (context, state) {
            final isDirty = context.read<ContactCubit>().isDirty;
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  switch (state.mode) {
                    ContactMode.edit => context.tr.contacts.edit,
                    ContactMode.create => context.tr.contacts.create,
                  },
                ),
                centerTitle: false,
                leading: NavigateBackButton(discardDialogEnabled: isDirty),
                actions: [
                  if (isDirty)
                    IconButton(
                      icon: Icon(
                        switch (state.mode) {
                          ContactMode.edit => AppIcons.save,
                          ContactMode.create => AppIcons.accept,
                        },
                      ),
                      onPressed: () async {
                        if (formKey.currentState?.validate() == true) {
                          await context.read<ContactCubit>().save();
                        }
                      },
                    ),
                  ...switch (state.mode) {
                    ContactMode.edit => [
                        PopupMenuButton<ContactActions>(
                          icon: const Icon(AppIcons.more),
                          onSelected: (value) async => switch (value) {
                            ContactActions.delete => {
                                if (context.mounted)
                                  await DeleteDialog.show(
                                    context: context,
                                    title: context.tr.contacts.delete,
                                    onDelete: () =>
                                        context.read<ContactCubit>().delete(),
                                  ),
                              }
                          },
                          itemBuilder: (BuildContext context) =>
                              [ContactActions.delete.getItem(context)],
                        ),
                      ],
                    ContactMode.create => [],
                  },
                ],
              ),
              body: BirdBreederWrapper(
                child: Form(
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
                          // PERSONAL
                          SectionCard(
                            icon: AppIcons.contactSectionPersonal,
                            title: context.tr.contacts.sections.personal,
                            collapsible: true,
                            errorCount: 0, // or compute dynamically per section
                            children: [
                              SectionGrid(
                                children: [
                                  ContactTextPropertyField(
                                    contact: state.contact,
                                    apply: (Contact c, String? v) => c.copyWith(
                                      firstName: v?.capitalizeFirst,
                                    ),
                                    label:
                                        context.tr.contacts.fields.first_name,
                                    name: 'first_name_field',
                                    select: (Contact c) => c.firstName,
                                    suffixIcon: const Icon(AppIcons.firstname),
                                    autofillHints: const [
                                      AutofillHints.givenName,
                                    ],
                                    isRequired: true,
                                  ),
                                  ContactTextPropertyField(
                                    label: context.tr.contacts.fields.last_name,
                                    apply: (Contact c, String? v) =>
                                        c.copyWith(name: v?.capitalizeFirst),
                                    contact: state.contact,
                                    name: 'last_name_field',
                                    select: (Contact c) => c.name,
                                    isRequired: true,
                                    suffixIcon: const Icon(AppIcons.lastname),
                                    autofillHints: const [
                                      AutofillHints.familyName,
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),

                          // BREEDER INFORMATION
                          SectionCard(
                            icon: AppIcons.contactSectionBreederInformation,
                            title: context.tr.contacts.sections.breeder,
                            collapsible: true,
                            children: [
                              SectionGrid(
                                children: [
                                  ContactTextPropertyField(
                                    label: context.tr.contacts.fields.number,
                                    apply: (Contact c, String? v) =>
                                        c.copyWith(number: v),
                                    contact: state.contact,
                                    name: 'breeder_number_field',
                                    select: (Contact c) => c.number,
                                    isRequired: true,
                                    suffixIcon:
                                        const Icon(AppIcons.breederNumber),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          // CONTACT
                          SectionCard(
                            icon: AppIcons.contactSectionContactInformation,
                            title: context.tr.contacts.sections.contact,
                            collapsible: true,
                            children: [
                              SectionGrid(
                                children: [
                                  ContactTextPropertyField(
                                    label: context.tr.contacts.fields.phone,
                                    contact: state.contact,
                                    apply: (Contact c, String? v) =>
                                        c.copyWith(phone: v),
                                    name: 'phone_field',
                                    select: (Contact c) => c.phone,
                                    hint: context.tr.contacts.fields.phone,
                                    suffixIcon: const Icon(AppIcons.phone),
                                  ),
                                  ContactTextPropertyField(
                                    contact: state.contact,
                                    label: context.tr.contacts.fields.email,
                                    apply: (Contact c, String? v) =>
                                        c.copyWith(email: v),
                                    name: 'email_field',
                                    select: (Contact c) => c.email,
                                    suffixIcon: const Icon(AppIcons.email),
                                    validator: FormBuilderValidators.email(),
                                  ),
                                  ContactTextPropertyField(
                                    contact: state.contact,
                                    label: context.tr.contacts.fields.website,
                                    apply: (Contact c, String? v) =>
                                        c.copyWith(website: v),
                                    name: 'website_field',
                                    select: (Contact c) => c.website,
                                    hint: context.tr.contacts.fields.website,
                                    suffixIcon: const Icon(AppIcons.website),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          // ADDRESS
                          SectionCard(
                            icon: AppIcons.contactSectionAddress,
                            title: context.tr.contacts.sections.address,
                            collapsible: true,
                            children: [
                              Column(
                                children: [
                                  ContactTextPropertyField(
                                    label: context.tr.contacts.fields.address,
                                    contact: state.contact,
                                    apply: (Contact c, String? v) =>
                                        c.copyWith(address: v?.capitalizeFirst),
                                    name: 'address_field',
                                    select: (Contact c) => c.address,
                                    hint: context.tr.contacts.fields.address,
                                    suffixIcon: const Icon(AppIcons.address),
                                  ),
                                  SectionGrid(
                                    children: [
                                      // city + postal
                                      ContactTextPropertyField(
                                        label:
                                            context.tr.contacts.fields.postal,
                                        contact: state.contact,
                                        apply: (Contact c, String? v) =>
                                            c.copyWith(postalCode: v),
                                        name: 'postal_code_field',
                                        select: (Contact c) => c.postalCode,
                                        hint: context.tr.contacts.fields.postal,
                                        suffixIcon:
                                            const Icon(AppIcons.postalCode),
                                      ),

                                      ContactTextPropertyField(
                                        label: context.tr.contacts.fields.city,
                                        contact: state.contact,
                                        apply: (Contact c, String? v) => c
                                            .copyWith(city: v?.capitalizeFirst),
                                        name: 'city_field',
                                        select: (Contact c) => c.city,
                                        hint: context.tr.contacts.fields.city,
                                        suffixIcon: const Icon(AppIcons.city),
                                      ),
                                    ],
                                  ),
                                  ContactTextPropertyField(
                                    label: context.tr.contacts.fields.country,
                                    contact: state.contact,
                                    apply: (Contact c, String? v) =>
                                        c.copyWith(country: v?.capitalizeFirst),
                                    name: 'country_field',
                                    select: (Contact c) => c.country,
                                    hint: context.tr.contacts.fields.country,
                                    suffixIcon: const Icon(AppIcons.country),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
