import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_cubit_event.freezed.dart';

@freezed
class BirdCubitEvent with _$BirdCubitEvent {
  const factory BirdCubitEvent.deleted() = BirdCubitEventDeleted;
  const factory BirdCubitEvent.duplicated() = BirdCubitEventDuplicated;
  const factory BirdCubitEvent.error() = BirdCubitEventError;
}
