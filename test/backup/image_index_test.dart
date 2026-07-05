import 'dart:convert';
import 'dart:typed_data';

import 'package:birdbreeder/services/backup/cloud/image_index.dart';
import 'package:flutter_test/flutter_test.dart';

Uint8List utf8Bytes(String s) => Uint8List.fromList(utf8.encode(s));

void main() {
  group('ImageIndex', () {
    test('round-trips hashes through bytes', () {
      const index = ImageIndex({'aaa', 'bbb'});
      final decoded = ImageIndex.fromBytes(index.toBytes());
      expect(decoded.hashes, {'aaa', 'bbb'});
    });

    test('null / empty bytes yield an empty index', () {
      expect(ImageIndex.fromBytes(null).hashes, isEmpty);
      expect(ImageIndex.fromBytes(Uint8List(0)).hashes, isEmpty);
    });

    test('corrupt or unexpected JSON yields an empty index', () {
      expect(ImageIndex.fromBytes(utf8Bytes('not json')).hashes, isEmpty);
      expect(ImageIndex.fromBytes(utf8Bytes('[1,2,3]')).hashes, isEmpty);
      expect(
        ImageIndex.fromBytes(utf8Bytes('{"hashes":"nope"}')).hashes,
        isEmpty,
      );
    });

    test('non-string entries are filtered out', () {
      expect(
        ImageIndex.fromBytes(utf8Bytes('{"hashes":["ok",1,null]}')).hashes,
        {'ok'},
      );
    });

    test('withAll unions without duplicates', () {
      final merged = const ImageIndex({'a'}).withAll({'a', 'b'});
      expect(merged.hashes, {'a', 'b'});
    });
  });
}
