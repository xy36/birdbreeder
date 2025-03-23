import 'dart:async';

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/buttons/add_new_bird_button.dart';

class BirdsTable extends StatelessWidget {
  const BirdsTable({
    super.key,
    required this.birds,
  });

  final List<Bird> birds;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: birds.length,
      itemBuilder: (context, index) {
        final bird = birds[index];
        return Card(
          color: Theme.of(context).highlightColor,
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  bird.ringnumber ?? '-',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (bird.born != null)
                  Text(
                    bird.born!.toDateFormat(context),
                  ),
              ],
            ),
            leading: bird.sex.getIcon(context),
            subtitle: Wrap(
              runSpacing: 10,
              spacing: 10,
              children: [
                if (bird.cageResolved?.name != null)
                  Chip(
                    backgroundColor:
                        Theme.of(context).primaryColor.withAlpha(80),
                    side: const BorderSide(
                      color: Colors.transparent,
                    ),
                    label: Text(
                      bird.cageResolved?.name ?? '',
                    ),
                  ),
                if (bird.speciesResolved?.name != null)
                  Chip(
                    backgroundColor:
                        Theme.of(context).primaryColor.withAlpha(60),
                    side: const BorderSide(
                      color: Colors.transparent,
                    ),
                    label: Text(
                      bird.speciesResolved!.name!,
                    ),
                  ),
                if (bird.colorResolved?.name != null)
                  Chip(
                    backgroundColor:
                        Theme.of(context).primaryColor.withAlpha(100),
                    side: const BorderSide(
                      color: Colors.transparent,
                    ),
                    label: Text(
                      bird.colorResolved!.name!,
                    ),
                  ),
                if (bird.brood != null)
                  Chip(
                    backgroundColor:
                        Theme.of(context).primaryColor.withAlpha(100),
                    side: const BorderSide(
                      color: Colors.transparent,
                    ),
                    label: Text(
                      bird.broodResolved?.notes ?? '-',
                    ),
                  ),
              ],
            ),
            onLongPress: () {
              // open menu to select birds
            },
            onTap: () async {
              unawaited(
                openBird(context, bird: bird),
              );
            },
          ),
        );
      },
    );
  }
}
