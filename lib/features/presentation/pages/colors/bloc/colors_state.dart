part of 'colors_bloc.dart';

@freezed
class ColorsState with _$ColorsState {
  const factory ColorsState.initial() = Initial;
  const factory ColorsState.loading() = Loading;
  const factory ColorsState.loaded(List<BirdColor> colors) = Loaded;
  const factory ColorsState.error() = Error;
}
