// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cloud_backup_cubit_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CloudBackupCubitEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CloudBackupCubitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CloudBackupCubitEvent()';
  }
}

/// @nodoc
class $CloudBackupCubitEventCopyWith<$Res> {
  $CloudBackupCubitEventCopyWith(
      CloudBackupCubitEvent _, $Res Function(CloudBackupCubitEvent) __);
}

/// Adds pattern-matching-related methods to [CloudBackupCubitEvent].
extension CloudBackupCubitEventPatterns on CloudBackupCubitEvent {
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
    TResult Function(CloudLocationChosen value)? locationChosen,
    TResult Function(CloudLocationFailed value)? locationFailed,
    TResult Function(CloudSyncSucceeded value)? syncSucceeded,
    TResult Function(CloudSyncFailed value)? syncFailed,
    TResult Function(CloudUnavailable value)? unavailable,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CloudLocationChosen() when locationChosen != null:
        return locationChosen(_that);
      case CloudLocationFailed() when locationFailed != null:
        return locationFailed(_that);
      case CloudSyncSucceeded() when syncSucceeded != null:
        return syncSucceeded(_that);
      case CloudSyncFailed() when syncFailed != null:
        return syncFailed(_that);
      case CloudUnavailable() when unavailable != null:
        return unavailable(_that);
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
    required TResult Function(CloudLocationChosen value) locationChosen,
    required TResult Function(CloudLocationFailed value) locationFailed,
    required TResult Function(CloudSyncSucceeded value) syncSucceeded,
    required TResult Function(CloudSyncFailed value) syncFailed,
    required TResult Function(CloudUnavailable value) unavailable,
  }) {
    final _that = this;
    switch (_that) {
      case CloudLocationChosen():
        return locationChosen(_that);
      case CloudLocationFailed():
        return locationFailed(_that);
      case CloudSyncSucceeded():
        return syncSucceeded(_that);
      case CloudSyncFailed():
        return syncFailed(_that);
      case CloudUnavailable():
        return unavailable(_that);
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
    TResult? Function(CloudLocationChosen value)? locationChosen,
    TResult? Function(CloudLocationFailed value)? locationFailed,
    TResult? Function(CloudSyncSucceeded value)? syncSucceeded,
    TResult? Function(CloudSyncFailed value)? syncFailed,
    TResult? Function(CloudUnavailable value)? unavailable,
  }) {
    final _that = this;
    switch (_that) {
      case CloudLocationChosen() when locationChosen != null:
        return locationChosen(_that);
      case CloudLocationFailed() when locationFailed != null:
        return locationFailed(_that);
      case CloudSyncSucceeded() when syncSucceeded != null:
        return syncSucceeded(_that);
      case CloudSyncFailed() when syncFailed != null:
        return syncFailed(_that);
      case CloudUnavailable() when unavailable != null:
        return unavailable(_that);
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
    TResult Function(String name)? locationChosen,
    TResult Function()? locationFailed,
    TResult Function()? syncSucceeded,
    TResult Function(String message)? syncFailed,
    TResult Function(CloudUnavailableReason reason)? unavailable,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CloudLocationChosen() when locationChosen != null:
        return locationChosen(_that.name);
      case CloudLocationFailed() when locationFailed != null:
        return locationFailed();
      case CloudSyncSucceeded() when syncSucceeded != null:
        return syncSucceeded();
      case CloudSyncFailed() when syncFailed != null:
        return syncFailed(_that.message);
      case CloudUnavailable() when unavailable != null:
        return unavailable(_that.reason);
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
    required TResult Function(String name) locationChosen,
    required TResult Function() locationFailed,
    required TResult Function() syncSucceeded,
    required TResult Function(String message) syncFailed,
    required TResult Function(CloudUnavailableReason reason) unavailable,
  }) {
    final _that = this;
    switch (_that) {
      case CloudLocationChosen():
        return locationChosen(_that.name);
      case CloudLocationFailed():
        return locationFailed();
      case CloudSyncSucceeded():
        return syncSucceeded();
      case CloudSyncFailed():
        return syncFailed(_that.message);
      case CloudUnavailable():
        return unavailable(_that.reason);
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
    TResult? Function(String name)? locationChosen,
    TResult? Function()? locationFailed,
    TResult? Function()? syncSucceeded,
    TResult? Function(String message)? syncFailed,
    TResult? Function(CloudUnavailableReason reason)? unavailable,
  }) {
    final _that = this;
    switch (_that) {
      case CloudLocationChosen() when locationChosen != null:
        return locationChosen(_that.name);
      case CloudLocationFailed() when locationFailed != null:
        return locationFailed();
      case CloudSyncSucceeded() when syncSucceeded != null:
        return syncSucceeded();
      case CloudSyncFailed() when syncFailed != null:
        return syncFailed(_that.message);
      case CloudUnavailable() when unavailable != null:
        return unavailable(_that.reason);
      case _:
        return null;
    }
  }
}

/// @nodoc

class CloudLocationChosen implements CloudBackupCubitEvent {
  const CloudLocationChosen(this.name);

  final String name;

  /// Create a copy of CloudBackupCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CloudLocationChosenCopyWith<CloudLocationChosen> get copyWith =>
      _$CloudLocationChosenCopyWithImpl<CloudLocationChosen>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CloudLocationChosen &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'CloudBackupCubitEvent.locationChosen(name: $name)';
  }
}

/// @nodoc
abstract mixin class $CloudLocationChosenCopyWith<$Res>
    implements $CloudBackupCubitEventCopyWith<$Res> {
  factory $CloudLocationChosenCopyWith(
          CloudLocationChosen value, $Res Function(CloudLocationChosen) _then) =
      _$CloudLocationChosenCopyWithImpl;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CloudLocationChosenCopyWithImpl<$Res>
    implements $CloudLocationChosenCopyWith<$Res> {
  _$CloudLocationChosenCopyWithImpl(this._self, this._then);

  final CloudLocationChosen _self;
  final $Res Function(CloudLocationChosen) _then;

  /// Create a copy of CloudBackupCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
  }) {
    return _then(CloudLocationChosen(
      null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class CloudLocationFailed implements CloudBackupCubitEvent {
  const CloudLocationFailed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CloudLocationFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CloudBackupCubitEvent.locationFailed()';
  }
}

/// @nodoc

class CloudSyncSucceeded implements CloudBackupCubitEvent {
  const CloudSyncSucceeded();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CloudSyncSucceeded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CloudBackupCubitEvent.syncSucceeded()';
  }
}

/// @nodoc

class CloudSyncFailed implements CloudBackupCubitEvent {
  const CloudSyncFailed(this.message);

  final String message;

  /// Create a copy of CloudBackupCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CloudSyncFailedCopyWith<CloudSyncFailed> get copyWith =>
      _$CloudSyncFailedCopyWithImpl<CloudSyncFailed>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CloudSyncFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'CloudBackupCubitEvent.syncFailed(message: $message)';
  }
}

/// @nodoc
abstract mixin class $CloudSyncFailedCopyWith<$Res>
    implements $CloudBackupCubitEventCopyWith<$Res> {
  factory $CloudSyncFailedCopyWith(
          CloudSyncFailed value, $Res Function(CloudSyncFailed) _then) =
      _$CloudSyncFailedCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$CloudSyncFailedCopyWithImpl<$Res>
    implements $CloudSyncFailedCopyWith<$Res> {
  _$CloudSyncFailedCopyWithImpl(this._self, this._then);

  final CloudSyncFailed _self;
  final $Res Function(CloudSyncFailed) _then;

  /// Create a copy of CloudBackupCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(CloudSyncFailed(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class CloudUnavailable implements CloudBackupCubitEvent {
  const CloudUnavailable(this.reason);

  final CloudUnavailableReason reason;

  /// Create a copy of CloudBackupCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CloudUnavailableCopyWith<CloudUnavailable> get copyWith =>
      _$CloudUnavailableCopyWithImpl<CloudUnavailable>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CloudUnavailable &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @override
  String toString() {
    return 'CloudBackupCubitEvent.unavailable(reason: $reason)';
  }
}

/// @nodoc
abstract mixin class $CloudUnavailableCopyWith<$Res>
    implements $CloudBackupCubitEventCopyWith<$Res> {
  factory $CloudUnavailableCopyWith(
          CloudUnavailable value, $Res Function(CloudUnavailable) _then) =
      _$CloudUnavailableCopyWithImpl;
  @useResult
  $Res call({CloudUnavailableReason reason});
}

/// @nodoc
class _$CloudUnavailableCopyWithImpl<$Res>
    implements $CloudUnavailableCopyWith<$Res> {
  _$CloudUnavailableCopyWithImpl(this._self, this._then);

  final CloudUnavailable _self;
  final $Res Function(CloudUnavailable) _then;

  /// Create a copy of CloudBackupCubitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reason = null,
  }) {
    return _then(CloudUnavailable(
      null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as CloudUnavailableReason,
    ));
  }
}

// dart format on
