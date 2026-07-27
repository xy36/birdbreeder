import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_image.freezed.dart';
part 'bird_image.g.dart';

/// A photo attached to a bird. [hash] is the content hash of the blob in the
/// local ImageStore; [position] orders images within the bird.
@freezed
abstract class BirdImage with _$BirdImage {
  const factory BirdImage({
    required String id,
    required BirdId birdId,
    required String hash,
    @Default(0) int position,
    DateTime? created,
    DateTime? updated,
  }) = _BirdImage;

  factory BirdImage.create({
    required BirdId birdId,
    required String hash,
    required int position,
  }) {
    return BirdImage(id: '', birdId: birdId, hash: hash, position: position);
  }

  factory BirdImage.fromJson(Map<String, dynamic> json) =>
      _$BirdImageFromJson(json);
}
