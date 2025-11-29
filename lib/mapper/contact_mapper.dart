import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/mapper/contact_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/models/contact/dtos/contact_dto.dart';

@AutoMappr([
  MapType<Contact, ContactDto>(),
  MapType<ContactDto, Contact>(),
])
class ContactMapper extends $ContactMapper {}
