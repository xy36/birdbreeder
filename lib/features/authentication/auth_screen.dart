import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/authentication/cubit/auth_page_cubit.dart';
import 'package:birdbreeder/features/authentication/cubit/auth_page_listener.dart';
import 'package:birdbreeder/features/authentication/cubit/auth_page_state.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:flutter/services.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthPageCubit(),
      child: const _AuthScreenBody(),
    );
  }
}

class _AuthScreenBody extends StatefulWidget {
  const _AuthScreenBody();

  @override
  State<_AuthScreenBody> createState() => _AuthScreenBodyState();
}

class _AuthScreenBodyState extends State<_AuthScreenBody>
    with SingleTickerProviderStateMixin {
  final _loginEmailCtrl = TextEditingController();
  final _loginPasswordCtrl = TextEditingController();

  final _signUpEmailCtrl = TextEditingController();
  final _signUpPasswordCtrl = TextEditingController();
  final _signUpPassword2Ctrl = TextEditingController();

  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _loginEmailCtrl.dispose();
    _loginPasswordCtrl.dispose();
    _signUpEmailCtrl.dispose();
    _signUpPasswordCtrl.dispose();
    _signUpPassword2Ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        AuthPageListener(),
      ],
      child: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: Text(
                context.tr.app.title,
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarBrightness: Theme.of(context).brightness,
              ),
            ),
            body: SafeArea(
              child: Column(
                children: [
                  24.heightBox,
                  TabBar(
                    controller: _tabController,
                    tabs: [
                      Tab(text: context.tr.auth.sign_in),
                      Tab(text: context.tr.auth.create_account),
                    ],
                  ),
                  12.heightBox,
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      physics: const BouncingScrollPhysics(),
                      children: const [
                        _LoginTab(),
                        _SignUpTab(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Loading overlay
          Positioned.fill(
            child: BlocBuilder<AuthPageCubit, AuthPageState>(
              builder: (context, state) {
                if (!state.isLoading) return const SizedBox.shrink();
                return IgnorePointer(
                  ignoring: !state.isLoading,
                  child: AnimatedOpacity(
                    opacity: state.isLoading ? 1 : 0,
                    duration: const Duration(milliseconds: 200),
                    child: ColoredBox(
                      color: Colors.black.withValues(alpha: 0.1),
                      child: const Center(child: CircularProgressIndicator()),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// ────────────────────────────────────────────────────────────────────────────────
// Login Tab
// ────────────────────────────────────────────────────────────────────────────────
class _LoginTab extends StatefulWidget {
  const _LoginTab();

  @override
  State<_LoginTab> createState() => _LoginTabState();
}

class _LoginTabState extends State<_LoginTab> {
  final _formKey = GlobalKey<FormState>();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  bool _obscure = true;

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const spacing = 16.0;
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              context.tr.auth.sign_in_text,
              style: context.textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            TextFormField(
              controller: _emailCtrl,
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [
                AutofillHints.username,
                AutofillHints.email,
              ],
              decoration: InputDecoration(
                labelText: context.tr.common.email,
                prefixIcon: const Icon(AppIcons.email),
              ),
              validator: (value) => _validateEmail(context, value),
            ),
            const SizedBox(height: spacing),
            TextFormField(
              controller: _passwordCtrl,
              obscureText: _obscure,
              decoration: InputDecoration(
                labelText: context.tr.common.password,
                prefixIcon: const Icon(AppIcons.password),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscure ? AppIcons.visibilityOn : AppIcons.visibilityOff,
                  ),
                  onPressed: () => setState(() => _obscure = !_obscure),
                ),
              ),
              validator: (value) => _validatePassword(context, value),
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              icon: const Icon(AppIcons.signIn),
              label: Text(context.tr.auth.sign_in),
              onPressed: () => _submit(context),
            ),
          ],
        ),
      ),
    );
  }

  void _submit(BuildContext context) {
    if (!_formKey.currentState!.validate()) return;
    final email = _emailCtrl.text.trim();
    final pw = _passwordCtrl.text;
    context.read<AuthPageCubit>().signIn(email, pw);
  }
}

// ────────────────────────────────────────────────────────────────────────────────
// SignUp Tab
// ────────────────────────────────────────────────────────────────────────────────
class _SignUpTab extends StatefulWidget {
  const _SignUpTab();

  @override
  State<_SignUpTab> createState() => _SignUpTabState();
}

class _SignUpTabState extends State<_SignUpTab> {
  final _formKey = GlobalKey<FormState>();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  final _password2Ctrl = TextEditingController();
  final _firstNameCtrl = TextEditingController();
  final _lastNameCtrl = TextEditingController();
  bool _obscure1 = true;
  bool _obscure2 = true;

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    _password2Ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const spacing = 16.0;
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 12),
            Text(
              context.tr.auth.sign_up_text,
              style: context.textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            TextFormField(
              controller: _emailCtrl,
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [
                AutofillHints.username,
                AutofillHints.email,
              ],
              decoration: InputDecoration(
                labelText: context.tr.common.email,
                prefixIcon: const Icon(AppIcons.email),
              ),
              validator: (value) => _validateEmail(context, value),
            ),
            const SizedBox(height: spacing),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _firstNameCtrl,
                    decoration: InputDecoration(
                      labelText: context.tr.auth.first_name,
                      errorMaxLines: 3,
                      prefixIcon: const Icon(AppIcons.firstName),
                    ),
                    validator: (value) => _validateFirstName(context, value),
                  ),
                ),
                const SizedBox(width: spacing),
                Expanded(
                  child: TextFormField(
                    controller: _lastNameCtrl,
                    decoration: InputDecoration(
                      labelText: context.tr.auth.last_name,
                      errorMaxLines: 3,
                      prefixIcon: const Icon(AppIcons.lastName),
                    ),
                    validator: (value) => _validateLastName(context, value),
                  ),
                ),
              ],
            ),
            const SizedBox(height: spacing),
            TextFormField(
              controller: _passwordCtrl,
              obscureText: _obscure1,
              decoration: InputDecoration(
                labelText: context.tr.common.password,
                prefixIcon: const Icon(AppIcons.password),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscure1 ? AppIcons.visibilityOn : AppIcons.visibilityOff,
                  ),
                  onPressed: () => setState(() => _obscure1 = !_obscure1),
                ),
              ),
              validator: (value) => _validatePassword(context, value),
            ),
            const SizedBox(height: spacing),
            TextFormField(
              controller: _password2Ctrl,
              obscureText: _obscure2,
              decoration: InputDecoration(
                labelText: context.tr.auth.confirm_password,
                prefixIcon: const Icon(AppIcons.password),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscure2 ? AppIcons.visibilityOn : AppIcons.visibilityOff,
                  ),
                  onPressed: () => setState(() => _obscure2 = !_obscure2),
                ),
              ),
              validator: (v) {
                final p1 = _passwordCtrl.text;
                final p2 = v ?? '';
                if (p2.isEmpty) return context.tr.auth.confirm_password;
                if (p1 != p2) return context.tr.auth.passwords_do_not_match;
                return null;
              },
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              icon: const Icon(AppIcons.signUp),
              label: Text(context.tr.auth.create_account),
              onPressed: () => _submit(context),
            ),
          ],
        ),
      ),
    );
  }

  void _submit(BuildContext context) {
    if (!_formKey.currentState!.validate()) return;
    final email = _emailCtrl.text.trim();
    final pw = _passwordCtrl.text;
    final firstName = _firstNameCtrl.text.trim();
    final lastName = _lastNameCtrl.text.trim();

    context.read<AuthPageCubit>().signUp(
          email,
          pw,
          firstName,
          lastName,
        );
  }
}

// ────────────────────────────────────────────────────────────────────────────────
// Validators
// ────────────────────────────────────────────────────────────────────────────────
String? _validateEmail(BuildContext context, String? v) {
  final value = (v ?? '').trim();
  if (value.isEmpty) return context.tr.auth.validators.email;
  final emailRe = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
  if (!emailRe.hasMatch(value)) return context.tr.auth.validators.email_format;
  return null;
}

String? _validatePassword(BuildContext context, String? v) {
  final value = v ?? '';
  if (value.isEmpty) return context.tr.auth.validators.password;
  if (value.length < 8) return context.tr.auth.validators.password_length;
  return null;
}

String? _validateFirstName(BuildContext context, String? v) {
  final value = (v ?? '').trim();

  if (value.isEmpty) return context.tr.auth.validators.first_name;
  if (value.length < 3) return context.tr.auth.validators.first_name_length;
  return null;
}

String? _validateLastName(BuildContext context, String? v) {
  final value = (v ?? '').trim();
  if (value.isEmpty) return context.tr.auth.validators.last_name;
  return null;
}
