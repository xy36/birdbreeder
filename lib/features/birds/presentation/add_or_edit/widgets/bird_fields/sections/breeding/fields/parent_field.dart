import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/sections/widgets/bird_select_property_field.dart';
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

  @override
  Widget build(BuildContext context) {
    final label = switch (parentType) {
      ParentType.father => context.tr.common.father,
      ParentType.mother => context.tr.common.mother,
    };

    return BlocBuilder<BirdBreederCubit, BirdBreederState>(
      builder: (context, state) {
        return BirdSelectPropertyField(
          prefixIcon: switch (parentType) {
            ParentType.father => Sex.male,
            ParentType.mother => Sex.female,
          }
              .getIcon(context) as Icon,
          bird: initialBird,
          label: label,
          name: 'parent_${parentType.name}_field',
          select: switch (parentType) {
            ParentType.father => (b) => b.fatherResolved,
            ParentType.mother => (b) => b.motherResolved,
          },
          hint: label,
          title: label,
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
        );
      },
    );
  }
}
