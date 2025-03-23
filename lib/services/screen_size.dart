import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

enum ScreenSize {
  /// Extra small devices (smarterwatches, 600px and down)
  xs(0, 600),

  /// Small devices (portrait tablets and large phones, 600px and up)
  sm(601, 960),

  /// Medium devices (landscape tablets, 960px and up)
  md(961, 1440),

  /// Large devices (large laptops and desktops, 1920px and up)
  lg(1440, 10000);

  const ScreenSize(this.minWidth, this.maxWidth);

  /// The minimum width is inclusive
  final double minWidth;

  /// The maximum width is exclusive
  final double maxWidth;

  bool isBetween(double value) {
    return value >= minWidth && value < maxWidth;
  }

  /// Returns the [ScreenSize] for the current context
  static ScreenSize getScreenSize(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ScreenSize.values
            .firstWhereOrNull((element) => element.isBetween(width)) ??
        ScreenSize.xs;
  }

  double get drawerDialogInsetPadding => switch (this) {
        ScreenSize.xs => 8.0,
        _ => 16.0,
      };

  /// Returns true if the current ScreenSize is [ScreenSize.xs]
  bool get isMobile => this == xs;

  /// Returns true if the current ScreenSize is [ScreenSize.sm]
  bool isTabletPortrait() => this == sm;

  /// Returns true if the current ScreenSize is [ScreenSize.md]
  bool isTabletLandscape() => this == md;

  /// Returns true if the current ScreenSize is [ScreenSize.lg]
  bool isDesktop() => this == lg;
}

extension ScreenSizeExtension on BuildContext {
  ScreenSize get screenSize => ScreenSize.getScreenSize(this);

  /// Returns a response value based on the current screen size
  /// If the current screen size is [ScreenSize.xs] the [mobile] value is returned
  /// If the current screen size is [ScreenSize.sm] the [tabletPortrait] value is returned
  /// If the current screen size is [ScreenSize.md] the [tabletLandscape] value is returned
  /// If the current screen size is [ScreenSize.lg] the [desktop] value is returned
  /// Fallback value is [mobile]
  T responsiveValue<T>({
    required T mobile,
    required T? tabletPortrait,
    required T? tabletLandscape,
    required T? desktop,
  }) {
    return switch (screenSize) {
      ScreenSize.xs => mobile,
      ScreenSize.sm => tabletPortrait ?? mobile,
      ScreenSize.md => tabletLandscape ?? mobile,
      ScreenSize.lg => desktop ?? mobile,
    };
  }

  /// Returns a response value based on the current screen size
  /// All screen sizes greater than [ScreenSize.xs] will return the [greater] value
  T responsiveValueMobileAndGreater<T>({
    required T mobile,
    required T greater,
  }) =>
      responsiveValue(
        mobile: mobile,
        tabletPortrait: greater,
        tabletLandscape: greater,
        desktop: greater,
      );

  /// Returns a response value based on the current screen size
  /// All screen sizes greater than [ScreenSize.sm] will return the [greater] value
  T responsiveValueTabletPortraitAndGreater<T>({
    required T tabletPortrait,
    required T greater,
  }) =>
      responsiveValue(
        mobile: tabletPortrait,
        tabletPortrait: tabletPortrait,
        tabletLandscape: greater,
        desktop: greater,
      );

  /// Returns a response value based on the current screen size
  /// All screen sizes greater than [ScreenSize.md] will return the [greater] value
  T responsiveValueTabletLandscapeAndGreater<T>({
    required T tabletLandscape,
    required T greater,
  }) =>
      responsiveValue(
        mobile: tabletLandscape,
        tabletPortrait: tabletLandscape,
        tabletLandscape: tabletLandscape,
        desktop: greater,
      );
}
