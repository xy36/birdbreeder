import 'dart:async';

import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

/// Wrap a widget with [Overlay].
Widget wrapWithOverlay({
  required WidgetBuilder builder,
  Clip clipBehavior = Clip.hardEdge,
}) {
  return Overlay(
    initialEntries: [OverlayEntry(builder: builder)],
    clipBehavior: clipBehavior,
  );
}

/// Context extension for flash.
extension FlashShortcuts on BuildContext {
  Future<T?> showFlash<T>({
    Duration transitionDuration = const Duration(milliseconds: 250),
    Duration reverseTransitionDuration = const Duration(milliseconds: 200),
    Color? barrierColor,
    double? barrierBlur,
    bool barrierDismissible = false,
    FutureOr<bool> Function()? onBarrierTap,
    Curve barrierCurve = Curves.ease,
    bool persistent = true,
    VoidCallback? onRemoveFromRoute,
    Duration? duration,
    required FlashBuilder<T> builder,
    Completer<T>? dismissCompleter,
  }) {
    final controller = DefaultFlashController<T>(
      this,
      transitionDuration: transitionDuration,
      reverseTransitionDuration: reverseTransitionDuration,
      barrierColor: barrierColor,
      barrierBlur: barrierBlur,
      barrierDismissible: barrierDismissible,
      onBarrierTap: onBarrierTap,
      barrierCurve: barrierCurve,
      persistent: persistent,
      duration: duration,
      builder: builder,
    );
    dismissCompleter?.future.then(controller.dismiss);
    return controller.show();
  }
}

/// Context extension for flash bar.
extension FlashBarShortcuts on BuildContext {
  /// Show an information flash bar.
  Future<T?> showInfoBar<T>({
    required Widget content,
    FlashPosition position = FlashPosition.bottom,
    Duration duration = const Duration(seconds: 3),
    Icon? icon = const Icon(Icons.info_outline),
    Color? indicatorColor = const Color(0xFF64B5F6),
    FlashBuilder<T>? primaryActionBuilder,
  }) {
    return showFlash<T>(
      context: this,
      duration: duration,
      builder: (context, controller) {
        return FlashBar(
          controller: controller,
          position: position,
          indicatorColor: indicatorColor,
          icon: icon,
          content: content,
          primaryAction: primaryActionBuilder?.call(context, controller),
        );
      },
    );
  }

  /// Show a success flash bar.
  Future<T?> showSuccessBar<T>({
    required Widget content,
    FlashPosition position = FlashPosition.bottom,
    Duration duration = const Duration(seconds: 3),
    Icon? icon = const Icon(Icons.check_circle_outline),
    Color? indicatorColor = const Color(0xFF81C784),
    FlashBuilder<T>? primaryActionBuilder,
  }) {
    return showFlash<T>(
      context: this,
      duration: duration,
      builder: (context, controller) {
        return FlashBar(
          controller: controller,
          position: position,
          indicatorColor: indicatorColor,
          icon: icon,
          content: content,
          primaryAction: primaryActionBuilder?.call(context, controller),
        );
      },
    );
  }

  /// Show a error flash bar.
  Future<T?> showErrorBar<T>({
    required Widget content,
    FlashPosition position = FlashPosition.bottom,
    Duration duration = const Duration(seconds: 3),
    Icon? icon = const Icon(Icons.error_outline),
    Color? indicatorColor = const Color(0xFFE57373),
    FlashBuilder<T>? primaryActionBuilder,
  }) {
    return showFlash<T>(
      context: this,
      duration: duration,
      builder: (context, controller) {
        return FlashBar(
          controller: controller,
          position: position,
          indicatorColor: indicatorColor,
          icon: icon,
          content: content,
          primaryAction: primaryActionBuilder?.call(context, controller),
        );
      },
    );
  }
}
