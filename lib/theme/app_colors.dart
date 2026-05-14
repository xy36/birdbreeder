import 'package:flutter/material.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.income,
    required this.expense,
    required this.sexMale,
    required this.sexFemale,
    required this.sexUnknown,
    required this.statusSuccess,
    required this.statusWarning,
    required this.statusError,
    required this.statusInfo,
  });

  final Color income;
  final Color expense;
  final Color sexMale;
  final Color sexFemale;
  final Color sexUnknown;
  final Color statusSuccess;
  final Color statusWarning;
  final Color statusError;
  final Color statusInfo;

  static const AppColors light = AppColors(
    income: Color(0xff2e7d32),
    expense: Color(0xffc62828),
    sexMale: Color(0xff1976d2),
    sexFemale: Color(0xffd81b60),
    sexUnknown: Color(0xff616161),
    statusSuccess: Color(0xff2e7d32),
    statusWarning: Color(0xffed6c02),
    statusError: Color(0xffc62828),
    statusInfo: Color(0xff0277bd),
  );

  static const AppColors dark = AppColors(
    income: Color(0xff81c784),
    expense: Color(0xffef9a9a),
    sexMale: Color(0xff64b5f6),
    sexFemale: Color(0xfff48fb1),
    sexUnknown: Color(0xff9e9e9e),
    statusSuccess: Color(0xff81c784),
    statusWarning: Color(0xffffb74d),
    statusError: Color(0xffef9a9a),
    statusInfo: Color(0xff4fc3f7),
  );

  @override
  AppColors copyWith({
    Color? income,
    Color? expense,
    Color? sexMale,
    Color? sexFemale,
    Color? sexUnknown,
    Color? statusSuccess,
    Color? statusWarning,
    Color? statusError,
    Color? statusInfo,
  }) {
    return AppColors(
      income: income ?? this.income,
      expense: expense ?? this.expense,
      sexMale: sexMale ?? this.sexMale,
      sexFemale: sexFemale ?? this.sexFemale,
      sexUnknown: sexUnknown ?? this.sexUnknown,
      statusSuccess: statusSuccess ?? this.statusSuccess,
      statusWarning: statusWarning ?? this.statusWarning,
      statusError: statusError ?? this.statusError,
      statusInfo: statusInfo ?? this.statusInfo,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      income: Color.lerp(income, other.income, t)!,
      expense: Color.lerp(expense, other.expense, t)!,
      sexMale: Color.lerp(sexMale, other.sexMale, t)!,
      sexFemale: Color.lerp(sexFemale, other.sexFemale, t)!,
      sexUnknown: Color.lerp(sexUnknown, other.sexUnknown, t)!,
      statusSuccess: Color.lerp(statusSuccess, other.statusSuccess, t)!,
      statusWarning: Color.lerp(statusWarning, other.statusWarning, t)!,
      statusError: Color.lerp(statusError, other.statusError, t)!,
      statusInfo: Color.lerp(statusInfo, other.statusInfo, t)!,
    );
  }
}

extension AppColorsX on BuildContext {
  AppColors get appColors =>
      Theme.of(this).extension<AppColors>() ?? AppColors.light;
}
