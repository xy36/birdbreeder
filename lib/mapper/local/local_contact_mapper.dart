import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/mapper/local/local_contact_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/services/database/app_database.dart' as local_db;

@AutoMappr([
  MapType<Contact, local_db.Contact>(
    fields: [
      Field('title', custom: LocalContactMapper.mapTitle),
    ],
  ),
  MapType<local_db.Contact, Contact>(
    fields: [
      Field('title', custom: LocalContactMapper.mapTitleFromName),
    ],
  ),
])
class LocalContactMapper extends $LocalContactMapper {
  static String? mapTitle(Contact contact) => contact.title?.name;

  static ContactTitle? mapTitleFromName(local_db.Contact contact) =>
      ContactTitle.values.firstWhere(
        (t) => t.name == contact.title,
      );
}
