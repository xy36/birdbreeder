import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';

class EmailForm extends StatelessWidget {
  const EmailForm({super.key, required this.onChanged});

  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return FieldWithLabel(
      label: context.tr.common.email,
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return context.tr.login.field.email.validation.error;
          }
          return null;
        },
        onChanged: onChanged,
        decoration: InputDecoration(
          suffixIcon: const Icon(AppIcons.email),
          hintText: context.tr.login.field.email.hint,
        ),
      ),
    );
  }
}
