import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/bird_dropdown_property_field.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
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
            ParentType.father => initialBird.copyWith(fatherId: null),
            ParentType.mother => initialBird.copyWith(motherId: null),
          },
        );
  }

  bool _filterFn(Bird item, String filter) {
    if (filter.isEmpty) return true;
    return (item.ringNumber?.toLowerCase().contains(filter.toLowerCase()) ??
            false) ||
        (item.speciesResolved?.name
                ?.toLowerCase()
                .contains(filter.toLowerCase()) ??
            false) ||
        (item.cageResolved?.name
                ?.toLowerCase()
                .contains(filter.toLowerCase()) ??
            false) ||
        (item.colorResolved?.name
                ?.toLowerCase()
                .contains(filter.toLowerCase()) ??
            false);
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
                // .where(
                //   (b) => b.species == null || b.species == initialBird.species,
                // )
                //filter out children
                .where(
                  (b) =>
                      b.id != initialBird.fatherId &&
                      b.id != initialBird.motherId,
                )
                // filter out by sex
                .where(
                  (b) =>
                      b.sex ==
                      switch (parentType) {
                        ParentType.father => Sex.male,
                        ParentType.mother => Sex.female,
                      },
                )
                .toList()
            : <Bird>[];

        return BirdDropdownPropertyField<Bird>(
          bird: initialBird,
          label: label,
          name: 'parent_${parentType.name}_field',
          select: switch (parentType) {
            ParentType.father => (b) => b.fatherResolved,
            ParentType.mother => (b) => b.motherResolved,
          },
          hint: label,
          title: label,
          searchHint: context.l10n.common__search,
          filterFn: _filterFn,
          onClear: () async => _clearParent(context),
          selectedItem: (state is BirdBreederLoaded)
              ? (state).birdBreederResources.birds.firstWhereOrNull(
                    (element) => element.id == parentBird?.id,
                  )
              : null,
          apply: (bird, value) {
            switch (parentType) {
              case ParentType.father:
                return initialBird.copyWith(fatherId: bird.id);
              case ParentType.mother:
                return initialBird.copyWith(motherId: bird.id);
            }
          },
          itemAsString: (p0) => p0.ringNumber ?? '-',
          itemBuilder: (context, bird, _) {
            return Card(
              child: ListTile(
                selectedTileColor:
                    context.primaryColorLight.withValues(alpha: 0.25),
                selected: bird.id == parentBird?.id,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(bird.ringNumber ?? 'Keine Ringnummer'),
                  ],
                ),
                subtitle: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(bird.speciesResolved?.name ?? 'Unbekannte Art'),
                      ],
                    ),
                  ],
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (bird.cageResolved?.name != null)
                      Text(bird.cageResolved!.name!),
                    if (bird.effectiveBornAt != null)
                      Text(bird.effectiveBornAt!.toDateFormat(context)),
                  ],
                ),
                leading: bird.sex.getIcon(context),
              ),
            );
          },
          items: possibleParent,
        );
      },
    );
  }
}
