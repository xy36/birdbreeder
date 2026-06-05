import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/theme/app_colors.dart';

class FieldLabel extends StatelessWidget {
  const FieldLabel({required this.label, super.key, this.required = false});

  final String label;
  final bool required;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          Text(
            label.toUpperCase(),
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
              color: cs.onSurfaceVariant,
            ),
          ),
          if (required)
            Text(
              ' *',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: context.appColors.expense,
              ),
            ),
        ],
      ),
    );
  }
}
