import 'dart:async';

import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:flutter/material.dart';

/// App-wide SnackbarService
/// - Works without a BuildContext (global)
/// - Optional: pass a BuildContext for Theme/Locale
/// - Typed helpers: success/error/info/warning
/// - Queueing: shows snacks sequentially
/// - Dedupe: suppresses identical messages for a short time window
class SnackbarService {
  SnackbarService();

  /// Set on MaterialApp using `scaffoldMessengerKey: snackbarService.messengerKey`
  final GlobalKey<ScaffoldMessengerState> messengerKey =
      GlobalKey<ScaffoldMessengerState>();

  /// Queue in case multiple snacks are triggered in quick succession
  final _queue = StreamController<_SnackJob>(sync: true);
  bool _isShowing = false;

  /// dedupe cache
  DateTime? _lastShownAt;
  String? _lastShownKey;
  Duration dedupeWindow = const Duration(seconds: 2);

  void dispose() {
    _queue.close();
  }

  // ───────────────────────── Public API
  Future<void> show(
    String message, {
    SnackBarAction? action,
    Duration duration = const Duration(seconds: 3),
    SnackBarBehavior behavior = SnackBarBehavior.floating,
    EdgeInsetsGeometry? margin,
    SnackBarType type = SnackBarType.info,
    BuildContext? context,
  }) async {
    // Dedupe: gleiche Message + Typ innerhalb des Fensters suppress
    final now = DateTime.now();
    final key = '${type.name}::$message::${action?.label ?? ''}';
    if (_lastShownKey == key && _lastShownAt != null) {
      if (now.difference(_lastShownAt!) < dedupeWindow) {
        return; // suppress
      }
    }

    _lastShownKey = key;
    _lastShownAt = now;

    _queue.add(
      _SnackJob(
        message: message,
        action: action,
        duration: duration,
        behavior: behavior,
        margin: margin,
        type: type,
        context: context,
      ),
    );

    if (!_isShowing) {
      await _drainQueue();
    }
  }

  Future<void> showSuccess(String message, {BuildContext? context}) => show(
        message,
        type: SnackBarType.success,
        context: context,
      );
  Future<void> showInfo(String message, {BuildContext? context}) => show(
        message,
        context: context,
      );
  Future<void> showWarning(String message, {BuildContext? context}) => show(
        message,
        type: SnackBarType.warning,
        context: context,
      );
  Future<void> showError(String message, {BuildContext? context}) => show(
        message,
        type: SnackBarType.error,
        duration: const Duration(seconds: 5),
        context: context,
      );

  // Undo convenience
  Future<void> showUndo(
    String message, {
    required VoidCallback onUndo,
    BuildContext? context,
  }) =>
      show(
        message,
        action: SnackBarAction(label: 'Undo', onPressed: onUndo),
        context: context,
      );

  // ───────────────────────── Internals
  Future<void> _drainQueue() async {
    _isShowing = true;
    await for (final job in _queue.stream) {
      await _present(job);
    }
    _isShowing = false;
  }

  Future<void> _present(_SnackJob job) async {
    final messenger = messengerKey.currentState;
    if (messenger == null) return; // App not ready yet

    // Theme: if a context is provided, use its ColorScheme; otherwise fall back to the root
    final ctx = job.context ?? messenger.context;
    final scheme = Theme.of(ctx).colorScheme;

    final style = _styleFor(job.type, scheme);

    final snack = SnackBar(
      content: Row(
        children: [
          Icon(style.icon, color: style.fg),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              job.message,
              style: TextStyle(color: style.fg),
            ),
          ),
        ],
      ),
      action: job.action == null
          ? null
          : SnackBarAction(
              label: job.action!.label,
              onPressed: job.action!.onPressed,
              textColor: style.fg,
            ),
      duration: job.duration,
      behavior: job.behavior,
      backgroundColor: style.bg,
      margin: job.margin ?? const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    );

    // Clear existing first to avoid stacking floating snacks
    messenger.clearSnackBars();

    final completer = Completer<void>();
    unawaited(
      messenger.showSnackBar(snack).closed.then((_) => completer.complete()),
    );
    await completer.future;
  }

  _SnackStyle _styleFor(SnackBarType type, ColorScheme s) {
    switch (type) {
      case SnackBarType.success:
        return _SnackStyle(
          bg: s.tertiaryContainer,
          fg: s.onTertiaryContainer,
          icon: AppIcons.snackSuccess,
        );
      case SnackBarType.info:
        return _SnackStyle(
          bg: s.secondaryContainer,
          fg: s.onSecondaryContainer,
          icon: AppIcons.snackInfo,
        );
      case SnackBarType.warning:
        return _SnackStyle(
          bg: s.errorContainer.withValues(alpha: 0.6),
          fg: s.onErrorContainer,
          icon: AppIcons.snackWarning,
        );
      case SnackBarType.error:
        return _SnackStyle(
          bg: s.errorContainer,
          fg: s.onErrorContainer,
          icon: AppIcons.snackError,
        );
    }
  }
}

enum SnackBarType { success, info, warning, error }

class _SnackStyle {
  const _SnackStyle({required this.bg, required this.fg, required this.icon});
  final Color bg;
  final Color fg;
  final IconData icon;
}

class _SnackJob {
  _SnackJob({
    required this.message,
    this.action,
    required this.duration,
    required this.behavior,
    this.margin,
    required this.type,
    this.context,
  });
  final String message;
  final SnackBarAction? action;
  final Duration duration;
  final SnackBarBehavior behavior;
  final EdgeInsetsGeometry? margin;
  final SnackBarType type;
  final BuildContext? context;
}

// ────────────────────────────────────────────────────────────────────────────────
// Convenience extension: usable anywhere
// ────────────────────────────────────────────────────────────────────────────────
extension SnackbarX on BuildContext {
  SnackbarService get _snack => s1.get<SnackbarService>();

  void snackSuccess(String msg) => _snack.showSuccess(msg, context: this);
  void snackInfo(String msg) => _snack.showInfo(msg, context: this);
  void snackWarning(String msg) => _snack.showWarning(msg, context: this);
  void snackError(String msg) => _snack.showError(msg, context: this);
  void snackUndo(String msg, VoidCallback onUndo) =>
      _snack.showUndo(msg, onUndo: onUndo, context: this);
}
