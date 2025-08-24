import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/core/extensions/generic_join.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/breeding/fields/parent_field.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/services/screen_size.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/bottom_dropdown_search.dart';
import 'package:birdbreeder/shared/widgets/buttons/app_action_button.dart';
import 'package:birdbreeder/shared/widgets/buttons/generic_button.dart';
import 'package:birdbreeder/shared/widgets/field_with_label.dart';
import 'package:birdbreeder/shared/widgets/icons.dart';
import 'package:birdbreeder/shared/widgets/navigate_back_button.dart';

@RoutePage()
class BreedingPairEditPage extends StatefulWidget {
  const BreedingPairEditPage({
    super.key,
    this.initialBreedingPair,
  });

  final BreedingPair? initialBreedingPair;

  @override
  State<BreedingPairEditPage> createState() => _BreedingPairEditPageState();
}

class _BreedingPairEditPageState extends State<BreedingPairEditPage> {
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
    final cubit = context.read<BirdBreederCubit>();
    final mother = widget.initialBreedingPair?.motherResolved;
    final father = widget.initialBreedingPair?.fatherResolved;

    return Scaffold(
      appBar: AppBar(
        title: Text(isEdit ? 'Editieren' : 'Brutpaar hinzufügen'),
        leading: NavigateBackButton(discardDialogEnabled: isDirty),
        actions: [
          if (isDirty)
            IconButton(
              onPressed: () {
                if (isValid) {
                  isEdit
                      ? cubit.updateBreedingPair(_breedingPair!)
                      : cubit.addBreedingPair(_breedingPair!);

                  Navigator.of(context).pop();
                }
              },
              icon: isDirty ? icon : const SizedBox(),
            ),
          if (widget.initialBreedingPair != null)
            GenericButton.icon(
              actionButtonType: ActionButtonType.breedingPairDelete,
              onTap: () {
                cubit.deleteBreedingPair(_breedingPair!);
                Navigator.of(context).pop();
              },
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
              // return data table with a column for father, mother and a column for the details of the bird
              BreedingPairCompareTable(
                breedingPair: _breedingPair,
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
              bird.sex.getDisplayName(context),
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
              bird.sex.getDisplayName(context),
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
            Text(bird.ringNumber ?? ''),
            Text(bird.cageResolved?.name ?? ''),
            Text(bird.speciesResolved?.name ?? ''),
            Text(bird.colorResolved?.name ?? ''),
            Text(bird.effectiveBornAt.toDateFormat(context)),
          ],
        ),
      ),
    );
  }
}

class BreedingPairCompareTable extends StatelessWidget {
  const BreedingPairCompareTable({
    super.key,
    required this.breedingPair,
  });

  final BreedingPair? breedingPair;

  @override
  Widget build(BuildContext context) {
    if (breedingPair == null) {
      return const Text(
        'Kein Brutpaar ausgewählt',
        style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
      );
    }
    final mother = breedingPair?.motherResolved;
    final father = breedingPair?.fatherResolved;

    const headerRow = CompareTableRow(
      label: 'Details,',
      motherValue: 'Mutter',
      fatherValue: 'Vater',
    );

    final sexRow = CompareTableRow(
      label: context.l10n.common__sex,
      motherValue: mother?.sex.getDisplayName(context) ?? '-',
      fatherValue: father?.sex.getDisplayName(context) ?? '-',
    );

    final ringNumberRow = CompareTableRow(
      label: context.l10n.common__ringnumber,
      motherValue: mother?.ringNumber ?? '-',
      fatherValue: father?.ringNumber ?? '-',
    );
    final cageRow = CompareTableRow(
      label: context.l10n.common__cage,
      motherValue: mother?.cageResolved?.name ?? '-',
      fatherValue: father?.cageResolved?.name ?? '-',
    );
    final speciesRow = CompareTableRow(
      label: context.l10n.common__species,
      motherValue: mother?.speciesResolved?.name ?? '-',
      fatherValue: father?.speciesResolved?.name ?? '-',
    );
    final colorRow = CompareTableRow(
      label: context.l10n.common__color,
      motherValue: mother?.colorResolved?.name ?? '-',
      fatherValue: father?.colorResolved?.name ?? '-',
    );
    final bornDateRow = CompareTableRow(
      label: context.l10n.common__born_date,
      motherValue: mother?.effectiveBornAt.toDateFormat(context) ?? '-',
      fatherValue: father?.effectiveBornAt.toDateFormat(context) ?? '-',
    );

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerRow,
            const Divider(),
            sexRow,
            ringNumberRow,
            cageRow,
            speciesRow,
            colorRow,
            bornDateRow,
            const Divider(),
          ],
        ),
      ),
    );
  }
}

class CompareTableRow extends StatelessWidget {
  const CompareTableRow({
    super.key,
    required this.label,
    required this.motherValue,
    required this.fatherValue,
  });

  final String label;
  final String motherValue;
  final String fatherValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Text(motherValue),
        Text(fatherValue),
      ].map((e) => Expanded(child: e)).toList(),
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
                Text(bird.ringNumber ?? '-'),
                Text(bird.cageResolved?.name ?? ''),
              ],
            ),
            subtitle: Text(bird.speciesResolved?.name ?? ''),
          );
        },
        itemAsString: (item) => item.ringNumber ?? '-',
        title: context.l10n.bird__cage_dropdown_title,
        searchHintText: context.l10n.bird__cage_dropdown_hint,
        showSearchBox: birds.length > 2,
        filterFn: (bird, filter) => bird.filter(filter),
      ),
    );
  }
}
