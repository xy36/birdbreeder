import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/features/contacts/data/dtos/contact_dto.dart';
import 'package:birdbreeder/features/contacts/domain/mapper/contact_mapper.auto_mappr.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';

@AutoMappr([
  MapType<Contact, ContactDto>(),
  MapType<ContactDto, Contact>(),
])
class ContactMapper extends $ContactMapper {}
