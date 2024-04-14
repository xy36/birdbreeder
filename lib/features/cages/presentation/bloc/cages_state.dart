part of 'cages_bloc.dart';

@freezed
abstract class CagesState with _$CagesState {
  const factory CagesState.initial() = Initial;
  const factory CagesState.loading() = Loading;
  const factory CagesState.loaded({required List<Cage> cages}) = Loaded;
  const factory CagesState.error() = Error;
}
