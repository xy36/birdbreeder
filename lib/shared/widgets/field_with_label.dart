import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/icons.dart';

class FieldWithLabel extends StatelessWidget {
  const FieldWithLabel({
    required this.child,
    required this.label,
    super.key,
    this.hasChangedIndicator = false,
  });

  final Widget child;
  final String label;

  final bool hasChangedIndicator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 8,
          children: [
            Text(label),
            if (hasChangedIndicator)
              Icon(
                AppIcons.circle,
                size: 12,
                color: Theme.of(context).colorScheme.primary,
              ),
          ],
        ),
        const SizedBox(height: 8),
        child,
      ],
    );
  }
}
