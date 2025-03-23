import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/bottom_dropdown_search.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';
import 'package:collection/collection.dart';

enum ParentType { father, mother }

class ParentField extends StatelessWidget {
  const ParentField({
    super.key,
    required this.initialBird,
    required this.parentType,
  });

  final Bird initialBird;
  final ParentType parentType;

  Bird? get parentBird => switch (parentType) {
        ParentType.father => initialBird.fatherResolved,
        ParentType.mother => initialBird.motherResolved,
      };

  Future<void> _clearParent(BuildContext context) async {
    await context.read<BirdCubit>().changeBird(
          switch (parentType) {
            ParentType.father => initialBird.copyWith(father: null),
            ParentType.mother => initialBird.copyWith(mother: null),
          },
        );
  }

  bool _filterFn(Bird item, String filter) {
    return item.ringnumber?.toLowerCase().contains(filter.toLowerCase()) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    final label = switch (parentType) {
      ParentType.father => context.l10n.common__father_ringnumber,
      ParentType.mother => context.l10n.common__mother_ringnumber,
    };

    return BlocBuilder<BirdBreederCubit, BirdBreederState>(
      builder: (context, state) {
        final possibleParent = (state is BirdBreederLoaded)
            ? (state)
                .birdBreederResources
                .birds
                // filter own the bird itself
                .where((b) => b.id != initialBird.id)
                //filter out by species
                .where(
                  (b) => b.species == null || b.species == initialBird.species,
                )
                //filter out children
                .where(
                  (b) =>
                      b.id != initialBird.father && b.id != initialBird.mother,
                )
                // filter out by sex
                .where(
                  (b) =>
                      b.species == null ||
                      b.sex ==
                          switch (parentType) {
                            ParentType.father => Sex.male,
                            ParentType.mother => Sex.female,
                          },
                )
                .toList()
            : <Bird>[];

        // sort possible parents, so that the selected parent is at the first index and second priority is the ringnumber
        // ignore: cascade_invocations
        possibleParent.sort((a, b) {
          if (a.id == parentBird?.id) {
            return -1;
          } else if (b.id == parentBird?.id) {
            return 1;
          } else {
            return a.ringnumber!.compareTo(b.ringnumber!);
          }
        });

        return FieldWithLabel(
          label: label,
          child: BottomDropdownSearch<Bird>(
            title: label,
            searchHintText: 'Search',
            filterFn: _filterFn,
            onClear: () async => _clearParent(context),
            showSearchBox: possibleParent.length > 5,
            selectedItem: (state is BirdBreederLoaded)
                ? (state).birdBreederResources.birds.firstWhereOrNull(
                      (element) => element.id == parentBird?.id,
                    )
                : null,
            onChanged: (bird) {
              context.read<BirdCubit>().changeBird(
                    switch (parentType) {
                      ParentType.father =>
                        initialBird.copyWith(father: bird?.id),
                      ParentType.mother =>
                        initialBird.copyWith(mother: bird?.id),
                    },
                  );
            },
            itemAsString: (p0) => p0.ringnumber ?? '-',
            itemBuilder: (context, bird, _) => ListTile(
              selectedTileColor: Theme.of(context).hoverColor,
              selected: bird.id == parentBird?.id,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(bird.ringnumber ?? '-'),
                  Text(bird.cageResolved?.name ?? ''),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(bird.speciesResolved?.name ?? ''),
                  Text(bird.born.toDateFormat(context)),
                ],
              ),
              leading: bird.sex.getIcon(context),
            ),
            items: possibleParent,
          ),
        );
      },
    );
  }
}
