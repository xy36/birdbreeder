part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitContactsX on BirdBreederCubit {
  Future<Contact?> addContact(Contact contact) async {
    push(loading());
    final result = await _contactsRepository.create(contact.toDto());
    if (result.isError) {
      presentAddFailed();
      push(loaded());
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<Contact?> updateContact(Contact contact) async {
    push(loading());
    final result =
        await _contactsRepository.update(contact.id, contact.toDto());
    if (result.isError) {
      presentUpdateFailed();
      push(loaded());
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<void> deleteContact(Contact contact) async {
    push(loading());
    final result = await _contactsRepository.delete(contact.id);
    if (result.isError) {
      presentDeleteFailed();
      push(loaded());
      return;
    }
  }

  List<Contact> get contacts => state.birdBreederResources.contacts;
}
