part of 'colors_bloc.dart';

@freezed
class ColorsEvent with _$ColorsEvent {
  const factory ColorsEvent.load() = Load;
  const factory ColorsEvent.addColor(BirdColor color) = AddColor;
  const factory ColorsEvent.deleteColor(BirdColor color) = DeleteColor;
  const factory ColorsEvent.editColor(BirdColor color) = EditColor;
}
