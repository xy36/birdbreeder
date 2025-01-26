part of 'menu_cubit.dart';

@freezed
class MenuState with _$MenuState {
  const factory MenuState.loaded({required MenuPage page}) = MenuLoaded;
}
