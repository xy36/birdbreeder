import 'package:birdbreeder/common_imports.dart';
import 'package:cached_network_image/cached_network_image.dart';

/// Avatar for a Species. Shows the network image if `imageUrl` is set, else
/// falls back to 2-letter initials of the species name in a tinted square.
class SpeciesAvatar extends StatelessWidget {
  const SpeciesAvatar({
    required this.imageUrl,
    required this.name,
    this.size = 44,
    super.key,
  });

  final String? imageUrl;
  final String? name;
  final double size;

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
    if (imageUrl != null && imageUrl!.isNotEmpty) {
      return ClipRRect(
        borderRadius: radius,
        child: CachedNetworkImage(
          imageUrl: imageUrl!,
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
