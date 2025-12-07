part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitContactsX on BirdBreederCubit {
  Future<List<Contact>> fetchContacts() async {
    final res = await _contactsRepository.getAll();

    return res.asValue?.value ?? const [];
  }

  Future<void> reloadContacts() async {
    push(loading());

    final contacts = await fetchContacts();

    emitLoaded(contacts: contacts);
  }

  Future<Contact?> addContact(Contact contact) async {
    push(loading());

    final result = await _contactsRepository.create(contact);

    push(loaded());

    if (result.isError) {
      presentAddFailed();
      return null;
    }

    final created = result.asValue!.value;
    _addContactToState(created);

    return created;
  }

  Future<Contact?> updateContact(Contact contact) async {
    push(loading());

    final result = await _contactsRepository.update(contact.id, contact);

    push(loaded());

    if (result.isError) {
      presentUpdateFailed();
      return null;
    }

    final updated = result.asValue!.value;
    _updateContactInState(updated);

    return updated;
  }

  Future<void> deleteContact(Contact contact) async {
    push(loading());

    final result = await _contactsRepository.delete(contact.id);

    push(loaded());

    if (result.isError) {
      presentDeleteFailed();
      return;
    }

    _removeContactFromState(contact.id);
  }

  void _addContactToState(Contact contact) {
    final updated = [...state.birdBreederResources.contacts, contact];
    _emitUpdatedContacts(updated);
  }

  void _updateContactInState(Contact updatedContact) {
    final updated = state.birdBreederResources.contacts
        .map((c) => c.id == updatedContact.id ? updatedContact : c)
        .toList();

    _emitUpdatedContacts(updated);
  }

  void _removeContactFromState(String id) {
    final updated =
        state.birdBreederResources.contacts.where((c) => c.id != id).toList();

    _emitUpdatedContacts(updated);
  }

  void _emitUpdatedContacts(List<Contact> contacts) {
    emitLoaded(contacts: contacts);
  }

  // Getter
  List<Contact> get contacts => state.birdBreederResources.contacts;
}
