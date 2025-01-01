import 'package:async/src/result/result.dart';
import 'package:birdbreeder/core/extensions/mapper_extensions.dart';
import 'package:birdbreeder/features/contacts/data/dtos/contact_dto.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:birdbreeder/features/contacts/domain/repositories/i_contacts_repository.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/services/pocketbase_service.dart';

class ContactsRepositoryImpl implements IContactsRepository {
  ContactsRepositoryImpl(this.pocketBaseService, this.loggingService);
  final PocketBaseService pocketBaseService;
  final LoggingService loggingService;

  @override
  Future<Result<Contact>> create(Contact contact) async {
    try {
      final result = await pocketBaseService.contactsCollection
          .create(body: contact.toDto().toJson());

      return Result.value(ContactDto.fromJson(result.toJson()).toModel());
    } catch (e) {
      loggingService.logger.error(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<void>> delete(Contact contacts) async {
    try {
      await pocketBaseService.contactsCollection.delete(contacts.id);

      return Result.value(null);
    } catch (e) {
      loggingService.logger.error(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<Contact>>> getAll() async {
    try {
      final result = await pocketBaseService.contactsCollection
          .getFullList(sort: '-created');

      return Result.value(
        result.map((e) => ContactDto.fromJson(e.toJson()).toModel()).toList(),
      );
    } catch (e) {
      loggingService.logger.error(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Contact>> getById(String id) async {
    try {
      final birdResult = await pocketBaseService.contactsCollection.getOne(id);

      return Result.value(ContactDto.fromJson(birdResult.toJson()).toModel());
    } catch (e) {
      loggingService.logger.error(e.toString());
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<Contact>> update(Contact contact) async {
    try {
      final result = await pocketBaseService.contactsCollection
          .update(contact.id, body: contact.toDto().toJson());

      return Result.value(ContactDto.fromJson(result.toJson()).toModel());
    } catch (e) {
      loggingService.logger.error(e.toString());
      return Result.error(e.toString());
    }
  }
}
