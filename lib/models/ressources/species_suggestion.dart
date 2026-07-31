/// Single species suggestion returned by `SpeciesLookupService`.
class SpeciesSuggestion {
  const SpeciesSuggestion({
    required this.commonName,
    required this.scientificName,
    required this.endangered,
    this.imageUrl,
  });

  /// Localized common name, e.g. "Schönsittich".
  final String commonName;

  /// Scientific name, e.g. "Neophema pulchella".
  final String scientificName;

  /// Whether the IUCN Red List rates the species vulnerable or worse.
  final bool endangered;

  /// Representative photo, ready for `CachedNetworkImage`.
  final String? imageUrl;
}
