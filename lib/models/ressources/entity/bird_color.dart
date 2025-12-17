import 'package:birdbreeder/models/searchable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_color.freezed.dart';

@freezed
abstract class BirdColor with _$BirdColor, Searchable {
  factory BirdColor({
    required String id,
    required String? name,
    DateTime? created,
    DateTime? updated,
  }) = _BirdColor;

  const BirdColor._();

  factory BirdColor.create({
    String? name,
  }) =>
      BirdColor(
        id: '',
        name: name,
      );

  @override
  String get searchIndex => [
        name,
      ]
          .where((e) => e != null && e.trim().isNotEmpty)
          .map((e) => e!.toLowerCase())
          .join(' ');
}
