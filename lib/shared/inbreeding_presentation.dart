import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/genetics/inbreeding_calculator.dart';
import 'package:birdbreeder/theme/app_colors.dart';

/// UI helpers shared by the pedigree view and the breeding-pair warning for
/// presenting an [InbreedingSeverity] / inbreeding coefficient.
extension InbreedingSeverityPresentation on InbreedingSeverity {
  /// Status color for this severity.
  Color colorOf(BuildContext context) {
    final colors = context.appColors;
    switch (this) {
      case InbreedingSeverity.none:
        return colors.statusSuccess;
      case InbreedingSeverity.low:
      case InbreedingSeverity.elevated:
        return colors.statusWarning;
      case InbreedingSeverity.high:
        return colors.statusError;
    }
  }

  /// Localized label for this severity.
  String label(BuildContext context) {
    final tr = context.tr.inbreeding;
    switch (this) {
      case InbreedingSeverity.none:
        return tr.severity_none;
      case InbreedingSeverity.low:
        return tr.severity_low;
      case InbreedingSeverity.elevated:
        return tr.severity_elevated;
      case InbreedingSeverity.high:
        return tr.severity_high;
    }
  }
}

/// Formats a percentage (0..100) with up to two decimals, trailing zeros and a
/// dangling separator removed, e.g. 12.5 → "12.5 %", 25 → "25 %".
String formatInbreedingPercent(double percent) {
  final value = percent
      .toStringAsFixed(2)
      .replaceAll(RegExp(r'0+$'), '')
      .replaceAll(RegExp(r'\.$'), '');
  return '$value %';
}
