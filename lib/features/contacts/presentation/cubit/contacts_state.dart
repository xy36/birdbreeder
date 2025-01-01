part of 'contacts_cubit.dart';

@freezed
class ContactsState with _$ContactsState {
  const factory ContactsState.initial() = Initial;
  const factory ContactsState.loading() = Loading;
  const factory ContactsState.errorScreen() = ErrorScreen;
  const factory ContactsState.loaded({required List<Contact> contacts}) =
      Loaded;
}
