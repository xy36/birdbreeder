import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/core/extensions/generic_join.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/fields/parent_field.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pair/cubit/breeding_pair_cubit.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pair/widgets/delete_breeding_pair_button.dart';
import 'package:birdbreeder/services/screen_size.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/bottom_dropdown_search.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';
import 'package:birdbreeder/shared/widgets/icons.dart';
import 'package:birdbreeder/shared/widgets/navigate_back_button.dart';

class BreedingPairScreen extends StatefulWidget {
  const BreedingPairScreen({
    super.key,
    this.initialBreedingPair,
  });

  final BreedingPair? initialBreedingPair;

  @override
  State<BreedingPairScreen> createState() => _BreedingPairScreenState();
}

class _BreedingPairScreenState extends State<BreedingPairScreen> {
  @override
  void initState() {
    _breedingPair = widget.initialBreedingPair;
    super.initState();
  }

  BreedingPair? _breedingPair;

  final formKey = GlobalKey<FormState>();

  bool get isDirty => widget.initialBreedingPair != _breedingPair;

  bool get isEdit => widget.initialBreedingPair != null;

  bool get isValid =>
      formKey.currentState?.validate() == true && _breedingPair != null;

  Widget get icon => isEdit ? saveIcon : acceptIcon;

  @override
  Widget build(BuildContext context) {
    final mother = widget.initialBreedingPair?.motherResolved;
    // context.watch<BirdBreederCubit>().state.maybeMap(
    //     loaded: (loadedState) =>
    //         loadedState.birdBreederResources.birds.firstWhereOrNull(
    //       (bird) => bird.id == widget.initialBreedingPair?.mother,
    //     ),
    //     orElse: () => null,
    //   );

    final father = widget.initialBreedingPair?.fatherResolved;
    //  context.watch<BirdBreederCubit>().state.maybeMap(
    //       loaded: (loadedState) =>
    //           loadedState.birdBreederResources.birds.firstWhereOrNull(
    //         (bird) => bird.id == widget.initialBreedingPair?.father,
    //       ),
    //       orElse: () => null,
    //     );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Brutpaar hinzufügen'),
        leading: NavigateBackButton(discardDialogEnabled: isDirty),
        actions: [
          IconButton(
            onPressed: () {
              if (isValid) {
                isEdit
                    ? context.read<BreedingPairCubit>().edit(_breedingPair!)
                    : context.read<BreedingPairCubit>().add(_breedingPair!);

                Navigator.of(context).pop();
              }
            },
            icon: isDirty ? icon : const SizedBox(),
          ),
          if (widget.initialBreedingPair != null)
            IconButton(
              onPressed: () {
                if (isValid) {
                  isEdit
                      ? context.read<BreedingPairCubit>().edit(_breedingPair!)
                      : context.read<BreedingPairCubit>().add(_breedingPair!);

                  Navigator.of(context).pop();
                }
              },
              icon: isDirty ? icon : const SizedBox(),
            ),
          if (widget.initialBreedingPair != null)
            DeleteBreedingPairButton(
              breedingPair: _breedingPair!,
            ),
        ],
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.all(
            context.responsiveValueMobileAndGreater<double>(
              mobile: 8,
              greater: 16,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                spacing: 8,
                children: [
                  Expanded(
                    child: ParentField(
                      bird: mother,
                      parentType: ParentType.mother,
                      onChanged: (bird) {
                        setState(() {
                          _breedingPair =
                              (_breedingPair ?? BreedingPair.create())
                                  .copyWith(mother: bird?.id);
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: ParentField(
                      bird: father,
                      parentType: ParentType.father,
                      onChanged: (bird) {
                        setState(() {
                          _breedingPair =
                              (_breedingPair ?? BreedingPair.create())
                                  .copyWith(father: bird?.id);
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Expanded(
                    child: ParentInfoColumn(),
                  ),
                  Expanded(
                    child: ParentDetailsCard(
                      id: _breedingPair?.mother,
                      parentType: ParentType.mother,
                    ),
                  ),
                  Expanded(
                    child: ParentDetailsCard(
                      id: _breedingPair?.fatherResolved?.id,
                      parentType: ParentType.father,
                    ),
                  ),
                ],
              ),
            ].genericJoin(const SizedBox(height: 16)),
          ),
        ),
      ),
    );
  }
}

class ParentDetailsCard extends StatelessWidget {
  const ParentDetailsCard({
    super.key,
    required this.id,
    required this.parentType,
  });

  final String? id;

  final ParentType parentType;

  @override
  Widget build(BuildContext context) {
    if (id == null) {
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Text(
                switch (parentType) {
                  ParentType.father => 'Kein Vater ausgewählt',
                  ParentType.mother => 'Keine Mutter ausgewählt'
                },
                style: context.titleMedium,
              ),
            ],
          ),
        ),
      );
    }

    final bird = context.watch<BirdBreederCubit>().state.maybeMap(
          loaded: (loadedState) =>
              loadedState.birdBreederResources.birds.firstOrNullWhere(
            (bird) => bird.id == id,
          ),
          orElse: () => null,
        );

    if (bird == null) {
      return const Text('Konnte nicht gefunden werden');
    }

    final sexRow = switch (parentType) {
      ParentType.father => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              bird.sex.getTranslatedName(context),
              style: context.titleMedium,
            ),
            bird.sex.getIcon(context),
          ],
        ),
      ParentType.mother => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            bird.sex.getIcon(context),
            Text(
              bird.sex.getTranslatedName(context),
              style: context.titleMedium,
            ),
          ],
        ),
    };

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: switch (parentType) {
            ParentType.father => CrossAxisAlignment.start,
            ParentType.mother => CrossAxisAlignment.end,
          },
          children: [
            sexRow,
            const Divider(),
            Text(bird.ringnumber ?? ''),
            Text(bird.cageResolved?.name ?? ''),
            Text(bird.speciesResolved?.name ?? ''),
            Text(bird.colorResolved?.name ?? ''),
            Text(bird.born.toDateFormat(context)),
          ],
        ),
      ),
    );
  }
}

class ParentInfoColumn extends StatelessWidget {
  const ParentInfoColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${context.l10n.common__sex}:'),
          const Divider(),
          Text('${context.l10n.common__ringnumber}:'),
          Text('${context.l10n.common__cage}:'),
          Text('${context.l10n.common__species}:'),
          Text('${context.l10n.common__color}:'),
          Text('${context.l10n.common__born_date}:'),
        ],
      ),
    );
  }
}

class ParentField extends StatelessWidget {
  const ParentField({
    super.key,
    required this.bird,
    required this.onChanged,
    required this.parentType,
  });

  final Bird? bird;

  final ParentType parentType;

  final void Function(Bird? bird) onChanged;

  @override
  Widget build(BuildContext context) {
    final birds = context
        .watch<BirdBreederCubit>()
        .state
        .maybeMap(
          loaded: (loadedState) => loadedState.birdBreederResources.birds.where(
            (bird) =>
                bird.sex == Sex.unknown ||
                bird.sex ==
                    switch (parentType) {
                      ParentType.mother => Sex.female,
                      ParentType.father => Sex.male,
                    },
          ),
          orElse: () => <Bird>[],
        )
        .toList();

    return FieldWithLabel(
      label: switch (parentType) {
        ParentType.mother => context.l10n.common__mother,
        ParentType.father => context.l10n.common__father,
      },
      child: BottomDropdownSearch<Bird>(
        items: birds,
        selectedItem: bird,
        onChanged: onChanged,
        itemBuilder: (BuildContext context, Bird bird, bool t) {
          return ListTile(
            leading: bird.sex.getIcon(context),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 8,
              children: [
                Text(bird.ringnumber ?? '-'),
                Text(bird.cageResolved?.name ?? ''),
              ],
            ),
            subtitle: Text(bird.speciesResolved?.name ?? ''),
          );
        },
        itemAsString: (item) => item.ringnumber ?? '-',
        title: context.l10n.bird__cage_dropdown_title,
        searchHintText: context.l10n.bird__cage_dropdown_hint,
        showSearchBox: birds.length > 2,
        filterFn: (bird, filter) => bird.filter(filter),
      ),
    );
  }
}
