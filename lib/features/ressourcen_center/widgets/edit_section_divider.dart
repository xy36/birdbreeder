import 'package:birdbreeder/common_imports.dart';

class EditSectionDivider extends StatelessWidget {
  const EditSectionDivider({
    required this.icon,
    required this.label,
    super.key,
    this.first = false,
  });

  final IconData icon;
  final String label;
  final bool first;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Padding(
      padding: EdgeInsets.fromLTRB(4, first ? 8 : 18, 4, 10),
      child: Row(
        children: [
          Icon(icon, size: 12, color: cs.onSurfaceVariant),
          const SizedBox(width: 6),
          Text(
            label.toUpperCase(),
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
              color: cs.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
