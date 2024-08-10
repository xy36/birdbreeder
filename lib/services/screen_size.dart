import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

enum ScreenSize {
  /// Extra small devices (smarterwatches, 600px and down)
  xs(0, 600),

  /// Small devices (portrait tablets and large phones, 600px and up)
  sm(601, 960),

  /// Medium devices (landscape tablets, 960px and up)
  md(961, 1200),

  /// Large devices (laptops/desktops, 1200px and up)
  lg(1201, 1920),

  /// Extra large devices (large laptops and desktops, 1920px and up)
  xl(1921, 10000);

  const ScreenSize(this.minWidth, this.maxWidth);

  /// The minimum width is inclusive
  final double minWidth;

  /// The maximum width is exclusive
  final double maxWidth;

  bool isBetween(double value) {
    return value >= minWidth && value < maxWidth;
  }

  /// Returns a list of all breakpoints
  static List<Breakpoint> getBreakpoints() => ScreenSize.values
      .map(
        (e) => e.getBreakpoint(),
      )
      .toList();

  /// Returns the [Breakpoint] for this [ScreenSize]
  Breakpoint getBreakpoint() =>
      Breakpoint(start: minWidth, end: maxWidth, name: name);

  /// Returns the [ScreenSize] for the current context
  static ScreenSize getScreenSize(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    //TODO; what is the default Screensize?
    return ScreenSize.values
            .firstWhereOrNull((element) => element.isBetween(width)) ??
        ScreenSize.lg;
  }

  double get hPaddingSmall => switch (this) {
        ScreenSize.xs => 8.0,
        ScreenSize.sm => 16.0,
        ScreenSize.md => 24.0,
        ScreenSize.lg => 32.0,
        ScreenSize.xl => 48.0,
      };

  double get vPaddingSmall => switch (this) {
        ScreenSize.xs => 8.0,
        ScreenSize.sm => 16.0,
        ScreenSize.md => 24.0,
        ScreenSize.lg => 32.0,
        ScreenSize.xl => 48.0,
      };

  double get hPaddingMedium => switch (this) {
        ScreenSize.xs => 16.0,
        ScreenSize.sm => 24.0,
        ScreenSize.md => 32.0,
        ScreenSize.lg => 40.0,
        ScreenSize.xl => 48.0,
      };

  double get vPaddingMedium => switch (this) {
        ScreenSize.xs => 16.0,
        ScreenSize.sm => 24.0,
        ScreenSize.md => 32.0,
        ScreenSize.lg => 40.0,
        ScreenSize.xl => 48.0,
      };

  double get hPaddingLarge => switch (this) {
        ScreenSize.xs => 24.0,
        ScreenSize.sm => 32.0,
        ScreenSize.md => 48.0,
        ScreenSize.lg => 64.0,
        ScreenSize.xl => 82.0,
      };

  double get vPaddingLarge => switch (this) {
        ScreenSize.xs => 24.0,
        ScreenSize.sm => 32.0,
        ScreenSize.md => 48.0,
        ScreenSize.lg => 64.0,
        ScreenSize.xl => 82.0,
      };

  /// Returns true if the current ScreenSize is [ScreenSize.xs] or [ScreenSize.sm]
  static bool isMobileOrTabletPortrait(BuildContext context) {
    return ScreenSize.getScreenSize(context).isXs() ||
        ScreenSize.getScreenSize(context).isSm();
  }

  /// Returns true if the current ScreenSize is [ScreenSize.xs]
  bool isXs() => this == xs;

  /// Returns true if the current ScreenSize is [ScreenSize.sm]
  bool isSm() => this == sm;

  /// Returns true if the current ScreenSize is [ScreenSize.md]
  bool isMd() => this == md;

  /// Returns true if the current ScreenSize is [ScreenSize.lg]
  bool isLg() => this == lg;

  /// Returns true if the current ScreenSize is [ScreenSize.xl]
  bool isXl() => this == xl;
}
