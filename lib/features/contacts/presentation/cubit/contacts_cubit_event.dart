import 'package:freezed_annotation/freezed_annotation.dart';

part 'contacts_cubit_event.freezed.dart';

@freezed
class ContactsCubitEvent with _$ContactsCubitEvent {
  const factory ContactsCubitEvent.updateFailed() = ContactsEventUpdateFailed;
  const factory ContactsCubitEvent.createFailed() = ContactsEventCreateFailed;
  const factory ContactsCubitEvent.deleteFailed() = ContactsEventDeleteFailed;
}
