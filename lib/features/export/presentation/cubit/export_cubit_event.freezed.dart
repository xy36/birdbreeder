// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'export_cubit_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExportCubitEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ExportCubitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ExportCubitEvent()';
  }
}

/// @nodoc
class $ExportCubitEventCopyWith<$Res> {
  $ExportCubitEventCopyWith(
      ExportCubitEvent _, $Res Function(ExportCubitEvent) __);
}

/// Adds pattern-matching-related methods to [ExportCubitEvent].
extension ExportCubitEventPatterns on ExportCubitEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExportSucceeded value)? succeeded,
    TResult Function(ExportFailed value)? failed,
    TResult Function(ExportEmpty value)? empty,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ExportSucceeded() when succeeded != null:
        return succeeded(_that);
      case ExportFailed() when failed != null:
        return failed(_that);
      case ExportEmpty() when empty != null:
        return empty(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExportSucceeded value) succeeded,
    required TResult Function(ExportFailed value) failed,
    required TResult Function(ExportEmpty value) empty,
  }) {
    final _that = this;
    switch (_that) {
      case ExportSucceeded():
        return succeeded(_that);
      case ExportFailed():
        return failed(_that);
      case ExportEmpty():
        return empty(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExportSucceeded value)? succeeded,
    TResult? Function(ExportFailed value)? failed,
    TResult? Function(ExportEmpty value)? empty,
  }) {
    final _that = this;
    switch (_that) {
      case ExportSucceeded() when succeeded != null:
        return succeeded(_that);
      case ExportFailed() when failed != null:
        return failed(_that);
      case ExportEmpty() when empty != null:
        return empty(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fileName)? succeeded,
    TResult Function(String message)? failed,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ExportSucceeded() when succeeded != null:
        return succeeded(_that.fileName);
      case ExportFailed() when failed != null:
        return failed(_that.message);
      case ExportEmpty() when empty != null:
        return empty();
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fileName) succeeded,
    required TResult Function(String message) failed,
    required TResult Function() empty,
  }) {
    final _that = this;
    switch (_that) {
      case ExportSucceeded():
        return succeeded(_that.fileName);
      case ExportFailed():
        return failed(_that.message);
      case ExportEmpty():
        return empty();
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fileName)? succeeded,
    TResult? Function(String message)? failed,
    TResult? Function()? empty,
  }) {
    final _that = this;
    switch (_that) {
      case ExportSucceeded() when succeeded != null:
        return succeeded(_that.fileName);
      case ExportFailed() when failed != null:
        return failed(_that.message);
      case ExportEmpty() when empty != null:
        return empty();
      case _:
        return null;
    }
  }
}

/// @nodoc

class ExportSucceeded implements ExportCubitEvent {
  const ExportSucceeded(this.fileName);

  final String fileName;

  /// Create a copy of ExportCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExportSucceededCopyWith<ExportSucceeded> get copyWith =>
      _$ExportSucceededCopyWithImpl<ExportSucceeded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExportSucceeded &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileName);

  @override
  String toString() {
    return 'ExportCubitEvent.succeeded(fileName: $fileName)';
  }
}

/// @nodoc
abstract mixin class $ExportSucceededCopyWith<$Res>
    implements $ExportCubitEventCopyWith<$Res> {
  factory $ExportSucceededCopyWith(
          ExportSucceeded value, $Res Function(ExportSucceeded) _then) =
      _$ExportSucceededCopyWithImpl;
  @useResult
  $Res call({String fileName});
}

/// @nodoc
class _$ExportSucceededCopyWithImpl<$Res>
    implements $ExportSucceededCopyWith<$Res> {
  _$ExportSucceededCopyWithImpl(this._self, this._then);

  final ExportSucceeded _self;
  final $Res Function(ExportSucceeded) _then;

  /// Create a copy of ExportCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fileName = null,
  }) {
    return _then(ExportSucceeded(
      null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ExportFailed implements ExportCubitEvent {
  const ExportFailed(this.message);

  final String message;

  /// Create a copy of ExportCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExportFailedCopyWith<ExportFailed> get copyWith =>
      _$ExportFailedCopyWithImpl<ExportFailed>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExportFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ExportCubitEvent.failed(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ExportFailedCopyWith<$Res>
    implements $ExportCubitEventCopyWith<$Res> {
  factory $ExportFailedCopyWith(
          ExportFailed value, $Res Function(ExportFailed) _then) =
      _$ExportFailedCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ExportFailedCopyWithImpl<$Res> implements $ExportFailedCopyWith<$Res> {
  _$ExportFailedCopyWithImpl(this._self, this._then);

  final ExportFailed _self;
  final $Res Function(ExportFailed) _then;

  /// Create a copy of ExportCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(ExportFailed(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ExportEmpty implements ExportCubitEvent {
  const ExportEmpty();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ExportEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ExportCubitEvent.empty()';
  }
}

// dart format on
