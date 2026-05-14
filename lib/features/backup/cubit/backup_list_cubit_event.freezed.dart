// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backup_list_cubit_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BackupListCubitEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BackupListCubitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupListCubitEvent()';
  }
}

/// @nodoc
class $BackupListCubitEventCopyWith<$Res> {
  $BackupListCubitEventCopyWith(
      BackupListCubitEvent _, $Res Function(BackupListCubitEvent) __);
}

/// Adds pattern-matching-related methods to [BackupListCubitEvent].
extension BackupListCubitEventPatterns on BackupListCubitEvent {
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
    TResult Function(BackupListCreated value)? created,
    TResult Function(BackupListCreateFailed value)? createFailed,
    TResult Function(BackupListShareFailed value)? shareFailed,
    TResult Function(BackupListDeleteFailed value)? deleteFailed,
    TResult Function(BackupListRestoreFailed value)? restoreFailed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BackupListCreated() when created != null:
        return created(_that);
      case BackupListCreateFailed() when createFailed != null:
        return createFailed(_that);
      case BackupListShareFailed() when shareFailed != null:
        return shareFailed(_that);
      case BackupListDeleteFailed() when deleteFailed != null:
        return deleteFailed(_that);
      case BackupListRestoreFailed() when restoreFailed != null:
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
    required TResult Function(BackupListCreated value) created,
    required TResult Function(BackupListCreateFailed value) createFailed,
    required TResult Function(BackupListShareFailed value) shareFailed,
    required TResult Function(BackupListDeleteFailed value) deleteFailed,
    required TResult Function(BackupListRestoreFailed value) restoreFailed,
  }) {
    final _that = this;
    switch (_that) {
      case BackupListCreated():
        return created(_that);
      case BackupListCreateFailed():
        return createFailed(_that);
      case BackupListShareFailed():
        return shareFailed(_that);
      case BackupListDeleteFailed():
        return deleteFailed(_that);
      case BackupListRestoreFailed():
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
    TResult? Function(BackupListCreated value)? created,
    TResult? Function(BackupListCreateFailed value)? createFailed,
    TResult? Function(BackupListShareFailed value)? shareFailed,
    TResult? Function(BackupListDeleteFailed value)? deleteFailed,
    TResult? Function(BackupListRestoreFailed value)? restoreFailed,
  }) {
    final _that = this;
    switch (_that) {
      case BackupListCreated() when created != null:
        return created(_that);
      case BackupListCreateFailed() when createFailed != null:
        return createFailed(_that);
      case BackupListShareFailed() when shareFailed != null:
        return shareFailed(_that);
      case BackupListDeleteFailed() when deleteFailed != null:
        return deleteFailed(_that);
      case BackupListRestoreFailed() when restoreFailed != null:
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
    TResult Function(String message)? deleteFailed,
    TResult Function(String message)? restoreFailed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BackupListCreated() when created != null:
        return created();
      case BackupListCreateFailed() when createFailed != null:
        return createFailed(_that.message);
      case BackupListShareFailed() when shareFailed != null:
        return shareFailed(_that.message);
      case BackupListDeleteFailed() when deleteFailed != null:
        return deleteFailed(_that.message);
      case BackupListRestoreFailed() when restoreFailed != null:
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
    required TResult Function(String message) deleteFailed,
    required TResult Function(String message) restoreFailed,
  }) {
    final _that = this;
    switch (_that) {
      case BackupListCreated():
        return created();
      case BackupListCreateFailed():
        return createFailed(_that.message);
      case BackupListShareFailed():
        return shareFailed(_that.message);
      case BackupListDeleteFailed():
        return deleteFailed(_that.message);
      case BackupListRestoreFailed():
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
    TResult? Function(String message)? deleteFailed,
    TResult? Function(String message)? restoreFailed,
  }) {
    final _that = this;
    switch (_that) {
      case BackupListCreated() when created != null:
        return created();
      case BackupListCreateFailed() when createFailed != null:
        return createFailed(_that.message);
      case BackupListShareFailed() when shareFailed != null:
        return shareFailed(_that.message);
      case BackupListDeleteFailed() when deleteFailed != null:
        return deleteFailed(_that.message);
      case BackupListRestoreFailed() when restoreFailed != null:
        return restoreFailed(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class BackupListCreated implements BackupListCubitEvent {
  const BackupListCreated();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BackupListCreated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupListCubitEvent.created()';
  }
}

/// @nodoc

class BackupListCreateFailed implements BackupListCubitEvent {
  const BackupListCreateFailed(this.message);

  final String message;

  /// Create a copy of BackupListCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackupListCreateFailedCopyWith<BackupListCreateFailed> get copyWith =>
      _$BackupListCreateFailedCopyWithImpl<BackupListCreateFailed>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BackupListCreateFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'BackupListCubitEvent.createFailed(message: $message)';
  }
}

/// @nodoc
abstract mixin class $BackupListCreateFailedCopyWith<$Res>
    implements $BackupListCubitEventCopyWith<$Res> {
  factory $BackupListCreateFailedCopyWith(BackupListCreateFailed value,
          $Res Function(BackupListCreateFailed) _then) =
      _$BackupListCreateFailedCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$BackupListCreateFailedCopyWithImpl<$Res>
    implements $BackupListCreateFailedCopyWith<$Res> {
  _$BackupListCreateFailedCopyWithImpl(this._self, this._then);

  final BackupListCreateFailed _self;
  final $Res Function(BackupListCreateFailed) _then;

  /// Create a copy of BackupListCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(BackupListCreateFailed(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class BackupListShareFailed implements BackupListCubitEvent {
  const BackupListShareFailed(this.message);

  final String message;

  /// Create a copy of BackupListCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackupListShareFailedCopyWith<BackupListShareFailed> get copyWith =>
      _$BackupListShareFailedCopyWithImpl<BackupListShareFailed>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BackupListShareFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'BackupListCubitEvent.shareFailed(message: $message)';
  }
}

/// @nodoc
abstract mixin class $BackupListShareFailedCopyWith<$Res>
    implements $BackupListCubitEventCopyWith<$Res> {
  factory $BackupListShareFailedCopyWith(BackupListShareFailed value,
          $Res Function(BackupListShareFailed) _then) =
      _$BackupListShareFailedCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$BackupListShareFailedCopyWithImpl<$Res>
    implements $BackupListShareFailedCopyWith<$Res> {
  _$BackupListShareFailedCopyWithImpl(this._self, this._then);

  final BackupListShareFailed _self;
  final $Res Function(BackupListShareFailed) _then;

  /// Create a copy of BackupListCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(BackupListShareFailed(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class BackupListDeleteFailed implements BackupListCubitEvent {
  const BackupListDeleteFailed(this.message);

  final String message;

  /// Create a copy of BackupListCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackupListDeleteFailedCopyWith<BackupListDeleteFailed> get copyWith =>
      _$BackupListDeleteFailedCopyWithImpl<BackupListDeleteFailed>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BackupListDeleteFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'BackupListCubitEvent.deleteFailed(message: $message)';
  }
}

/// @nodoc
abstract mixin class $BackupListDeleteFailedCopyWith<$Res>
    implements $BackupListCubitEventCopyWith<$Res> {
  factory $BackupListDeleteFailedCopyWith(BackupListDeleteFailed value,
          $Res Function(BackupListDeleteFailed) _then) =
      _$BackupListDeleteFailedCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$BackupListDeleteFailedCopyWithImpl<$Res>
    implements $BackupListDeleteFailedCopyWith<$Res> {
  _$BackupListDeleteFailedCopyWithImpl(this._self, this._then);

  final BackupListDeleteFailed _self;
  final $Res Function(BackupListDeleteFailed) _then;

  /// Create a copy of BackupListCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(BackupListDeleteFailed(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class BackupListRestoreFailed implements BackupListCubitEvent {
  const BackupListRestoreFailed(this.message);

  final String message;

  /// Create a copy of BackupListCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackupListRestoreFailedCopyWith<BackupListRestoreFailed> get copyWith =>
      _$BackupListRestoreFailedCopyWithImpl<BackupListRestoreFailed>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BackupListRestoreFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'BackupListCubitEvent.restoreFailed(message: $message)';
  }
}

/// @nodoc
abstract mixin class $BackupListRestoreFailedCopyWith<$Res>
    implements $BackupListCubitEventCopyWith<$Res> {
  factory $BackupListRestoreFailedCopyWith(BackupListRestoreFailed value,
          $Res Function(BackupListRestoreFailed) _then) =
      _$BackupListRestoreFailedCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$BackupListRestoreFailedCopyWithImpl<$Res>
    implements $BackupListRestoreFailedCopyWith<$Res> {
  _$BackupListRestoreFailedCopyWithImpl(this._self, this._then);

  final BackupListRestoreFailed _self;
  final $Res Function(BackupListRestoreFailed) _then;

  /// Create a copy of BackupListCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(BackupListRestoreFailed(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
