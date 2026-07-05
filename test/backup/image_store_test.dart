import 'dart:io';
import 'dart:typed_data';

import 'package:birdbreeder/services/images/image_store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

/// Routes `getApplicationDocumentsDirectory` to a real temp dir for tests.
class _FakePathProvider extends PathProviderPlatform
    with MockPlatformInterfaceMixin {
  _FakePathProvider(this.root);
  final String root;

  @override
  Future<String?> getApplicationDocumentsPath() async => root;
}

void main() {
  late Directory tempDir;

  setUp(() async {
    tempDir = await Directory.systemTemp.createTemp('image_store_test');
    PathProviderPlatform.instance = _FakePathProvider(tempDir.path);
  });

  tearDown(() async {
    if (tempDir.existsSync()) await tempDir.delete(recursive: true);
  });

  Uint8List bytes(String s) => Uint8List.fromList(s.codeUnits);

  group('ImageStore', () {
    test('hashBytes is deterministic', () {
      expect(
        ImageStore.hashBytes(bytes('hello')),
        ImageStore.hashBytes(bytes('hello')),
      );
      expect(
        ImageStore.hashBytes(bytes('a')),
        isNot(ImageStore.hashBytes(bytes('b'))),
      );
    });

    test('put is idempotent and dedups identical bytes', () async {
      final h1 = await ImageStore.put(bytes('same'));
      final h2 = await ImageStore.put(bytes('same'));

      expect(h1, h2);
      expect(await ImageStore.list(), {h1});
    });

    test('put stores under the content hash and get resolves it', () async {
      final hash = await ImageStore.put(bytes('content'));
      expect(hash, ImageStore.hashBytes(bytes('content')));
      expect(await ImageStore.exists(hash), isTrue);
      expect(await ImageStore.get(hash), isNotNull);
    });

    test('gc keeps referenced blobs and deletes orphans past the grace window',
        () async {
      final keep = await ImageStore.put(bytes('keep'));
      final drop = await ImageStore.put(bytes('drop'));

      final deleted = await ImageStore.gc({keep}, grace: Duration.zero);

      expect(deleted, 1);
      expect(await ImageStore.exists(keep), isTrue);
      expect(await ImageStore.exists(drop), isFalse);
    });

    test('gc spares fresh orphans inside the grace window', () async {
      final fresh = await ImageStore.put(bytes('fresh'));

      final deleted = await ImageStore.gc(const {});

      expect(deleted, 0);
      expect(await ImageStore.exists(fresh), isTrue);
    });
  });
}
