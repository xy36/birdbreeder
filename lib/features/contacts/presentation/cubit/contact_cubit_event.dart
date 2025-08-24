import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_cubit_event.freezed.dart';

@freezed
class ContactCubitEvent with _$ContactCubitEvent {
  const factory ContactCubitEvent.deleted() = ContactCubitEventDeleted;
  const factory ContactCubitEvent.saved() = ContactCubitEventSaved;
  const factory ContactCubitEvent.error() = ContactCubitEventError;
}
