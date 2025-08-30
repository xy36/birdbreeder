import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';

class SexBadge extends StatelessWidget {
  const SexBadge({super.key, required this.sex});

  final Sex sex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.65),
      ),
      child: sex.getIcon(context, size: 16),
    );
  }
}
