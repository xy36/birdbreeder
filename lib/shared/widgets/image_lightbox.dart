import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/hash_image.dart';
import 'package:flutter/material.dart';

/// Fullscreen image viewer: swipe left/right through a set of image hashes,
/// pinch to zoom. Open via [ImageLightbox.show].
class ImageLightbox extends StatefulWidget {
  const ImageLightbox({
    required this.hashes,
    required this.initialIndex,
    super.key,
  });

  final List<String> hashes;
  final int initialIndex;

  static Future<void> show(
    BuildContext context, {
    required List<String> hashes,
    required int initialIndex,
  }) {
    return Navigator.of(context).push(
      PageRouteBuilder<void>(
        opaque: false,
        barrierColor: Colors.black,
        pageBuilder: (_, __, ___) =>
            ImageLightbox(hashes: hashes, initialIndex: initialIndex),
      ),
    );
  }

  @override
  State<ImageLightbox> createState() => _ImageLightboxState();
}

class _ImageLightboxState extends State<ImageLightbox> {
  late final PageController _controller =
      PageController(initialPage: widget.initialIndex);
  late int _index = widget.initialIndex;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            itemCount: widget.hashes.length,
            onPageChanged: (i) => setState(() => _index = i),
            itemBuilder: (context, i) => _ZoomableImage(hash: widget.hashes[i]),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(AppIcons.close, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ),
          if (widget.hashes.length > 1)
            SafeArea(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    '${_index + 1} / ${widget.hashes.length}',
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

/// A single lightbox image supporting pinch-to-zoom and double-tap-to-zoom.
///
/// Double-tapping zooms to 2.5x centered on the tap point; double-tapping again
/// (or when already zoomed) resets to fit. Pinch zoom stays available.
class _ZoomableImage extends StatefulWidget {
  const _ZoomableImage({required this.hash});

  final String hash;

  @override
  State<_ZoomableImage> createState() => _ZoomableImageState();
}

class _ZoomableImageState extends State<_ZoomableImage> {
  final TransformationController _transform = TransformationController();
  TapDownDetails? _doubleTapDetails;

  @override
  void dispose() {
    _transform.dispose();
    super.dispose();
  }

  void _handleDoubleTap() {
    if (_transform.value.isIdentity()) {
      final position = _doubleTapDetails?.localPosition ?? Offset.zero;
      _transform.value = Matrix4.identity()
        ..translateByDouble(-position.dx * 1.5, -position.dy * 1.5, 0, 1)
        ..scaleByDouble(2.5, 2.5, 2.5, 1);
    } else {
      _transform.value = Matrix4.identity();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTapDown: (details) => _doubleTapDetails = details,
      onDoubleTap: _handleDoubleTap,
      child: InteractiveViewer(
        transformationController: _transform,
        minScale: 1,
        maxScale: 5,
        child: Center(
          child: HashImage(hash: widget.hash, fit: BoxFit.contain),
        ),
      ),
    );
  }
}
