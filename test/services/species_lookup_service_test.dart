import 'dart:convert';

import 'package:birdbreeder/services/logging_service.dart';
import 'package:birdbreeder/services/species_lookup_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

/// Shape of a real `api.inaturalist.org/v1/taxa/autocomplete` response,
/// reduced to the fields the service reads.
String _body(List<Map<String, dynamic>> results) =>
    jsonEncode({'total_results': results.length, 'results': results});

Map<String, dynamic> _taxon({
  required String name,
  String? commonName,
  String? rank = 'species',
  String? status,
  String? photoUrl,
}) =>
    {
      'name': name,
      'rank': rank,
      if (commonName != null) 'preferred_common_name': commonName,
      if (status != null)
        'conservation_status': {'status': status, 'authority': 'IUCN Red List'},
      if (photoUrl != null) 'default_photo': {'medium_url': photoUrl},
    };

SpeciesLookupService _service(http.Client client) =>
    SpeciesLookupService(client, LoggingService());

void main() {
  test('maps a suggestion with photo and endangered status', () async {
    final client = MockClient((request) async {
      expect(request.url.host, 'api.inaturalist.org');
      expect(request.url.queryParameters['q'], 'Graupapagei');
      expect(request.url.queryParameters['locale'], 'de');
      return http.Response(
        _body([
          _taxon(
            name: 'Psittacus erithacus',
            commonName: 'Graupapagei',
            status: 'EN',
            photoUrl: 'https://example.org/p.jpg',
          ),
        ]),
        200,
        headers: {'content-type': 'application/json'},
      );
    });

    final results =
        await _service(client).suggest('Graupapagei', languageCode: 'de');

    expect(results, hasLength(1));
    final suggestion = results.single;
    expect(suggestion.commonName, 'Graupapagei');
    expect(suggestion.scientificName, 'Psittacus erithacus');
    expect(suggestion.endangered, isTrue);
    expect(suggestion.imageUrl, 'https://example.org/p.jpg');
  });

  test('missing status means not endangered, name falls back to latin',
      () async {
    final client = MockClient(
      (_) async => http.Response(
        _body([_taxon(name: 'Neophema pulchella')]),
        200,
      ),
    );

    final results =
        await _service(client).suggest('Schönsittich', languageCode: 'de');

    expect(results.single.endangered, isFalse);
    expect(results.single.commonName, 'Neophema pulchella');
    expect(results.single.imageUrl, isNull);
  });

  test('drops non-species ranks', () async {
    final client = MockClient(
      (_) async => http.Response(
        _body([
          _taxon(name: 'Neophema', rank: 'genus'),
          _taxon(name: 'Neophema pulchella', commonName: 'Schönsittich'),
        ]),
        200,
      ),
    );

    final results =
        await _service(client).suggest('Schönsittich', languageCode: 'de');

    expect(results, hasLength(1));
    expect(results.single.scientificName, 'Neophema pulchella');
  });

  test('passes the app language through as the locale', () async {
    late Uri captured;
    final client = MockClient((request) async {
      captured = request.url;
      return http.Response(
        _body([_taxon(name: 'Serinus canaria', commonName: 'Kanarie')]),
        200,
      );
    });

    final results =
        await _service(client).suggest('Kanarie', languageCode: 'nl');

    expect(captured.queryParameters['locale'], 'nl');
    expect(results.single.commonName, 'Kanarie');
  });

  test('short queries do not hit the network', () async {
    var called = false;
    final client = MockClient((_) async {
      called = true;
      return http.Response(_body([]), 200);
    });

    final results = await _service(client).suggest('Sc', languageCode: 'de');

    expect(results, isEmpty);
    expect(called, isFalse);
  });

  group('incubationDays', () {
    String sparql(List<String> values) => jsonEncode({
          'results': {
            'bindings': [
              for (final v in values)
                {
                  'inc': {'type': 'literal', 'value': v},
                },
            ],
          },
        });

    test('reads the Wikidata value for a scientific name', () async {
      final client = MockClient((request) async {
        expect(request.url.host, 'query.wikidata.org');
        expect(request.url.queryParameters['query'], contains('P7770'));
        expect(
          request.url.queryParameters['query'],
          contains('"Nymphicus hollandicus"'),
        );
        return http.Response(sparql(['20']), 200);
      });

      expect(
        await _service(client).incubationDays('Nymphicus hollandicus'),
        20,
      );
    });

    test('rounds decimal values', () async {
      final client =
          MockClient((_) async => http.Response(sparql(['13.6']), 200));

      expect(await _service(client).incubationDays('Serinus canaria'), 14);
    });

    test('no binding means no data', () async {
      final client =
          MockClient((_) async => http.Response(sparql(const <String>[]), 200));

      expect(
        await _service(client).incubationDays('Melopsittacus undulatus'),
        isNull,
      );
    });

    test('escapes quotes so the query cannot break', () async {
      late Uri captured;
      final client = MockClient((request) async {
        captured = request.url;
        return http.Response(sparql(const <String>[]), 200);
      });

      await _service(client).incubationDays('Weird "name"');

      expect(captured.queryParameters['query'], contains(r'\"name\"'));
    });

    test('empty name, errors and non-200 yield null', () async {
      final failing = MockClient((_) async => throw Exception('offline'));
      final broken = MockClient((_) async => http.Response('not json', 200));
      final http500 = MockClient((_) async => http.Response('oops', 500));

      expect(await _service(failing).incubationDays('Serinus canaria'), isNull);
      expect(await _service(broken).incubationDays('Serinus canaria'), isNull);
      expect(await _service(http500).incubationDays('Serinus canaria'), isNull);
      expect(await _service(failing).incubationDays('  '), isNull);
    });
  });

  test('network errors and bad payloads yield an empty list', () async {
    final failing = MockClient((_) async => throw Exception('offline'));
    final broken = MockClient((_) async => http.Response('not json', 200));
    final http500 = MockClient((_) async => http.Response('oops', 500));

    for (final client in [failing, broken, http500]) {
      expect(
        await _service(client).suggest('Schönsittich', languageCode: 'de'),
        isEmpty,
      );
    }
  });
}
