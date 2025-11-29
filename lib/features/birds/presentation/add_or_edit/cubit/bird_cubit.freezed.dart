// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bird_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BirdState {
  Bird get bird;
  BirdMode get mode;

  /// Create a copy of BirdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BirdStateCopyWith<BirdState> get copyWith =>
      _$BirdStateCopyWithImpl<BirdState>(this as BirdState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BirdState &&
            (identical(other.bird, bird) || other.bird == bird) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bird, mode);

  @override
  String toString() {
    return 'BirdState(bird: $bird, mode: $mode)';
  }
}

/// @nodoc
abstract mixin class $BirdStateCopyWith<$Res> {
  factory $BirdStateCopyWith(BirdState value, $Res Function(BirdState) _then) =
      _$BirdStateCopyWithImpl;
  @useResult
  $Res call({Bird bird, BirdMode mode});

  $BirdCopyWith<$Res> get bird;
}

/// @nodoc
class _$BirdStateCopyWithImpl<$Res> implements $BirdStateCopyWith<$Res> {
  _$BirdStateCopyWithImpl(this._self, this._then);

  final BirdState _self;
  final $Res Function(BirdState) _then;

  /// Create a copy of BirdState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bird = null,
    Object? mode = null,
  }) {
    return _then(_self.copyWith(
      bird: null == bird
          ? _self.bird
          : bird // ignore: cast_nullable_to_non_nullable
              as Bird,
      mode: null == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as BirdMode,
    ));
  }

  /// Create a copy of BirdState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BirdCopyWith<$Res> get bird {
    return $BirdCopyWith<$Res>(_self.bird, (value) {
      return _then(_self.copyWith(bird: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BirdState].
extension BirdStatePatterns on BirdState {
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
    TResult Function(BirdLoading value)? loading,
    TResult Function(BirdLoaded value)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BirdLoading() when loading != null:
        return loading(_that);
      case BirdLoaded() when loaded != null:
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
    required TResult Function(BirdLoading value) loading,
    required TResult Function(BirdLoaded value) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case BirdLoading():
        return loading(_that);
      case BirdLoaded():
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
    TResult? Function(BirdLoading value)? loading,
    TResult? Function(BirdLoaded value)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case BirdLoading() when loading != null:
        return loading(_that);
      case BirdLoaded() when loaded != null:
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
    TResult Function(Bird bird, BirdMode mode)? loading,
    TResult Function(Bird bird, BirdMode mode)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BirdLoading() when loading != null:
        return loading(_that.bird, _that.mode);
      case BirdLoaded() when loaded != null:
        return loaded(_that.bird, _that.mode);
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
    required TResult Function(Bird bird, BirdMode mode) loading,
    required TResult Function(Bird bird, BirdMode mode) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case BirdLoading():
        return loading(_that.bird, _that.mode);
      case BirdLoaded():
        return loaded(_that.bird, _that.mode);
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
    TResult? Function(Bird bird, BirdMode mode)? loading,
    TResult? Function(Bird bird, BirdMode mode)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case BirdLoading() when loading != null:
        return loading(_that.bird, _that.mode);
      case BirdLoaded() when loaded != null:
        return loaded(_that.bird, _that.mode);
      case _:
        return null;
    }
  }
}

/// @nodoc

class BirdLoading implements BirdState {
  const BirdLoading({required this.bird, required this.mode});

  @override
  final Bird bird;
  @override
  final BirdMode mode;

  /// Create a copy of BirdState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BirdLoadingCopyWith<BirdLoading> get copyWith =>
      _$BirdLoadingCopyWithImpl<BirdLoading>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BirdLoading &&
            (identical(other.bird, bird) || other.bird == bird) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bird, mode);

  @override
  String toString() {
    return 'BirdState.loading(bird: $bird, mode: $mode)';
  }
}

/// @nodoc
abstract mixin class $BirdLoadingCopyWith<$Res>
    implements $BirdStateCopyWith<$Res> {
  factory $BirdLoadingCopyWith(
          BirdLoading value, $Res Function(BirdLoading) _then) =
      _$BirdLoadingCopyWithImpl;
  @override
  @useResult
  $Res call({Bird bird, BirdMode mode});

  @override
  $BirdCopyWith<$Res> get bird;
}

/// @nodoc
class _$BirdLoadingCopyWithImpl<$Res> implements $BirdLoadingCopyWith<$Res> {
  _$BirdLoadingCopyWithImpl(this._self, this._then);

  final BirdLoading _self;
  final $Res Function(BirdLoading) _then;

  /// Create a copy of BirdState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bird = null,
    Object? mode = null,
  }) {
    return _then(BirdLoading(
      bird: null == bird
          ? _self.bird
          : bird // ignore: cast_nullable_to_non_nullable
              as Bird,
      mode: null == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as BirdMode,
    ));
  }

  /// Create a copy of BirdState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BirdCopyWith<$Res> get bird {
    return $BirdCopyWith<$Res>(_self.bird, (value) {
      return _then(_self.copyWith(bird: value));
    });
  }
}

/// @nodoc

class BirdLoaded implements BirdState {
  const BirdLoaded({required this.bird, required this.mode});

  @override
  final Bird bird;
  @override
  final BirdMode mode;

  /// Create a copy of BirdState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BirdLoadedCopyWith<BirdLoaded> get copyWith =>
      _$BirdLoadedCopyWithImpl<BirdLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BirdLoaded &&
            (identical(other.bird, bird) || other.bird == bird) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bird, mode);

  @override
  String toString() {
    return 'BirdState.loaded(bird: $bird, mode: $mode)';
  }
}

/// @nodoc
abstract mixin class $BirdLoadedCopyWith<$Res>
    implements $BirdStateCopyWith<$Res> {
  factory $BirdLoadedCopyWith(
          BirdLoaded value, $Res Function(BirdLoaded) _then) =
      _$BirdLoadedCopyWithImpl;
  @override
  @useResult
  $Res call({Bird bird, BirdMode mode});

  @override
  $BirdCopyWith<$Res> get bird;
}

/// @nodoc
class _$BirdLoadedCopyWithImpl<$Res> implements $BirdLoadedCopyWith<$Res> {
  _$BirdLoadedCopyWithImpl(this._self, this._then);

  final BirdLoaded _self;
  final $Res Function(BirdLoaded) _then;

  /// Create a copy of BirdState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bird = null,
    Object? mode = null,
  }) {
    return _then(BirdLoaded(
      bird: null == bird
          ? _self.bird
          : bird // ignore: cast_nullable_to_non_nullable
              as Bird,
      mode: null == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as BirdMode,
    ));
  }

  /// Create a copy of BirdState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BirdCopyWith<$Res> get bird {
    return $BirdCopyWith<$Res>(_self.bird, (value) {
      return _then(_self.copyWith(bird: value));
    });
  }
}

// dart format on
