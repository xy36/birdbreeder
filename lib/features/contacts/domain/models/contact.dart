import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';

@freezed
class Contact with _$Contact {
  factory Contact({
    required String id,
    String? number,
    String? firstName,
    String? name,
    String? email,
    String? address,
    String? city,
    String? postalCode,
    String? country,
    String? website,
  }) = _Contact;

  factory Contact.create() => Contact(
        id: '',
      );
}
