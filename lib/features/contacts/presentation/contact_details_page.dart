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
import 'package:birdbreeder/shared/widgets/buttons/app_action_button.dart';
import 'package:birdbreeder/shared/widgets/buttons/generic_button.dart';
import 'package:birdbreeder/shared/widgets/navigate_back_button.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

final formKey = GlobalKey<FormState>();

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
                    ContactMode.edit => context.l10n.contacts__edit,
                    ContactMode.create => context.l10n.contacts__create,
                  },
                ),
                centerTitle: false,
                leading: NavigateBackButton(discardDialogEnabled: isDirty),
                actions: [
                  if (isDirty)
                    IconButton(
                      icon: Icon(
                        switch (state.mode) {
                          ContactMode.edit => Icons.save,
                          ContactMode.create => Icons.check,
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
                        const GenericButton.icon(
                          actionButtonType: ActionButtonType.contactDelete,
                        ),
                      ],
                    ContactMode.create => [],
                  },
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
                        // PERSONAL
                        SectionCard(
                          icon: Icons.person_outline,
                          title: context.l10n.contacts__section_personal,
                          collapsible: true,
                          errorCount: 0, // or compute dynamically per section
                          children: [
                            SectionGrid(
                              children: [
                                ContactTextPropertyField(
                                  contact: state.contact,
                                  apply: (Contact c, String? v) =>
                                      c.copyWith(firstName: v?.capitalizeFirst),
                                  label:
                                      context.l10n.contacts__field_first_name,
                                  name: 'first_name_field',
                                  select: (Contact c) => c.firstName,
                                  suffixIcon: const Icon(Icons.person),
                                  autofillHints: const [
                                    AutofillHints.givenName,
                                  ],
                                  isRequired: true,
                                ),
                                ContactTextPropertyField(
                                  label: context.l10n.contacts__field_last_name,
                                  apply: (Contact c, String? v) =>
                                      c.copyWith(name: v?.capitalizeFirst),
                                  contact: state.contact,
                                  name: 'last_name_field',
                                  select: (Contact c) => c.name,
                                  isRequired: true,
                                  suffixIcon: const Icon(Icons.badge),
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
                          icon: Icons.pets,
                          title: context.l10n.contacts__section_breeder,
                          collapsible: true,
                          children: [
                            SectionGrid(
                              children: [
                                ContactTextPropertyField(
                                  label: context.l10n.contacts__field_number,
                                  apply: (Contact c, String? v) =>
                                      c.copyWith(number: v),
                                  contact: state.contact,
                                  name: 'breeder_number_field',
                                  select: (Contact c) => c.number,
                                  isRequired: true,
                                  suffixIcon: const Icon(Icons.numbers),
                                ),
                              ],
                            ),
                          ],
                        ),

                        // CONTACT
                        SectionCard(
                          icon: Icons.alternate_email,
                          title: context.l10n.contacts__section_contact,
                          collapsible: true,
                          children: [
                            SectionGrid(
                              children: [
                                ContactTextPropertyField(
                                  label: context.l10n.contacts__field_phone,
                                  contact: state.contact,
                                  apply: (Contact c, String? v) =>
                                      c.copyWith(phone: v),
                                  name: 'phone_field',
                                  select: (Contact c) => c.phone,
                                  hint: context.l10n.contacts__field_phone,
                                  suffixIcon: const Icon(Icons.phone),
                                ),
                                ContactTextPropertyField(
                                  contact: state.contact,
                                  label: context.l10n.contacts__field_email,
                                  apply: (Contact c, String? v) =>
                                      c.copyWith(email: v),
                                  name: 'email_field',
                                  select: (Contact c) => c.email,
                                  suffixIcon: const Icon(Icons.email),
                                  validator: FormBuilderValidators.email(),
                                ),
                                ContactTextPropertyField(
                                  contact: state.contact,
                                  label: context.l10n.contacts__field_website,
                                  apply: (Contact c, String? v) =>
                                      c.copyWith(website: v),
                                  name: 'website_field',
                                  select: (Contact c) => c.website,
                                  hint: context.l10n.contacts__field_website,
                                  suffixIcon: const Icon(Icons.language),
                                ),
                              ],
                            ),
                          ],
                        ),

                        // ADDRESS
                        SectionCard(
                          icon: Icons.location_on_outlined,
                          title: context.l10n.contacts__section_address,
                          collapsible: true,
                          children: [
                            Column(
                              children: [
                                ContactTextPropertyField(
                                  label: context.l10n.contacts__field_address,
                                  contact: state.contact,
                                  apply: (Contact c, String? v) =>
                                      c.copyWith(address: v?.capitalizeFirst),
                                  name: 'address_field',
                                  select: (Contact c) => c.address,
                                ),
                                SectionGrid(
                                  children: [
                                    // city + postal
                                    ContactTextPropertyField(
                                      label: context
                                          .l10n.contacts__field_postal_code,
                                      contact: state.contact,
                                      apply: (Contact c, String? v) =>
                                          c.copyWith(postalCode: v),
                                      name: 'postal_code_field',
                                      select: (Contact c) => c.postalCode,
                                    ),

                                    ContactTextPropertyField(
                                      label: context.l10n.contacts__field_city,
                                      contact: state.contact,
                                      apply: (Contact c, String? v) =>
                                          c.copyWith(city: v?.capitalizeFirst),
                                      name: 'city_field',
                                      select: (Contact c) => c.city,
                                    ),
                                  ],
                                ),
                                ContactTextPropertyField(
                                  label: context.l10n.contacts__field_country,
                                  contact: state.contact,
                                  apply: (Contact c, String? v) =>
                                      c.copyWith(country: v?.capitalizeFirst),
                                  name: 'country_field',
                                  select: (Contact c) => c.country,
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
            );
          },
        ),
      ),
    );
  }
}
