import 'package:birdbreeder/common_imports.dart';

class FieldWithLabel extends StatelessWidget {
  const FieldWithLabel({
    super.key,
    required this.child,
    required this.label,
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
                Icons.circle,
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
