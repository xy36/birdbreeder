// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bird_breeder_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BirdBreederState {
  BirdBreederResources get birdBreederResources;

  /// Create a copy of BirdBreederState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BirdBreederStateCopyWith<BirdBreederState> get copyWith =>
      _$BirdBreederStateCopyWithImpl<BirdBreederState>(
          this as BirdBreederState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BirdBreederState &&
            (identical(other.birdBreederResources, birdBreederResources) ||
                other.birdBreederResources == birdBreederResources));
  }

  @override
  int get hashCode => Object.hash(runtimeType, birdBreederResources);

  @override
  String toString() {
    return 'BirdBreederState(birdBreederResources: $birdBreederResources)';
  }
}

/// @nodoc
abstract mixin class $BirdBreederStateCopyWith<$Res> {
  factory $BirdBreederStateCopyWith(
          BirdBreederState value, $Res Function(BirdBreederState) _then) =
      _$BirdBreederStateCopyWithImpl;
  @useResult
  $Res call({BirdBreederResources birdBreederResources});

  $BirdBreederResourcesCopyWith<$Res> get birdBreederResources;
}

/// @nodoc
class _$BirdBreederStateCopyWithImpl<$Res>
    implements $BirdBreederStateCopyWith<$Res> {
  _$BirdBreederStateCopyWithImpl(this._self, this._then);

  final BirdBreederState _self;
  final $Res Function(BirdBreederState) _then;

  /// Create a copy of BirdBreederState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birdBreederResources = null,
  }) {
    return _then(_self.copyWith(
      birdBreederResources: null == birdBreederResources
          ? _self.birdBreederResources
          : birdBreederResources // ignore: cast_nullable_to_non_nullable
              as BirdBreederResources,
    ));
  }

  /// Create a copy of BirdBreederState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BirdBreederResourcesCopyWith<$Res> get birdBreederResources {
    return $BirdBreederResourcesCopyWith<$Res>(_self.birdBreederResources,
        (value) {
      return _then(_self.copyWith(birdBreederResources: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BirdBreederState].
extension BirdBreederStatePatterns on BirdBreederState {
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
    TResult Function(BirdBreederInitial value)? initial,
    TResult Function(BirdBreederLoading value)? loading,
    TResult Function(BirdBreederLoaded value)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BirdBreederInitial() when initial != null:
        return initial(_that);
      case BirdBreederLoading() when loading != null:
        return loading(_that);
      case BirdBreederLoaded() when loaded != null:
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
    required TResult Function(BirdBreederInitial value) initial,
    required TResult Function(BirdBreederLoading value) loading,
    required TResult Function(BirdBreederLoaded value) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case BirdBreederInitial():
        return initial(_that);
      case BirdBreederLoading():
        return loading(_that);
      case BirdBreederLoaded():
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
    TResult? Function(BirdBreederInitial value)? initial,
    TResult? Function(BirdBreederLoading value)? loading,
    TResult? Function(BirdBreederLoaded value)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case BirdBreederInitial() when initial != null:
        return initial(_that);
      case BirdBreederLoading() when loading != null:
        return loading(_that);
      case BirdBreederLoaded() when loaded != null:
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
    TResult Function(BirdBreederResources birdBreederResources)? initial,
    TResult Function(BirdBreederResources birdBreederResources)? loading,
    TResult Function(BirdBreederResources birdBreederResources)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BirdBreederInitial() when initial != null:
        return initial(_that.birdBreederResources);
      case BirdBreederLoading() when loading != null:
        return loading(_that.birdBreederResources);
      case BirdBreederLoaded() when loaded != null:
        return loaded(_that.birdBreederResources);
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
    required TResult Function(BirdBreederResources birdBreederResources)
        initial,
    required TResult Function(BirdBreederResources birdBreederResources)
        loading,
    required TResult Function(BirdBreederResources birdBreederResources) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case BirdBreederInitial():
        return initial(_that.birdBreederResources);
      case BirdBreederLoading():
        return loading(_that.birdBreederResources);
      case BirdBreederLoaded():
        return loaded(_that.birdBreederResources);
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
    TResult? Function(BirdBreederResources birdBreederResources)? initial,
    TResult? Function(BirdBreederResources birdBreederResources)? loading,
    TResult? Function(BirdBreederResources birdBreederResources)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case BirdBreederInitial() when initial != null:
        return initial(_that.birdBreederResources);
      case BirdBreederLoading() when loading != null:
        return loading(_that.birdBreederResources);
      case BirdBreederLoaded() when loaded != null:
        return loaded(_that.birdBreederResources);
      case _:
        return null;
    }
  }
}

/// @nodoc

class BirdBreederInitial extends BirdBreederState {
  const BirdBreederInitial({required this.birdBreederResources}) : super._();

  @override
  final BirdBreederResources birdBreederResources;

  /// Create a copy of BirdBreederState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BirdBreederInitialCopyWith<BirdBreederInitial> get copyWith =>
      _$BirdBreederInitialCopyWithImpl<BirdBreederInitial>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BirdBreederInitial &&
            (identical(other.birdBreederResources, birdBreederResources) ||
                other.birdBreederResources == birdBreederResources));
  }

  @override
  int get hashCode => Object.hash(runtimeType, birdBreederResources);

  @override
  String toString() {
    return 'BirdBreederState.initial(birdBreederResources: $birdBreederResources)';
  }
}

/// @nodoc
abstract mixin class $BirdBreederInitialCopyWith<$Res>
    implements $BirdBreederStateCopyWith<$Res> {
  factory $BirdBreederInitialCopyWith(
          BirdBreederInitial value, $Res Function(BirdBreederInitial) _then) =
      _$BirdBreederInitialCopyWithImpl;
  @override
  @useResult
  $Res call({BirdBreederResources birdBreederResources});

  @override
  $BirdBreederResourcesCopyWith<$Res> get birdBreederResources;
}

/// @nodoc
class _$BirdBreederInitialCopyWithImpl<$Res>
    implements $BirdBreederInitialCopyWith<$Res> {
  _$BirdBreederInitialCopyWithImpl(this._self, this._then);

  final BirdBreederInitial _self;
  final $Res Function(BirdBreederInitial) _then;

  /// Create a copy of BirdBreederState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? birdBreederResources = null,
  }) {
    return _then(BirdBreederInitial(
      birdBreederResources: null == birdBreederResources
          ? _self.birdBreederResources
          : birdBreederResources // ignore: cast_nullable_to_non_nullable
              as BirdBreederResources,
    ));
  }

  /// Create a copy of BirdBreederState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BirdBreederResourcesCopyWith<$Res> get birdBreederResources {
    return $BirdBreederResourcesCopyWith<$Res>(_self.birdBreederResources,
        (value) {
      return _then(_self.copyWith(birdBreederResources: value));
    });
  }
}

/// @nodoc

class BirdBreederLoading extends BirdBreederState {
  const BirdBreederLoading({required this.birdBreederResources}) : super._();

  @override
  final BirdBreederResources birdBreederResources;

  /// Create a copy of BirdBreederState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BirdBreederLoadingCopyWith<BirdBreederLoading> get copyWith =>
      _$BirdBreederLoadingCopyWithImpl<BirdBreederLoading>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BirdBreederLoading &&
            (identical(other.birdBreederResources, birdBreederResources) ||
                other.birdBreederResources == birdBreederResources));
  }

  @override
  int get hashCode => Object.hash(runtimeType, birdBreederResources);

  @override
  String toString() {
    return 'BirdBreederState.loading(birdBreederResources: $birdBreederResources)';
  }
}

/// @nodoc
abstract mixin class $BirdBreederLoadingCopyWith<$Res>
    implements $BirdBreederStateCopyWith<$Res> {
  factory $BirdBreederLoadingCopyWith(
          BirdBreederLoading value, $Res Function(BirdBreederLoading) _then) =
      _$BirdBreederLoadingCopyWithImpl;
  @override
  @useResult
  $Res call({BirdBreederResources birdBreederResources});

  @override
  $BirdBreederResourcesCopyWith<$Res> get birdBreederResources;
}

/// @nodoc
class _$BirdBreederLoadingCopyWithImpl<$Res>
    implements $BirdBreederLoadingCopyWith<$Res> {
  _$BirdBreederLoadingCopyWithImpl(this._self, this._then);

  final BirdBreederLoading _self;
  final $Res Function(BirdBreederLoading) _then;

  /// Create a copy of BirdBreederState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? birdBreederResources = null,
  }) {
    return _then(BirdBreederLoading(
      birdBreederResources: null == birdBreederResources
          ? _self.birdBreederResources
          : birdBreederResources // ignore: cast_nullable_to_non_nullable
              as BirdBreederResources,
    ));
  }

  /// Create a copy of BirdBreederState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BirdBreederResourcesCopyWith<$Res> get birdBreederResources {
    return $BirdBreederResourcesCopyWith<$Res>(_self.birdBreederResources,
        (value) {
      return _then(_self.copyWith(birdBreederResources: value));
    });
  }
}

/// @nodoc

class BirdBreederLoaded extends BirdBreederState {
  const BirdBreederLoaded({required this.birdBreederResources}) : super._();

  @override
  final BirdBreederResources birdBreederResources;

  /// Create a copy of BirdBreederState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BirdBreederLoadedCopyWith<BirdBreederLoaded> get copyWith =>
      _$BirdBreederLoadedCopyWithImpl<BirdBreederLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BirdBreederLoaded &&
            (identical(other.birdBreederResources, birdBreederResources) ||
                other.birdBreederResources == birdBreederResources));
  }

  @override
  int get hashCode => Object.hash(runtimeType, birdBreederResources);

  @override
  String toString() {
    return 'BirdBreederState.loaded(birdBreederResources: $birdBreederResources)';
  }
}

/// @nodoc
abstract mixin class $BirdBreederLoadedCopyWith<$Res>
    implements $BirdBreederStateCopyWith<$Res> {
  factory $BirdBreederLoadedCopyWith(
          BirdBreederLoaded value, $Res Function(BirdBreederLoaded) _then) =
      _$BirdBreederLoadedCopyWithImpl;
  @override
  @useResult
  $Res call({BirdBreederResources birdBreederResources});

  @override
  $BirdBreederResourcesCopyWith<$Res> get birdBreederResources;
}

/// @nodoc
class _$BirdBreederLoadedCopyWithImpl<$Res>
    implements $BirdBreederLoadedCopyWith<$Res> {
  _$BirdBreederLoadedCopyWithImpl(this._self, this._then);

  final BirdBreederLoaded _self;
  final $Res Function(BirdBreederLoaded) _then;

  /// Create a copy of BirdBreederState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? birdBreederResources = null,
  }) {
    return _then(BirdBreederLoaded(
      birdBreederResources: null == birdBreederResources
          ? _self.birdBreederResources
          : birdBreederResources // ignore: cast_nullable_to_non_nullable
              as BirdBreederResources,
    ));
  }

  /// Create a copy of BirdBreederState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BirdBreederResourcesCopyWith<$Res> get birdBreederResources {
    return $BirdBreederResourcesCopyWith<$Res>(_self.birdBreederResources,
        (value) {
      return _then(_self.copyWith(birdBreederResources: value));
    });
  }
}

// dart format on
