import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/widgets/icons.dart';

class PasswordForm extends StatefulWidget {
  const PasswordForm({super.key, required this.onChanged});

  final void Function(String) onChanged;

  @override
  State<PasswordForm> createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(context.l10n.common__password),
        ),
        const SizedBox(height: 8),
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return context.l10n.login__password_validation_error;
            }
            return null;
          },
          obscureText: _obscurePassword,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: _obscurePassword ? visibilityIcon : visibilityOffIcon,
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
            ),
            hintText: context.l10n.login__password_hint,
          ),
        ),
      ],
    );
  }
}
