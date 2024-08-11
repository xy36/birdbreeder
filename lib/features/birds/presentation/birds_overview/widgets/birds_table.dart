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
          color: Colors.white,
          child: ListTile(
            title: Text(
              bird.ringnumber ?? '-',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: bird.sex.getIcon(context),
            subtitle: Wrap(
              runSpacing: 10,
              spacing: 10,
              children: [
                // if (bird.origin != null)
                //   Chip(
                //     label: Text(
                //       bird.origin?.name(context) ??
                //           Origin.unknown.name(context),
                //     ),
                //   ),
                // if (bird.cage?.name != null)
                //   Chip(
                //     backgroundColor: Colors.amber[100],
                //     side: const BorderSide(
                //       color: Colors.transparent,
                //     ),
                //     label: Text(
                //       bird.cage?.name ?? '',
                //     ),
                //   ),
                if (bird.born != null)
                  Chip(
                    label: Text(
                      bird.born!.toIso8601String(),
                    ),
                  ),
                if (bird.species?.name != null)
                  Chip(
                    backgroundColor: Colors.blueAccent[100],
                    side: const BorderSide(
                      color: Colors.transparent,
                    ),
                    label: Text(
                      bird.species!.name!,
                    ),
                  ),
                if (bird.color?.name != null)
                  Chip(
                    backgroundColor: Colors.greenAccent[100],
                    side: const BorderSide(
                      color: Colors.transparent,
                    ),
                    label: Text(
                      bird.color!.name!,
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
              //await context.router.push(BirdRoute(bird: bird));

              // if (!mounted) return;

              // context
              //     .read<BirdsBloc>()
              //     .add(const BirdsEvent.load());

              // if (ScreenSize.isMobileOrTabletPortrait(
              //   context,
              // )) {
              //   //context.router.push(AddBirdRoute());

              //   //context.router
              //   //    .pushWidget(EditBirdPage(bird: bird));

              //   return;
              // }
            },
          ),
        );
      },
    );
  }
}
