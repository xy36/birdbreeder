import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/bloc/bird_bloc.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/field_templates/bird_dropdown_field.dart';
import 'package:birdbreeder/features/birds/presentation/cubit/birds_cubit.dart';
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
        ParentType.father => initialBird.father,
        ParentType.mother => initialBird.mother,
      };

  @override
  Widget build(BuildContext context) {
    final label = switch (parentType) {
      ParentType.father => context.l10n.common__father_ringnumber,
      ParentType.mother => context.l10n.common__mother_ringnumber,
    };

    return BlocBuilder<BirdsCubit, BirdsState>(
      builder: (context, state) {
        final possibleParent = (state is BirdsLoaded)
            ? (state)
                .birds
                // filter own the bird itself
                .where((b) => b.id != initialBird.id)
                // filter out female birds
                .where(
                  (b) =>
                      b.sex !=
                      switch (parentType) {
                        ParentType.father => Sex.female,
                        ParentType.mother => Sex.male,
                      },
                )
                .toList()
            : <Bird>[];

        return FieldWithLabel(
          label: label,
          child: BirdDropdownField<Bird>(
            name: parentType.toString(),
            hint: context.l10n.common__hint_select,
            initialValue: (state is BirdsLoaded)
                ? (state).birds.firstWhereOrNull(
                      (element) => element.id == parentBird?.id,
                    )
                : null,
            onChanged: (bird) {
              context.read<BirdBloc>().add(
                    BirdEvent.change(
                      bird: switch (parentType) {
                        ParentType.father => initialBird.copyWith(father: bird),
                        ParentType.mother => initialBird.copyWith(mother: bird),
                      },
                    ),
                  );
            },
            selectedItemBuilder: (context) => possibleParent
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: Text(e.ringnumber ?? '-'),
                  ),
                )
                .toList(),
            items: possibleParent
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: ListTile(
                      selected: e.id == parentBird?.id,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(e.ringnumber ?? '-'),
                          Text(e.cage?.name ?? ''),
                        ],
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(e.species?.name ?? ''),
                          Text(e.born.toDateFormat(context)),
                        ],
                      ),
                      leading: e.sex.getIcon(context),
                    ),
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
