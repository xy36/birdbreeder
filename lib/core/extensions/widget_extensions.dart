import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';

extension WidgetBadgeExtension on Widget {
  /// Overlays a small notification badge (dot) on the top-right corner when [show] is true.
  Widget withNotificationBadge({
    required bool show,
    Color color = Colors.red,
    double size = 8,
    double top = 8,
    double right = 8,
  }) {
    if (!show) return this;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        this,
        Positioned(
          right: right,
          top: top,
          child: Semantics(
            // Improves accessibility for screen readers
            label: 'Notification',
            container: true,
            child: Container(
              width: size,
              height: size,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            ),
          ),
        ),
      ],
    );
  }
}

extension RefresherExtension on Widget {
  Widget withRefresher({
    required Future<void> Function() onRefresh,
  }) {
    return CustomRefreshIndicator(
      onRefresh: onRefresh,
      builder: (context, child, controller) => Stack(
        children: [
          child,
          if (controller.isLoading)
            const Center(
              child: CircularProgressIndicator(),
            ),
        ],
      ),
      child: this,
    );
  }
}
