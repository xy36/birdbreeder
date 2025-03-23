import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';

extension ContactListExtension on List<Contact> {
  Contact? findById(String id) {
    return firstOrNullWhere((element) => element.id == id);
  }
}
