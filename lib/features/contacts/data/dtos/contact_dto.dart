import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_dto.freezed.dart';
part 'contact_dto.g.dart';

@freezed
class ContactDto with _$ContactDto {
  factory ContactDto({
    required String id,
    String? number,
    String? firstName,
    String? name,
    String? email,
    String? address,
    String? city,
    String? country,
    String? postalCode,
    String? website,
    String? user,
  }) = _ContactDto;

  factory ContactDto.fromJson(Map<String, dynamic> json) =>
      _$ContactDtoFromJson(json);
}
