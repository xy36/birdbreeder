import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/breedings/breeding_pair_details/broods_tab/add_brood_sheet.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

class EmptyBrood extends StatelessWidget {
  const EmptyBrood({
    required this.breedingPair,
    super.key,
  });

  final BreedingPair breedingPair;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () async {
          await openSheet<Brood>(
            context,
            AddBroodSheet(breedingPair: breedingPair),
          );
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(AppIcons.egg, size: 40),
                const SizedBox(height: 12),
                Text(context.tr.brood.empty, style: context.titleMedium),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
