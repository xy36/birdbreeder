import 'package:birdbreeder/common_imports.dart';

/// Fixed height of a contacts section header.
///
/// Shared by the inline headers and the pinned sticky header so their positions
/// align during the push transition.
const double kContactSectionHeaderHeight = 40;

/// Compact alphabetical section header for the contacts overview.
///
/// Shows the group letter in a rounded badge with the number of contacts in
/// that group. Pass a [backgroundColor] to make it opaque (used by the pinned
/// sticky header so scrolling content hides cleanly behind it).
class ContactSectionHeader extends StatelessWidget {
  const ContactSectionHeader({
    required this.letter,
    required this.count,
    this.backgroundColor,
    super.key,
  });

  final String letter;
  final int count;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      height: kContactSectionHeaderHeight,
      color: backgroundColor,
      padding: const EdgeInsets.fromLTRB(4, 8, 4, 6),
      child: Row(
        children: [
          Container(
            width: 26,
            height: 26,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: cs.primaryContainer,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              letter,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w800,
                color: cs.onPrimaryContainer,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Divider(
              color: cs.outlineVariant.withValues(alpha: 0.7),
              height: 1,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            '$count',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 11,
              fontWeight: FontWeight.w700,
              color: cs.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
