import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/widgets/icons.dart';

class EmailForm extends StatelessWidget {
  const EmailForm({super.key, required this.onChanged});

  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(context.l10n.common__email),
        ),
        const SizedBox(height: 8),
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return context.l10n.login__email_validation_error;
            }
            return null;
          },
          onChanged: onChanged,
          decoration: InputDecoration(
            filled: true,
            suffixIcon: emailIcon,
            hintText: context.l10n.login__email_hint,
          ),
        ),
      ],
    );
  }
}
