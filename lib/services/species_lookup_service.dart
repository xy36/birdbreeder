import 'dart:convert';

import 'package:birdbreeder/models/ressources/species_suggestion.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:http/http.dart' as http;

/// Suggests bird species while the breeder types a name.
///
/// Queries the iNaturalist taxa autocomplete (no API key required) restricted
/// to birds, so "Schönsit" resolves to "Schönsittich" with its scientific
/// name, a photo and the IUCN conservation status in a single request.
///
/// The common names come back in the language the caller passes, so the
/// suggestions match whatever the breeder set the app to.
class SpeciesLookupService {
  SpeciesLookupService(this._client, this._logger);

  final http.Client _client;
  final LoggingService _logger;

  /// iNaturalist taxon id of the class Aves.
  static const _birdsTaxonId = '3';

  static const _perPage = '8';

  /// IUCN codes counted as endangered: vulnerable or worse. Least-concern
  /// species usually carry no status at all in the response.
  static const _endangeredStatuses = {'vu', 'en', 'cr', 'ew', 'ex'};

  /// Species suggestions for [query], best matches first.
  ///
  /// [languageCode] is the app's current language, e.g. `de` or `nl`; it
  /// selects which common names iNaturalist returns. Unknown codes simply
  /// yield scientific names.
  ///
  /// Returns an empty list for short queries and on any network or parse
  /// error — suggestions are a convenience, never a blocker for typing a
  /// species by hand.
  Future<List<SpeciesSuggestion>> suggest(
    String query, {
    required String languageCode,
  }) async {
    final trimmed = query.trim();
    if (trimmed.length < 3) return const [];

    try {
      final uri = Uri.https('api.inaturalist.org', '/v1/taxa/autocomplete', {
        'q': trimmed,
        'locale': languageCode,
        'taxon_id': _birdsTaxonId,
        'per_page': _perPage,
      });
      final response = await _client.get(uri);
      if (response.statusCode != 200) {
        _logger.logger.w('SpeciesLookup failed: HTTP ${response.statusCode}');
        return const [];
      }

      final body = jsonDecode(response.body) as Map<String, dynamic>;
      final results = (body['results'] as List<dynamic>? ?? [])
          .whereType<Map<String, dynamic>>();

      return [
        for (final taxon in results)
          if (taxon['rank'] == 'species' && taxon['name'] is String)
            _toSuggestion(taxon),
      ];
    } on Object catch (e, st) {
      _logger.logger.w('SpeciesLookup failed: q=$trimmed $e', stackTrace: st);
      return const [];
    }
  }

  /// Egg incubation period in days for [scientificName], or null when
  /// Wikidata has no value for it.
  ///
  /// A second request rather than part of [suggest]: only about a twentieth
  /// of bird taxa carry `P7770`, so this runs once for the species the
  /// breeder actually picked instead of for every keystroke's worth of hits.
  Future<int?> incubationDays(String scientificName) async {
    final name = scientificName.trim();
    if (name.isEmpty) return null;

    try {
      // Escaped for the SPARQL string literal; a quote or backslash in the
      // name would otherwise break the query.
      final literal = name.replaceAll(r'\', r'\\').replaceAll('"', r'\"');
      final uri = Uri.https('query.wikidata.org', '/sparql', {
        'query': 'SELECT ?inc WHERE { ?t wdt:P225 "$literal" ; '
            'wdt:P7770 ?inc } LIMIT 1',
        'format': 'json',
      });
      final response = await _client.get(uri);
      if (response.statusCode != 200) {
        _logger.logger.w('Incubation lookup failed: ${response.statusCode}');
        return null;
      }

      final body = jsonDecode(response.body) as Map<String, dynamic>;
      final bindings = (body['results'] as Map<String, dynamic>?)?['bindings'];
      final first = (bindings as List<dynamic>?)?.firstOrNull;
      final raw = ((first as Map<String, dynamic>?)?['inc']
          as Map<String, dynamic>?)?['value'] as String?;
      if (raw == null) return null;

      final days = double.tryParse(raw)?.round();
      return (days != null && days > 0) ? days : null;
    } on Object catch (e, st) {
      _logger.logger.w('Incubation lookup failed: $name $e', stackTrace: st);
      return null;
    }
  }

  static SpeciesSuggestion _toSuggestion(Map<String, dynamic> taxon) {
    final scientificName = taxon['name'] as String;
    final commonName = taxon['preferred_common_name'] as String?;
    final status = ((taxon['conservation_status']
            as Map<String, dynamic>?)?['status'] as String?)
        ?.toLowerCase();
    final photo =
        (taxon['default_photo'] as Map<String, dynamic>?)?['medium_url'];

    return SpeciesSuggestion(
      commonName: commonName ?? scientificName,
      scientificName: scientificName,
      endangered: _endangeredStatuses.contains(status),
      imageUrl: photo is String && photo.isNotEmpty ? photo : null,
    );
  }
}
