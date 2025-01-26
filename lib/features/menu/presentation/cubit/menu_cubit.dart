import 'package:birdbreeder/features/menu/domain/entities/menu_pages.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_cubit.freezed.dart';
part 'menu_state.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit()
      : super(
          MenuLoaded(
            page: MenuPage.values.first,
          ),
        );

  /// emit the [MenuState] for the given [page]
  void emitMenuState(MenuPage page) => emit(
        MenuLoaded(
          page: page,
        ),
      );
}
