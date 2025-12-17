import 'package:birdbreeder/models/searchable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';

@freezed
abstract class Contact with _$Contact, Searchable {
  factory Contact({
    required String id,
    required String? number,
    required String? phone,
    required String? firstName,
    required String? name,
    required String? email,
    required String? address,
    required String? city,
    required String? postalCode,
    required String? country,
    required String? website,
    DateTime? created,
    DateTime? updated,
  }) = _Contact;

  factory Contact.create() => Contact(
        id: '',
        number: null,
        phone: null,
        firstName: null,
        name: null,
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
        name,
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
