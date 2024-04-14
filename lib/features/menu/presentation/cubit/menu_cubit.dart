import 'package:birdbreeder/features/menu/domain/entities/menu_pages.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'menu_state.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit()
      : super(
          MenuState(
            page: MenuPage.values.first,
          ),
        );

  /// emit the [MenuState] for the given [page]
  void emitMenuState(MenuPage page) => emit(
        MenuState(
          page: page,
        ),
      );
}
