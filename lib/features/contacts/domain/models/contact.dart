import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';

@freezed
class Contact with _$Contact {
  factory Contact({
    required String id,
    required String? number,
    required String? firstName,
    required String? name,
    required String? email,
    required String? address,
    required String? city,
    required String? postalCode,
    required String? country,
    required String? website,
  }) = _Contact;

  factory Contact.create() => Contact(
        id: '',
        number: null,
        firstName: null,
        name: null,
        email: null,
        address: null,
        city: null,
        postalCode: null,
        country: null,
        website: null,
      );
}
