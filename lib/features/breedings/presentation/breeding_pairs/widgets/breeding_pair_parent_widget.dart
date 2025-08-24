import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/breeding/fields/parent_field.dart';

class BreedingPairParentWidget extends StatelessWidget {
  const BreedingPairParentWidget({
    super.key,
    required this.bird,
    required this.parentType,
  });

  final Bird? bird;
  final ParentType parentType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: switch (parentType) {
        ParentType.father => CrossAxisAlignment.start,
        ParentType.mother => CrossAxisAlignment.end,
      },
      children: [
        Row(
          mainAxisAlignment: switch (parentType) {
            ParentType.father => MainAxisAlignment.start,
            ParentType.mother => MainAxisAlignment.end,
          },
          spacing: 4,
          children: [
            switch (parentType) {
              ParentType.father => Sex.male.getIcon(context),
              ParentType.mother => Sex.female.getIcon(context),
            },
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.l10n.common__ringnumber,
                    style: TextStyle(
                      fontSize: 10,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    bird?.ringNumber ?? '-',
                    style: context.titleSmall,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            // if (bird?.sex == null ||
            //     bird!.sex !=
            //         switch (parentType) {
            //           ParentType.father => Sex.male,
            //           ParentType.mother => Sex.female,
            //         })
            //   Tooltip(
            //     message: 'Kein Geschlecht angegeben',
            //     child: Icon(
            //       Icons.warning,
            //       color: Theme.of(context).colorScheme.error,
            //     ),
            //   ),
          ],
        ),
      ],
    );
  }
}
