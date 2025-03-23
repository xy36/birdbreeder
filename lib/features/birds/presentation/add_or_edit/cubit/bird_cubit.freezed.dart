// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bird_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BirdState {
  Bird get bird => throw _privateConstructorUsedError;
  BirdMode get mode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bird bird, BirdMode mode) loading,
    required TResult Function(Bird bird, BirdMode mode) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bird bird, BirdMode mode)? loading,
    TResult? Function(Bird bird, BirdMode mode)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bird bird, BirdMode mode)? loading,
    TResult Function(Bird bird, BirdMode mode)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirdLoading value) loading,
    required TResult Function(BirdLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdLoading value)? loading,
    TResult? Function(BirdLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdLoading value)? loading,
    TResult Function(BirdLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BirdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BirdStateCopyWith<BirdState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirdStateCopyWith<$Res> {
  factory $BirdStateCopyWith(BirdState value, $Res Function(BirdState) then) =
      _$BirdStateCopyWithImpl<$Res, BirdState>;
  @useResult
  $Res call({Bird bird, BirdMode mode});

  $BirdCopyWith<$Res> get bird;
}

/// @nodoc
class _$BirdStateCopyWithImpl<$Res, $Val extends BirdState>
    implements $BirdStateCopyWith<$Res> {
  _$BirdStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BirdState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bird = null,
    Object? mode = null,
  }) {
    return _then(_value.copyWith(
      bird: null == bird
          ? _value.bird
          : bird // ignore: cast_nullable_to_non_nullable
              as Bird,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as BirdMode,
    ) as $Val);
  }

  /// Create a copy of BirdState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BirdCopyWith<$Res> get bird {
    return $BirdCopyWith<$Res>(_value.bird, (value) {
      return _then(_value.copyWith(bird: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BirdLoadingImplCopyWith<$Res>
    implements $BirdStateCopyWith<$Res> {
  factory _$$BirdLoadingImplCopyWith(
          _$BirdLoadingImpl value, $Res Function(_$BirdLoadingImpl) then) =
      __$$BirdLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Bird bird, BirdMode mode});

  @override
  $BirdCopyWith<$Res> get bird;
}

/// @nodoc
class __$$BirdLoadingImplCopyWithImpl<$Res>
    extends _$BirdStateCopyWithImpl<$Res, _$BirdLoadingImpl>
    implements _$$BirdLoadingImplCopyWith<$Res> {
  __$$BirdLoadingImplCopyWithImpl(
      _$BirdLoadingImpl _value, $Res Function(_$BirdLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BirdState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bird = null,
    Object? mode = null,
  }) {
    return _then(_$BirdLoadingImpl(
      bird: null == bird
          ? _value.bird
          : bird // ignore: cast_nullable_to_non_nullable
              as Bird,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as BirdMode,
    ));
  }
}

/// @nodoc

class _$BirdLoadingImpl implements BirdLoading {
  const _$BirdLoadingImpl({required this.bird, required this.mode});

  @override
  final Bird bird;
  @override
  final BirdMode mode;

  @override
  String toString() {
    return 'BirdState.loading(bird: $bird, mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdLoadingImpl &&
            (identical(other.bird, bird) || other.bird == bird) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bird, mode);

  /// Create a copy of BirdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdLoadingImplCopyWith<_$BirdLoadingImpl> get copyWith =>
      __$$BirdLoadingImplCopyWithImpl<_$BirdLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bird bird, BirdMode mode) loading,
    required TResult Function(Bird bird, BirdMode mode) loaded,
  }) {
    return loading(bird, mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bird bird, BirdMode mode)? loading,
    TResult? Function(Bird bird, BirdMode mode)? loaded,
  }) {
    return loading?.call(bird, mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bird bird, BirdMode mode)? loading,
    TResult Function(Bird bird, BirdMode mode)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(bird, mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirdLoading value) loading,
    required TResult Function(BirdLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdLoading value)? loading,
    TResult? Function(BirdLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdLoading value)? loading,
    TResult Function(BirdLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BirdLoading implements BirdState {
  const factory BirdLoading(
      {required final Bird bird,
      required final BirdMode mode}) = _$BirdLoadingImpl;

  @override
  Bird get bird;
  @override
  BirdMode get mode;

  /// Create a copy of BirdState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BirdLoadingImplCopyWith<_$BirdLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BirdLoadedImplCopyWith<$Res>
    implements $BirdStateCopyWith<$Res> {
  factory _$$BirdLoadedImplCopyWith(
          _$BirdLoadedImpl value, $Res Function(_$BirdLoadedImpl) then) =
      __$$BirdLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Bird bird, BirdMode mode});

  @override
  $BirdCopyWith<$Res> get bird;
}

/// @nodoc
class __$$BirdLoadedImplCopyWithImpl<$Res>
    extends _$BirdStateCopyWithImpl<$Res, _$BirdLoadedImpl>
    implements _$$BirdLoadedImplCopyWith<$Res> {
  __$$BirdLoadedImplCopyWithImpl(
      _$BirdLoadedImpl _value, $Res Function(_$BirdLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BirdState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bird = null,
    Object? mode = null,
  }) {
    return _then(_$BirdLoadedImpl(
      bird: null == bird
          ? _value.bird
          : bird // ignore: cast_nullable_to_non_nullable
              as Bird,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as BirdMode,
    ));
  }
}

/// @nodoc

class _$BirdLoadedImpl implements BirdLoaded {
  const _$BirdLoadedImpl({required this.bird, required this.mode});

  @override
  final Bird bird;
  @override
  final BirdMode mode;

  @override
  String toString() {
    return 'BirdState.loaded(bird: $bird, mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdLoadedImpl &&
            (identical(other.bird, bird) || other.bird == bird) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bird, mode);

  /// Create a copy of BirdState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdLoadedImplCopyWith<_$BirdLoadedImpl> get copyWith =>
      __$$BirdLoadedImplCopyWithImpl<_$BirdLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bird bird, BirdMode mode) loading,
    required TResult Function(Bird bird, BirdMode mode) loaded,
  }) {
    return loaded(bird, mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bird bird, BirdMode mode)? loading,
    TResult? Function(Bird bird, BirdMode mode)? loaded,
  }) {
    return loaded?.call(bird, mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bird bird, BirdMode mode)? loading,
    TResult Function(Bird bird, BirdMode mode)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(bird, mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirdLoading value) loading,
    required TResult Function(BirdLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdLoading value)? loading,
    TResult? Function(BirdLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdLoading value)? loading,
    TResult Function(BirdLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BirdLoaded implements BirdState {
  const factory BirdLoaded(
      {required final Bird bird,
      required final BirdMode mode}) = _$BirdLoadedImpl;

  @override
  Bird get bird;
  @override
  BirdMode get mode;

  /// Create a copy of BirdState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BirdLoadedImplCopyWith<_$BirdLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
