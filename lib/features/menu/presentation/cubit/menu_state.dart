part of 'menu_cubit.dart';

class MenuState extends Equatable {
  const MenuState({
    // required this.routeName,
    required this.page,
  });

  // final String routeName;
  final MenuPage page;

  @override
  List<Object> get props => [
        page,
      ];
}
