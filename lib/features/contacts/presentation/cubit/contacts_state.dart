part of 'contacts_cubit.dart';

@freezed
class ContactsState with _$ContactsState {
  const factory ContactsState.loading() = ContactsLoading;
  const factory ContactsState.loaded() = ContactsLoaded;
  const factory ContactsState.errorScreen() = ContactsErrorScreen;
}
