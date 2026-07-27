import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/account/widgets/restore_sheet.dart';
import 'package:birdbreeder/features/backup/cubit/backup_list_cubit.dart';
import 'package:birdbreeder/features/backup/cubit/backup_list_listener.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

/// First-run screen shown when no contact is flagged as the app user.
///
/// Lets the user either create a single app-user contact or restore an existing
/// backup. Once a contact with `isAppUser = true` exists, the app shell gate
/// swaps to the router automatically.
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BackupListCubit(),
      child: BackupListListener(child: const _OnboardingForm()),
    );
  }
}

class _OnboardingForm extends StatefulWidget {
  const _OnboardingForm();

  @override
  State<_OnboardingForm> createState() => _OnboardingFormState();
}

class _OnboardingFormState extends State<_OnboardingForm> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameCtrl = TextEditingController();
  final _lastNameCtrl = TextEditingController();
  final _numberCtrl = TextEditingController();
  bool _saving = false;

  @override
  void dispose() {
    _firstNameCtrl.dispose();
    _lastNameCtrl.dispose();
    _numberCtrl.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_saving) return;
    if (_formKey.currentState?.validate() != true) return;

    setState(() => _saving = true);

    final firstName = _firstNameCtrl.text.trim();
    final contact = Contact.create().copyWith(
      isAppUser: true,
      firstName: firstName.isEmpty ? null : firstName.capitalizeFirst,
      lastName: _lastNameCtrl.text.trim().capitalizeFirst,
      number: _numberCtrl.text.trim(),
    );

    final created = await s1.get<BirdBreederCubit>().addContact(contact);

    if (created == null && mounted) {
      setState(() => _saving = false);
    }
  }

  /// Opens the restore sheet (cloud + local + file). On success the app restarts
  /// and the gate re-evaluates the restored data. Enables ongoing cloud backup
  /// when the restore came from a cloud snapshot.
  Future<void> _restoreBackup() async {
    if (_saving) return;
    await RestoreSheet.show(
      context,
      context.read<BackupListCubit>(),
      autoEnableCloudOnRestore: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tr = context.tr.onboarding;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Icon(
                    AppIcons.accountCircleOutlined,
                    size: 72,
                    color: theme.colorScheme.primary,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    tr.title,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    tr.subtitle,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 32),
                  TextFormField(
                    controller: _firstNameCtrl,
                    textCapitalization: TextCapitalization.words,
                    autofillHints: const [AutofillHints.givenName],
                    decoration: InputDecoration(
                      labelText: tr.first_name,
                      prefixIcon: const Icon(AppIcons.firstname),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _lastNameCtrl,
                    textCapitalization: TextCapitalization.words,
                    autofillHints: const [AutofillHints.familyName],
                    decoration: InputDecoration(
                      labelText: tr.last_name,
                      prefixIcon: const Icon(AppIcons.lastname),
                    ),
                    validator: FormBuilderValidators.required(
                      errorText: tr.last_name_required,
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _numberCtrl,
                    decoration: InputDecoration(
                      labelText: tr.breeder_number,
                      prefixIcon: const Icon(AppIcons.breederNumber),
                    ),
                    validator: FormBuilderValidators.required(
                      errorText: tr.breeder_number_required,
                    ),
                  ),
                  const SizedBox(height: 32),
                  FilledButton.icon(
                    onPressed: _saving ? null : _save,
                    icon: _saving
                        ? const SizedBox.square(
                            dimension: 18,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Icon(AppIcons.accept),
                    label: Text(tr.save),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      const Expanded(child: Divider()),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          tr.or,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      const Expanded(child: Divider()),
                    ],
                  ),
                  const SizedBox(height: 24),
                  OutlinedButton.icon(
                    onPressed: _saving ? null : _restoreBackup,
                    icon: const Icon(AppIcons.restore),
                    label: Text(tr.restore_backup),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
