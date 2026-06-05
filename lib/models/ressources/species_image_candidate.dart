import 'package:birdbreeder/services/species_image_search_service.dart' show SpeciesImageSearchService;

/// Single image suggestion returned by [SpeciesImageSearchService].
class SpeciesImageCandidate {
  const SpeciesImageCandidate({
    required this.title,
    required this.thumbnailUrl,
    this.extract,
  });

  /// Article title (used for de-duplication and display).
  final String title;

  /// Direct image URL ready for `CachedNetworkImage`.
  final String thumbnailUrl;

  /// Optional short description text.
  final String? extract;
}
