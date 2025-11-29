part of 'contact_cubit.dart';

enum ContactMode {
  create,
  edit,
}

@freezed
abstract class ContactState with _$ContactState {
  const factory ContactState.loading({
    required Contact contact,
    required ContactMode mode,
  }) = ContactLoading;
  const factory ContactState.loaded({
    required Contact contact,
    required ContactMode mode,
  }) = ContactLoaded;
}
