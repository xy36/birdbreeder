import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';

/// Captures bird photos from the camera or gallery, downscaled to keep blobs
/// (and therefore backups) small. Returns raw bytes to hand to `ImageStore`.
class BirdImagePicker {
  BirdImagePicker._();

  static final ImagePicker _picker = ImagePicker();
  static const double _maxWidth = 1600;
  static const int _quality = 85;

  /// Takes a single photo with the camera. Null if the user cancels.
  static Future<Uint8List?> takePhoto() async {
    final file = await _picker.pickImage(
      source: ImageSource.camera,
      maxWidth: _maxWidth,
      imageQuality: _quality,
    );
    return file?.readAsBytes();
  }

  /// Picks one or more images from the gallery. Empty if the user cancels.
  static Future<List<Uint8List>> pickFromGallery() async {
    final files = await _picker.pickMultiImage(
      maxWidth: _maxWidth,
      imageQuality: _quality,
    );
    return Future.wait(files.map((f) => f.readAsBytes()));
  }
}
