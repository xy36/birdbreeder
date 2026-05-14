// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backup_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BackupState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BackupState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupState()';
  }
}

/// @nodoc
class $BackupStateCopyWith<$Res> {
  $BackupStateCopyWith(BackupState _, $Res Function(BackupState) __);
}

/// Adds pattern-matching-related methods to [BackupState].
extension BackupStatePatterns on BackupState {
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
    TResult Function(BackupInitial value)? initial,
    TResult Function(BackupLoaded value)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BackupInitial() when initial != null:
        return initial(_that);
      case BackupLoaded() when loaded != null:
        return loaded(_that);
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
    required TResult Function(BackupInitial value) initial,
    required TResult Function(BackupLoaded value) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case BackupInitial():
        return initial(_that);
      case BackupLoaded():
        return loaded(_that);
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
    TResult? Function(BackupInitial value)? initial,
    TResult? Function(BackupLoaded value)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case BackupInitial() when initial != null:
        return initial(_that);
      case BackupLoaded() when loaded != null:
        return loaded(_that);
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
    TResult Function()? initial,
    TResult Function(File? latestSnapshot, int? daysSinceExternal)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BackupInitial() when initial != null:
        return initial();
      case BackupLoaded() when loaded != null:
        return loaded(_that.latestSnapshot, _that.daysSinceExternal);
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
    required TResult Function() initial,
    required TResult Function(File? latestSnapshot, int? daysSinceExternal)
        loaded,
  }) {
    final _that = this;
    switch (_that) {
      case BackupInitial():
        return initial();
      case BackupLoaded():
        return loaded(_that.latestSnapshot, _that.daysSinceExternal);
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
    TResult? Function()? initial,
    TResult? Function(File? latestSnapshot, int? daysSinceExternal)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case BackupInitial() when initial != null:
        return initial();
      case BackupLoaded() when loaded != null:
        return loaded(_that.latestSnapshot, _that.daysSinceExternal);
      case _:
        return null;
    }
  }
}

/// @nodoc

class BackupInitial implements BackupState {
  const BackupInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BackupInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BackupState.initial()';
  }
}

/// @nodoc

class BackupLoaded implements BackupState {
  const BackupLoaded({this.latestSnapshot, this.daysSinceExternal});

  final File? latestSnapshot;
  final int? daysSinceExternal;

  /// Create a copy of BackupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BackupLoadedCopyWith<BackupLoaded> get copyWith =>
      _$BackupLoadedCopyWithImpl<BackupLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BackupLoaded &&
            (identical(other.latestSnapshot, latestSnapshot) ||
                other.latestSnapshot == latestSnapshot) &&
            (identical(other.daysSinceExternal, daysSinceExternal) ||
                other.daysSinceExternal == daysSinceExternal));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, latestSnapshot, daysSinceExternal);

  @override
  String toString() {
    return 'BackupState.loaded(latestSnapshot: $latestSnapshot, daysSinceExternal: $daysSinceExternal)';
  }
}

/// @nodoc
abstract mixin class $BackupLoadedCopyWith<$Res>
    implements $BackupStateCopyWith<$Res> {
  factory $BackupLoadedCopyWith(
          BackupLoaded value, $Res Function(BackupLoaded) _then) =
      _$BackupLoadedCopyWithImpl;
  @useResult
  $Res call({File? latestSnapshot, int? daysSinceExternal});
}

/// @nodoc
class _$BackupLoadedCopyWithImpl<$Res> implements $BackupLoadedCopyWith<$Res> {
  _$BackupLoadedCopyWithImpl(this._self, this._then);

  final BackupLoaded _self;
  final $Res Function(BackupLoaded) _then;

  /// Create a copy of BackupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? latestSnapshot = freezed,
    Object? daysSinceExternal = freezed,
  }) {
    return _then(BackupLoaded(
      latestSnapshot: freezed == latestSnapshot
          ? _self.latestSnapshot
          : latestSnapshot // ignore: cast_nullable_to_non_nullable
              as File?,
      daysSinceExternal: freezed == daysSinceExternal
          ? _self.daysSinceExternal
          : daysSinceExternal // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
