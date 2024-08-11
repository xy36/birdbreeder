import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/widgets/icons.dart';
import 'package:birdbreeder/shared/widgets/text_form_field_with_label.dart';

class EmailForm extends StatelessWidget {
  const EmailForm({super.key, required this.onChanged});

  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormFieldWithLabel(
      label: context.l10n.common__email,
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return context.l10n.login__email_validation_error;
          }
          return null;
        },
        onChanged: onChanged,
        decoration: InputDecoration(
          suffixIcon: emailIcon,
          hintText: context.l10n.login__email_hint,
        ),
      ),
    );
  }
}
