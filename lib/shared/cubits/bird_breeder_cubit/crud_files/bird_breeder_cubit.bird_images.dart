part of '../bird_breeder_cubit.dart';

extension BirdBreederCubitBirdImagesX on BirdBreederCubit {
  Future<List<BirdImage>> fetchBirdImages() async {
    final res = await _birdImagesRepository.getAll();
    return res.asValue?.value ?? const [];
  }

  List<BirdImage> get birdImages => state.birdBreederResources.birdImages;

  /// Stores [bytes] in the content-addressed ImageStore and attaches the
  /// resulting hash to [birdId] as the next image.
  Future<BirdImage?> addBirdImage(String birdId, Uint8List bytes) async {
    final hash = await ImageStore.put(bytes);
    final nextPosition = birdImages
            .where((i) => i.birdId == birdId)
            .fold<int>(-1, (max, i) => i.position > max ? i.position : max) +
        1;

    push(loading());
    final result = await _birdImagesRepository.create(
      BirdImage.create(birdId: birdId, hash: hash, position: nextPosition),
    );
    push(loaded());

    if (result.isError) {
      presentAddFailed();
      return null;
    }

    final created = result.asValue!.value;
    emitLoaded(birdImages: [...birdImages, created]);
    return created;
  }

  Future<void> deleteBirdImage(BirdImage image) async {
    push(loading());
    final result = await _birdImagesRepository.delete(image.id);
    push(loaded());

    if (result.isError) {
      presentDeleteFailed();
      return;
    }

    emitLoaded(
      birdImages: birdImages.where((i) => i.id != image.id).toList(),
    );
    // The blob is reclaimed by the ImageStore GC once unreferenced.
  }

  /// Persists a new order for one bird's images. [ordered] is the full,
  /// reordered list of that bird's images.
  Future<void> reorderBirdImages(
    String birdId,
    List<BirdImage> ordered,
  ) async {
    final repositioned = <BirdImage>[];
    for (var i = 0; i < ordered.length; i++) {
      final image = ordered[i];
      if (image.position == i) {
        repositioned.add(image);
        continue;
      }
      final result = await _birdImagesRepository.update(
        image.id,
        image.copyWith(position: i),
      );
      repositioned.add(result.asValue?.value ?? image.copyWith(position: i));
    }

    final others = birdImages.where((i) => i.birdId != birdId).toList();
    emitLoaded(birdImages: [...others, ...repositioned]);
  }
}
