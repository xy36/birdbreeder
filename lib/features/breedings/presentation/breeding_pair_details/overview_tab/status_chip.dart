import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';

class StatusChip extends StatelessWidget {
  const StatusChip({super.key, required this.status});
  final BreedingPairStatus status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: status.getBackgroundColor(context),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        status.getDisplayName(context),
        style: TextStyle(
          color: status.getForegroundColor(context),
          fontWeight: FontWeight.w700,
          fontSize: 12,
        ),
      ),
    );
  }
}
