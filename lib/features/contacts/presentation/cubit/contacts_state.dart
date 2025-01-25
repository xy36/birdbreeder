part of 'contacts_cubit.dart';

@freezed
class ContactsState with _$ContactsState {
  const factory ContactsState.initial() = ContactsInitial;
  const factory ContactsState.loading() = ContactsLoading;
  const factory ContactsState.loaded({required List<Contact> contacts}) =
      ContactsLoaded;
  const factory ContactsState.errorScreen() = ContactsErrorScreen;
}
