import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/searchable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:birdbreeder/core/extensions/contact_extension.dart';

part 'contact.freezed.dart';

enum ContactInitials {
  none,
  mr,
  ms;

  String getDisplayName(BuildContext context) {
    switch (this) {
      case ContactInitials.none:
        return context.tr.contacts.fields.initials.none;
      case ContactInitials.mr:
        return context.tr.contacts.fields.initials.mr;
      case ContactInitials.ms:
        return context.tr.contacts.fields.initials.ms;
    }
  }
}

@freezed
abstract class Contact with _$Contact, Searchable {
  factory Contact({
    required String id,
    required String? number,
    required String? phone,
    required String? firstName,
    required String? lastName,
    required String? email,
    required String? address,
    required String? city,
    required String? postalCode,
    required String? country,
    required String? website,
    @Default(ContactInitials.none) ContactInitials? initials,
    DateTime? created,
    DateTime? updated,
  }) = _Contact;

  factory Contact.create() => Contact(
        id: '',
        number: null,
        phone: null,
        firstName: null,
        lastName: null,
        email: null,
        address: null,
        city: null,
        postalCode: null,
        country: null,
        website: null,
      );

  const Contact._();

  @override
  String get searchIndex => [
        firstName,
        lastName,
        number,
        phone,
        email,
        address,
        city,
        postalCode,
        country,
        website,
      ]
          .where((e) => e != null && e.trim().isNotEmpty)
          .map((e) => e!.toLowerCase())
          .join(' ');
}
