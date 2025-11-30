part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitContactsX on BirdBreederCubit {
  Future<Contact?> addContact(Contact contact) async {
    push(loading());
    final result = await _contactsRepository.create(contact.toDto());
    push(loaded());
    if (result.isError) {
      presentAddFailed();
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<Contact?> updateContact(Contact contact) async {
    push(loading());
    final result =
        await _contactsRepository.update(contact.id, contact.toDto());
    push(loaded());
    if (result.isError) {
      presentUpdateFailed();
      return null;
    }
    return result.asValue!.value.toModel();
  }

  Future<void> deleteContact(Contact contact) async {
    push(loading());
    final result = await _contactsRepository.delete(contact.id);
    push(loaded());
    if (result.isError) {
      presentDeleteFailed();
      return;
    }
  }

  List<Contact> get contacts => state.birdBreederResources.contacts;
}
