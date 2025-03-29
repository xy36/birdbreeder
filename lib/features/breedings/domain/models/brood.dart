// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'brood.freezed.dart';

@freezed
class Brood with _$Brood {
  factory Brood({
    required String id,
    required DateTime? start,
    required DateTime? end,
    required String? notes,
    required String? cage,
    required List<String>? children,
  }) = _Brood;

  factory Brood.create() => Brood(
        id: '',
        start: null,
        end: null,
        notes: null,
        cage: null,
        children: null,
      );
}
