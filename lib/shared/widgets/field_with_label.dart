import 'package:birdbreeder/common_imports.dart';

class FieldWithLabel extends StatelessWidget {
  const FieldWithLabel({
    super.key,
    required this.child,
    required this.label,
  });

  final Widget child;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(label),
        ),
        const SizedBox(height: 8),
        child,
      ],
    );
  }
}
