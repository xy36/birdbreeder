import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit_event.dart';
import 'package:birdbreeder/models/bird/bird_mode.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_presentation/bloc_presentation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_cubit.freezed.dart';
part 'bird_state.dart';

class BirdCubit extends Cubit<BirdState>
    with BlocPresentationMixin<BirdState, BirdCubitEvent> {
  BirdCubit(
    this.birdBreederCubit, {
    required this.initialBird,
  }) : super(
          BirdLoaded(
            bird: initialBird ?? Bird.create(),
            mode: initialBird == null ? BirdMode.create : BirdMode.edit,
          ),
        ) {
    initialBird = state.bird;
  }

  Bird? initialBird;
  final BirdBreederCubit birdBreederCubit;

  Future<void> changeBird(Bird bird) async {
    return emit(
      BirdLoaded(
        bird: bird,
        mode: state.mode,
      ),
    );
  }

  Future<void> save() async {
    final result = switch (state.mode) {
      BirdMode.create => await birdBreederCubit.addBird(state.bird),
      BirdMode.edit => await birdBreederCubit.updateBird(state.bird),
    };

    if (result == null) {
      return emit(
        BirdLoaded(
          bird: state.bird,
          mode: state.mode,
        ),
      );
    }

    initialBird = result;

    emit(
      BirdLoaded(
        bird: result,
        mode: BirdMode.edit,
      ),
    );

    emitPresentation(
      const BirdCubitEvent.saved(),
    );
  }

  Future<void> duplicate() async {
    final result = await birdBreederCubit.addBird(
      state.bird.copyWith(
        id: '',
        ringNumber: 'Copy of ${state.bird.ringNumber ?? ''}',
      ),
    );

    if (result == null) {
      return emit(
        BirdLoaded(
          bird: state.bird,
          mode: state.mode,
        ),
      );
    }

    emitPresentation(
      const BirdCubitEvent.duplicated(),
    );
  }

  Future<void> delete() async {
    emit(
      BirdLoading(
        bird: state.bird,
        mode: state.mode,
      ),
    );

    await birdBreederCubit.deleteBird(state.bird);

    emitPresentation(
      const BirdCubitEvent.deleted(),
    );
  }

  Future<void> addAndSelectSpecies(String speciesName) async {
    final species =
        await birdBreederCubit.addSpecies(Species.create(name: speciesName));

    if (species != null) {
      emit(
        BirdLoaded(
          bird: state.bird.copyWith(speciesId: species.id),
          mode: state.mode,
        ),
      );
    }
  }

  Future<void> addAndSelectCage(String cageName) async {
    final cage = await birdBreederCubit.addCage(Cage.create(name: cageName));

    if (cage != null) {
      emit(
        BirdLoaded(
          bird: state.bird.copyWith(cageId: cage.id),
          mode: state.mode,
        ),
      );
    }
  }

  Future<void> addAndSelectColor(String colorName) async {
    final color =
        await birdBreederCubit.addColor(BirdColor.create(name: colorName));

    if (color != null) {
      emit(
        BirdLoaded(
          bird: state.bird.copyWith(colorId: color.id),
          mode: state.mode,
        ),
      );
    }
  }
}
