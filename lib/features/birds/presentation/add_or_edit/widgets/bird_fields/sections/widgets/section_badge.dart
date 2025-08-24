import 'package:birdbreeder/common_imports.dart';

class SectionBadge extends StatelessWidget {
  const SectionBadge({super.key, required this.count, required this.danger});
  final int count;
  final bool danger;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final bg = danger ? scheme.errorContainer : scheme.secondaryContainer;
    final fg = danger ? scheme.onErrorContainer : scheme.onSecondaryContainer;
    final text = count == 0 ? 'OK' : '$count';

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration:
          BoxDecoration(color: bg, borderRadius: BorderRadius.circular(999)),
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(color: fg),
      ),
    );
  }
}
