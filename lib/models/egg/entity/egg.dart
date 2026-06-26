import 'package:birdbreeder/core/extensions/build_context_extensions.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/theme/app_colors.dart';
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
  inStock,
  dead,
  unknown;

  /// Base color of the status, used for the chip text/border and the matching
  /// milestone date. Lifecycle progression is blue→green→dark-green, terminal
  /// states (unfertilized/dead) share red, and the neutral "laid" baseline is
  /// muted so progressed states stand out.
  Color chipColor(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final status = context.appColors;
    return switch (this) {
      EggStatus.laid => scheme.onSurfaceVariant,
      EggStatus.fertilized => status.statusInfo,
      EggStatus.hatched => status.statusSuccess,
      EggStatus.fledged => _darken(status.statusSuccess),
      EggStatus.inStock => status.statusInfo,
      EggStatus.unfertilized => status.statusError,
      EggStatus.dead => status.statusError,
      EggStatus.unknown => scheme.onSurfaceVariant,
    };
  }

  (Color background, Color foreground, IconData icon, String label)
      getDisplayData(BuildContext context) {
    final base = chipColor(context);
    final (icon, label) = switch (this) {
      EggStatus.laid => (AppIcons.eggStatusLaid, context.tr.egg.status.laid),
      EggStatus.fertilized => (
          AppIcons.eggStatusFertilized,
          context.tr.egg.status.fertilized,
        ),
      EggStatus.unfertilized => (
          AppIcons.eggStatusUnfertilized,
          context.tr.egg.status.unfertilized,
        ),
      EggStatus.dead => (
          AppIcons.eggStatusDead,
          context.tr.egg.status.dead,
        ),
      EggStatus.hatched => (
          AppIcons.eggStatusHatched,
          context.tr.egg.status.hatched,
        ),
      EggStatus.fledged => (
          AppIcons.eggStatusFledged,
          context.tr.egg.status.fledged,
        ),
      EggStatus.inStock => (
          AppIcons.eggStatusInStock,
          context.tr.egg.status.in_stock,
        ),
      EggStatus.unknown => (
          AppIcons.eggStatusUnknown,
          context.tr.egg.status.unknown,
        ),
    };
    return (base.withValues(alpha: 0.15), base, icon, label);
  }
}

/// Darkens [color] toward black, used to distinguish "fledged" from "hatched".
Color _darken(Color color) =>
    Color.alphaBlend(Colors.black.withValues(alpha: 0.3), color);

@freezed
abstract class Egg with _$Egg {
  const factory Egg({
    required String id,
    required String broodId,
    required int number,
    required DateTime laidAt,
    DateTime? hatchedAt,
    DateTime? fertilizedAt,
    DateTime? unfertilizedAt,
    DateTime? fledgedAt,
    DateTime? diedAt,
    @Default(EggStatus.laid) EggStatus status,
    String? ringnumber,
    String? colorId,
    String? cageId,
    String? speciesId,
    String? birdId,
    String? notes,
    DateTime? created,
    DateTime? updated,
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
