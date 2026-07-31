import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/widgets/image_lightbox.dart';
import 'package:cached_network_image/cached_network_image.dart';

/// Avatar for a Species. Shows the network image if `imageUrl` is set, else
/// falls back to 2-letter initials of the species name in a tinted square.
class SpeciesAvatar extends StatelessWidget {
  const SpeciesAvatar({
    required this.imageUrl,
    required this.name,
    this.size = 44,
    this.openLightbox = false,
    super.key,
  });

  final String? imageUrl;
  final String? name;
  final double size;

  /// Whether tapping the avatar opens the image fullscreen.
  ///
  /// Off by default: in lists the row already owns the tap, and stealing it
  /// would break navigating into the species.
  final bool openLightbox;

  static String initialsFor(String? name) {
    final n = (name ?? '').trim();
    if (n.isEmpty) return '?';
    final parts = n.split(RegExp(r'\s+')).where((s) => s.isNotEmpty).toList();
    if (parts.length == 1) {
      final p = parts.first;
      return (p.length >= 2 ? p.substring(0, 2) : p).toUpperCase();
    }
    return (parts.first[0] + parts[1][0]).toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final radius = BorderRadius.circular(size * 0.27);
    final url = imageUrl;
    if (url != null && url.isNotEmpty) {
      final image = ClipRRect(
        borderRadius: radius,
        child: CachedNetworkImage(
          imageUrl: url,
          width: size,
          height: size,
          fit: BoxFit.cover,
          placeholder: (_, __) => Container(
            width: size,
            height: size,
            color: cs.tertiaryContainer,
          ),
          errorWidget: (_, __, ___) => _initialsFallback(cs),
        ),
      );
      if (!openLightbox) return image;
      return GestureDetector(
        onTap: () => ImageLightbox.showUrls(
          context,
          urls: [url],
          initialIndex: 0,
        ),
        child: image,
      );
    }
    return _initialsFallback(cs);
  }

  Widget _initialsFallback(ColorScheme cs) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: cs.tertiaryContainer,
        borderRadius: BorderRadius.circular(size * 0.27),
      ),
      alignment: Alignment.center,
      child: Text(
        initialsFor(name),
        style: TextStyle(
          color: cs.onTertiaryContainer,
          fontWeight: FontWeight.w700,
          fontSize: size * 0.4,
        ),
      ),
    );
  }
}
