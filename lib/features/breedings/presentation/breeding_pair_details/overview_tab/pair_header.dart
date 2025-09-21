import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pair_details/overview_tab/status_chip.dart';
import 'package:birdbreeder/shared/icons.dart';

class PairHeader extends StatelessWidget {
  const PairHeader({super.key, required this.pair});
  final BreedingPair pair;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    final sub = <InlineSpan>[];

    if (pair.cageResolved?.name != null) {
      sub.addAll(
        [
          const WidgetSpan(child: Icon(AppIcons.cage, size: 16)),
          TextSpan(text: ' ${pair.cageResolved!.name}'),
        ],
      );
    }
    if (pair.start != null) {
      if (sub.isNotEmpty) sub.add(const TextSpan(text: '  •  '));
      final since =
          MaterialLocalizations.of(context).formatShortDate(pair.start!);
      sub.addAll([
        const WidgetSpan(child: Icon(AppIcons.date, size: 16)),
        TextSpan(text: context.tr.brood.since(Date: since)),
      ]);
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Avatars
        Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
              radius: 22,
              child: Sex.male.getIcon(context),
            ),
            Positioned(
              left: 28,
              child: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
                radius: 22,
                child: Sex.female.getIcon(context),
              ),
            ),
          ],
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${pair.fatherResolved?.ringNumber} × ${pair.motherResolved?.ringNumber}',
                style: text.titleMedium?.copyWith(fontWeight: FontWeight.w700),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 6),
              if (sub.isNotEmpty)
                Text.rich(
                  TextSpan(children: sub),
                  style: text.bodySmall?.copyWith(
                    color: text.bodySmall?.color?.withValues(alpha: 0.8),
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
            ],
          ),
        ),
        StatusChip(status: pair.status),
      ],
    );
  }
}
