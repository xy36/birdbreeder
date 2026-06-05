import 'dart:convert';

import 'package:birdbreeder/models/ressources/species_image_candidate.dart';
import 'package:birdbreeder/services/logging_service.dart';
import 'package:http/http.dart' as http;

/// Searches Wikipedia for thumbnail images matching a species name.
///
/// Strategy: queries `de.wikipedia.org` with `name`, optionally combines results
/// from the latin name and falls back to `en.wikipedia.org` if not enough hits.
class SpeciesImageSearchService {
  SpeciesImageSearchService(this._client, this._logger);

  final http.Client _client;
  final LoggingService _logger;

  static const _minResults = 3;
  static const _gsrLimit = 8;
  static const _thumbSize = 400;

  Future<List<SpeciesImageCandidate>> search({
    required String query,
    String? latName,
  }) async {
    final results = <String, SpeciesImageCandidate>{};

    Future<void> addFrom(String host, String q) async {
      if (q.trim().isEmpty) return;
      try {
        final fetched = await _query(host, q);
        for (final c in fetched) {
          results.putIfAbsent(c.title, () => c);
        }
      } on Object catch (e, st) {
        _logger.logger.w(
          'SpeciesImageSearch failed: host=$host q=$q $e',
          stackTrace: st,
        );
      }
    }

    await addFrom('de.wikipedia.org', query);
    if (results.length < _minResults && latName != null && latName.isNotEmpty) {
      await addFrom('de.wikipedia.org', latName);
    }
    if (results.length < _minResults) {
      await addFrom('en.wikipedia.org', query);
    }
    if (results.length < _minResults && latName != null && latName.isNotEmpty) {
      await addFrom('en.wikipedia.org', latName);
    }
    return results.values.toList(growable: false);
  }

  Future<List<SpeciesImageCandidate>> _query(String host, String q) async {
    final uri = Uri.https(host, '/w/api.php', {
      'action': 'query',
      'format': 'json',
      'prop': 'pageimages|pageterms',
      'piprop': 'thumbnail',
      'pithumbsize': '$_thumbSize',
      'generator': 'search',
      'gsrsearch': q,
      'gsrlimit': '$_gsrLimit',
    });

    final res = await _client.get(uri);
    if (res.statusCode != 200) return const [];

    final body = jsonDecode(res.body) as Map<String, dynamic>;
    final pages = (body['query'] as Map<String, dynamic>?)?['pages']
        as Map<String, dynamic>?;
    if (pages == null) return const [];

    final out = <SpeciesImageCandidate>[];
    for (final page in pages.values) {
      if (page is! Map<String, dynamic>) continue;
      final thumb = page['thumbnail'] as Map<String, dynamic>?;
      final src = thumb?['source'] as String?;
      if (src == null || src.isEmpty) continue;
      final title = page['title'] as String? ?? '?';
      final terms = page['terms'] as Map<String, dynamic>?;
      final description = (terms?['description'] as List?)?.firstOrNull as String?;
      out.add(
        SpeciesImageCandidate(
          title: title,
          thumbnailUrl: src,
          extract: description,
        ),
      );
    }
    return out;
  }
}
