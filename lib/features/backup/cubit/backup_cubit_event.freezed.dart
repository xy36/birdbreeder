// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backup_cubit_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BackupCubitEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BackupCubitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupCubitEvent()';
  }
}

/// @nodoc
class $BackupCubitEventCopyWith<$Res> {
  $BackupCubitEventCopyWith(
      BackupCubitEvent _, $Res Function(BackupCubitEvent) __);
}

/// Adds pattern-matching-related methods to [BackupCubitEvent].
extension BackupCubitEventPatterns on BackupCubitEvent {
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
    TResult Function(BackupCreated value)? created,
    TResult Function(BackupCreateFailed value)? createFailed,
    TResult Function(BackupShareFailed value)? shareFailed,
    TResult Function(BackupRestoreFailed value)? restoreFailed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BackupCreated() when created != null:
        return created(_that);
      case BackupCreateFailed() when createFailed != null:
        return createFailed(_that);
      case BackupShareFailed() when shareFailed != null:
        return shareFailed(_that);
      case BackupRestoreFailed() when restoreFailed != null:
        return restoreFailed(_that);
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
    required TResult Function(BackupCreated value) created,
    required TResult Function(BackupCreateFailed value) createFailed,
    required TResult Function(BackupShareFailed value) shareFailed,
    required TResult Function(BackupRestoreFailed value) restoreFailed,
  }) {
    final _that = this;
    switch (_that) {
      case BackupCreated():
        return created(_that);
      case BackupCreateFailed():
        return createFailed(_that);
      case BackupShareFailed():
        return shareFailed(_that);
      case BackupRestoreFailed():
        return restoreFailed(_that);
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
    TResult? Function(BackupCreated value)? created,
    TResult? Function(BackupCreateFailed value)? createFailed,
    TResult? Function(BackupShareFailed value)? shareFailed,
    TResult? Function(BackupRestoreFailed value)? restoreFailed,
  }) {
    final _that = this;
    switch (_that) {
      case BackupCreated() when created != null:
        return created(_that);
      case BackupCreateFailed() when createFailed != null:
        return createFailed(_that);
      case BackupShareFailed() when shareFailed != null:
        return shareFailed(_that);
      case BackupRestoreFailed() when restoreFailed != null:
        return restoreFailed(_that);
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
    TResult Function()? created,
    TResult Function(String message)? createFailed,
    TResult Function(String message)? shareFailed,
    TResult Function(String message)? restoreFailed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BackupCreated() when created != null:
        return created();
      case BackupCreateFailed() when createFailed != null:
        return createFailed(_that.message);
      case BackupShareFailed() when shareFailed != null:
        return shareFailed(_that.message);
      case BackupRestoreFailed() when restoreFailed != null:
        return restoreFailed(_that.message);
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
    required TResult Function() created,
    required TResult Function(String message) createFailed,
    required TResult Function(String message) shareFailed,
    required TResult Function(String message) restoreFailed,
  }) {
    final _that = this;
    switch (_that) {
      case BackupCreated():
        return created();
      case BackupCreateFailed():
        return createFailed(_that.message);
      case BackupShareFailed():
        return shareFailed(_that.message);
      case BackupRestoreFailed():
        return restoreFailed(_that.message);
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
    TResult? Function()? created,
    TResult? Function(String message)? createFailed,
    TResult? Function(String message)? shareFailed,
    TResult? Function(String message)? restoreFailed,
  }) {
    final _that = this;
    switch (_that) {
      case BackupCreated() when created != null:
        return created();
      case BackupCreateFailed() when createFailed != null:
        return createFailed(_that.message);
      case BackupShareFailed() when shareFailed != null:
        return shareFailed(_that.message);
      case BackupRestoreFailed() when restoreFailed != null:
        return restoreFailed(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class BackupCreated implements BackupCubitEvent {
  const BackupCreated();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BackupCreated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupCubitEvent.created()';
  }
}

/// @nodoc

class BackupCreateFailed implements BackupCubitEvent {
  const BackupCreateFailed(this.message);

  final String message;

  /// Create a copy of BackupCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackupCreateFailedCopyWith<BackupCreateFailed> get copyWith =>
      _$BackupCreateFailedCopyWithImpl<BackupCreateFailed>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BackupCreateFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'BackupCubitEvent.createFailed(message: $message)';
  }
}

/// @nodoc
abstract mixin class $BackupCreateFailedCopyWith<$Res>
    implements $BackupCubitEventCopyWith<$Res> {
  factory $BackupCreateFailedCopyWith(
          BackupCreateFailed value, $Res Function(BackupCreateFailed) _then) =
      _$BackupCreateFailedCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$BackupCreateFailedCopyWithImpl<$Res>
    implements $BackupCreateFailedCopyWith<$Res> {
  _$BackupCreateFailedCopyWithImpl(this._self, this._then);

  final BackupCreateFailed _self;
  final $Res Function(BackupCreateFailed) _then;

  /// Create a copy of BackupCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(BackupCreateFailed(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class BackupShareFailed implements BackupCubitEvent {
  const BackupShareFailed(this.message);

  final String message;

  /// Create a copy of BackupCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackupShareFailedCopyWith<BackupShareFailed> get copyWith =>
      _$BackupShareFailedCopyWithImpl<BackupShareFailed>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BackupShareFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'BackupCubitEvent.shareFailed(message: $message)';
  }
}

/// @nodoc
abstract mixin class $BackupShareFailedCopyWith<$Res>
    implements $BackupCubitEventCopyWith<$Res> {
  factory $BackupShareFailedCopyWith(
          BackupShareFailed value, $Res Function(BackupShareFailed) _then) =
      _$BackupShareFailedCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$BackupShareFailedCopyWithImpl<$Res>
    implements $BackupShareFailedCopyWith<$Res> {
  _$BackupShareFailedCopyWithImpl(this._self, this._then);

  final BackupShareFailed _self;
  final $Res Function(BackupShareFailed) _then;

  /// Create a copy of BackupCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(BackupShareFailed(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class BackupRestoreFailed implements BackupCubitEvent {
  const BackupRestoreFailed(this.message);

  final String message;

  /// Create a copy of BackupCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackupRestoreFailedCopyWith<BackupRestoreFailed> get copyWith =>
      _$BackupRestoreFailedCopyWithImpl<BackupRestoreFailed>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BackupRestoreFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'BackupCubitEvent.restoreFailed(message: $message)';
  }
}

/// @nodoc
abstract mixin class $BackupRestoreFailedCopyWith<$Res>
    implements $BackupCubitEventCopyWith<$Res> {
  factory $BackupRestoreFailedCopyWith(
          BackupRestoreFailed value, $Res Function(BackupRestoreFailed) _then) =
      _$BackupRestoreFailedCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$BackupRestoreFailedCopyWithImpl<$Res>
    implements $BackupRestoreFailedCopyWith<$Res> {
  _$BackupRestoreFailedCopyWithImpl(this._self, this._then);

  final BackupRestoreFailed _self;
  final $Res Function(BackupRestoreFailed) _then;

  /// Create a copy of BackupCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(BackupRestoreFailed(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
