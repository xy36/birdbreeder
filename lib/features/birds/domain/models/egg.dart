import 'package:birdbreeder/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'egg.freezed.dart';
part 'egg.g.dart';

enum EggStatus {
  laid,
  fertilized,
  unfertilized,
  hatched,
  fledged,
  dead,
  unknown;

  (Color background, Color foreground, IconData icon, String label)
      getDisplayData(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return switch (this) {
      EggStatus.laid => (
          scheme.primaryFixed,
          scheme.onSurfaceVariant,
          Icons.egg_outlined,
          context.tr.egg.status.laid
        ),
      EggStatus.fertilized => (
          scheme.tertiaryContainer,
          scheme.onTertiaryContainer,
          Icons.close,
          context.tr.egg.status.fertilized
        ),
      EggStatus.unfertilized => (
          scheme.errorContainer,
          scheme.onErrorContainer,
          Icons.close,
          context.tr.egg.status.unfertilized
        ),
      EggStatus.dead => (
          scheme.errorContainer,
          scheme.onErrorContainer,
          Icons.close,
          context.tr.egg.status.dead,
        ),
      EggStatus.hatched => (
          scheme.primaryContainer,
          scheme.onPrimaryContainer,
          Icons.egg_outlined,
          context.tr.egg.status.hatched
        ),
      EggStatus.fledged => (
          scheme.primaryFixedDim,
          scheme.onPrimaryFixed,
          Icons.egg_outlined,
          context.tr.egg.status.fledged
        ),
      EggStatus.unknown => (
          scheme.surfaceContainerLow,
          scheme.onSurfaceVariant,
          Icons.help_outline,
          context.tr.egg.status.unknown
        ),
    };
  }
}

@freezed
class Egg with _$Egg {
  const factory Egg({
    required String id,
    required String broodId,
    required int number,
    required DateTime laidAt,
    DateTime? hatchedAt,
    DateTime? fledgedAt,
    @Default(EggStatus.laid) EggStatus status,
    String? ringnumber,
    String? colorId,
    String? cageId,
    String? speciesId,
    String? birdId,
    String? notes,
  }) = _Egg;

  factory Egg.create({
    required String broodId,
    required int number,
    required DateTime laidAt,
  }) {
    return Egg(
      id: '',
      broodId: broodId,
      number: number,
      laidAt: laidAt,
    );
  }

  factory Egg.fromJson(Map<String, dynamic> json) => _$EggFromJson(json);
}
