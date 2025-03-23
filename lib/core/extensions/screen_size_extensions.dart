import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/services/screen_size.dart';

extension ScreenSizeExtensions on BuildContext {
  ScreenSize get screenSize => ScreenSize.getScreenSize(this);

  EdgeInsets getMenuPagePadding() {
    final horizontal = responsiveValueAll<double>(
      mobile: 12,
      tabletPortrait: 16,
      tabletLandscape: 24,
      desktop: 80,
    );
    final vertical = responsiveValueAll<double>(
      mobile: 12,
      tabletPortrait: 16,
      tabletLandscape: 24,
      desktop: 40,
    );

    return EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
  }

  /// Returns a response value based on the current screen size
  /// If the current screen size is [ScreenSize.xs] the [mobile] value is returned
  /// If the current screen size is [ScreenSize.sm] the [tabletPortrait] value is returned
  /// If the current screen size is [ScreenSize.md] or [ScreenSize.lg] the [tabletLandscape] value is returned
  /// If the current screen size is [ScreenSize.xl] the [desktop] value is returned
  T responsiveValueAll<T>({
    required T mobile,
    required T tabletPortrait,
    required T tabletLandscape,
    required T desktop,
  }) {
    return switch (screenSize) {
      ScreenSize.xs => mobile,
      ScreenSize.sm => tabletPortrait,
      ScreenSize.md => tabletLandscape,
      ScreenSize.lg => desktop,
    };
  }

  /// Returns a response value based on the current screen size
  /// All screen sizes greater than [ScreenSize.xs] will return the [greater] value
  T responsiveValueMobileAndGreater<T>({
    required T mobile,
    required T greater,
  }) =>
      responsiveValueAll<T>(
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
      responsiveValueAll(
        mobile: tabletPortrait,
        tabletPortrait: tabletPortrait,
        tabletLandscape: greater,
        desktop: greater,
      );

  /// Returns a response value based on the current screen size
  /// All screen sizes greater than [ScreenSize.sm] will return the [greater] value
  T responsiveValueMobileTabletPortraitAndGreater<T>({
    required T mobile,
    required T tabletPortrait,
    required T greater,
  }) =>
      responsiveValueAll(
        mobile: mobile,
        tabletPortrait: tabletPortrait,
        tabletLandscape: greater,
        desktop: greater,
      );

  /// Returns a response value based on the current screen size
  /// All screen sizes greater than [ScreenSize.sm] will return the [other] value
  T responsiveValueTabletPortraitAndOther<T>({
    required T tabletPortrait,
    required T other,
  }) =>
      responsiveValueAll(
        mobile: other,
        tabletPortrait: tabletPortrait,
        tabletLandscape: other,
        desktop: other,
      );

  /// Returns a response value based on the current screen size
  /// All screen sizes smaller than [ScreenSize.lg] will return the [smaller] value
  T responsiveValueDesktopAndSmaller<T>({
    required T desktop,
    required T smaller,
  }) =>
      responsiveValueAll(
        mobile: smaller,
        tabletPortrait: smaller,
        tabletLandscape: smaller,
        desktop: desktop,
      );

  /// Returns a response value based on the current screen size
  /// All screen sizes smaller than [ScreenSize.md] will return the [smaller] value
  T responsiveValueDesktopTabletLandscapeAndSmaller<T>({
    required T desktop,
    required T smaller,
    required T tabletLandscape,
  }) =>
      responsiveValueAll(
        mobile: smaller,
        tabletPortrait: smaller,
        tabletLandscape: tabletLandscape,
        desktop: desktop,
      );

  /// Returns a response value based on the current screen size
  /// All screen sizes greater than [ScreenSize.md] will return the [greater] value
  T responsiveValueTabletLandscapeAndGreater<T>({
    required T tabletLandscape,
    required T greater,
  }) =>
      responsiveValueAll(
        mobile: tabletLandscape,
        tabletPortrait: tabletLandscape,
        tabletLandscape: tabletLandscape,
        desktop: greater,
      );

  /// Returns true if the bottom menu should be shown for the current context
  bool showBottomMenu() {
    return screenSize == ScreenSize.xs || screenSize == ScreenSize.sm;
  }

  /// Returns true if the side menu should be shown for the current context
  bool showSideMenu() => !showBottomMenu();

  /// Returns true if the current screen size is [ScreenSize.xs]
  bool get isMobile => screenSize.isMobile;

  /// Returns true if the current screen size is not [ScreenSize.xs]
  bool get isNotMobile => !screenSize.isMobile;
}
