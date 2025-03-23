import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/core/utils/user_helper.dart';
import 'package:birdbreeder/features/contacts/data/dtos/contact_dto.dart';
import 'package:birdbreeder/features/contacts/domain/mapper/contact_mapper.auto_mappr.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';

@AutoMappr([
  MapType<Contact, ContactDto>(
    fields: [
      Field('user', custom: UserHelper.insertUser),
    ],
  ),
])
class ContactMapper extends $ContactMapper {}
