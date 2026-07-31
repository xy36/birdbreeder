import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/hash_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// Fullscreen image viewer: swipe left/right through a set of images, pinch
/// to zoom.
///
/// Every screen that displays an image should make it openable here, so
/// tapping a picture behaves the same everywhere. Open via
/// [ImageLightbox.show] for local blobs or [ImageLightbox.showUrls] for
/// remote ones.
class ImageLightbox extends StatefulWidget {
  const ImageLightbox({
    required this.images,
    required this.initialIndex,
    this.network = false,
    super.key,
  });

  /// Local `ImageStore` hashes, or remote URLs when [network] is set.
  final List<String> images;

  final int initialIndex;

  final bool network;

  /// Opens the lightbox on locally stored image blobs.
  static Future<void> show(
    BuildContext context, {
    required List<String> hashes,
    required int initialIndex,
  }) =>
      _push(context, images: hashes, initialIndex: initialIndex);

  /// Opens the lightbox on remote images, e.g. a species photo.
  static Future<void> showUrls(
    BuildContext context, {
    required List<String> urls,
    required int initialIndex,
  }) =>
      _push(
        context,
        images: urls,
        initialIndex: initialIndex,
        network: true,
      );

  static Future<void> _push(
    BuildContext context, {
    required List<String> images,
    required int initialIndex,
    bool network = false,
  }) {
    return Navigator.of(context).push(
      PageRouteBuilder<void>(
        opaque: false,
        barrierColor: Colors.black,
        pageBuilder: (_, __, ___) => ImageLightbox(
          images: images,
          initialIndex: initialIndex,
          network: network,
        ),
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
            itemCount: widget.images.length,
            onPageChanged: (i) => setState(() => _index = i),
            itemBuilder: (context, i) => _ZoomableImage(
              image: widget.images[i],
              network: widget.network,
            ),
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
          if (widget.images.length > 1)
            SafeArea(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    '${_index + 1} / ${widget.images.length}',
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
  const _ZoomableImage({required this.image, required this.network});

  /// An `ImageStore` hash, or a URL when [network] is set.
  final String image;

  final bool network;

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
          child: widget.network
              ? CachedNetworkImage(
                  imageUrl: widget.image,
                  fit: BoxFit.contain,
                  placeholder: (_, __) => const Center(
                    child: CircularProgressIndicator(color: Colors.white),
                  ),
                  errorWidget: (_, __, ___) => const Icon(
                    AppIcons.brokenImageOutlined,
                    color: Colors.white,
                    size: 48,
                  ),
                )
              : HashImage(hash: widget.image, fit: BoxFit.contain),
        ),
      ),
    );
  }
}
