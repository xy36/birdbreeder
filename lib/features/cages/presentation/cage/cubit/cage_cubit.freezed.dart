// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cage_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CageLoading value) loading,
    required TResult Function(CageLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CageLoading value)? loading,
    TResult? Function(CageLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CageLoading value)? loading,
    TResult Function(CageLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CageStateCopyWith<$Res> {
  factory $CageStateCopyWith(CageState value, $Res Function(CageState) then) =
      _$CageStateCopyWithImpl<$Res, CageState>;
}

/// @nodoc
class _$CageStateCopyWithImpl<$Res, $Val extends CageState>
    implements $CageStateCopyWith<$Res> {
  _$CageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CageLoadingImplCopyWith<$Res> {
  factory _$$CageLoadingImplCopyWith(
          _$CageLoadingImpl value, $Res Function(_$CageLoadingImpl) then) =
      __$$CageLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CageLoadingImplCopyWithImpl<$Res>
    extends _$CageStateCopyWithImpl<$Res, _$CageLoadingImpl>
    implements _$$CageLoadingImplCopyWith<$Res> {
  __$$CageLoadingImplCopyWithImpl(
      _$CageLoadingImpl _value, $Res Function(_$CageLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CageLoadingImpl implements CageLoading {
  const _$CageLoadingImpl();

  @override
  String toString() {
    return 'CageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CageLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CageLoading value) loading,
    required TResult Function(CageLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CageLoading value)? loading,
    TResult? Function(CageLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CageLoading value)? loading,
    TResult Function(CageLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CageLoading implements CageState {
  const factory CageLoading() = _$CageLoadingImpl;
}

/// @nodoc
abstract class _$$CageLoadedImplCopyWith<$Res> {
  factory _$$CageLoadedImplCopyWith(
          _$CageLoadedImpl value, $Res Function(_$CageLoadedImpl) then) =
      __$$CageLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CageLoadedImplCopyWithImpl<$Res>
    extends _$CageStateCopyWithImpl<$Res, _$CageLoadedImpl>
    implements _$$CageLoadedImplCopyWith<$Res> {
  __$$CageLoadedImplCopyWithImpl(
      _$CageLoadedImpl _value, $Res Function(_$CageLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CageLoadedImpl implements CageLoaded {
  const _$CageLoadedImpl();

  @override
  String toString() {
    return 'CageState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CageLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CageLoading value) loading,
    required TResult Function(CageLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CageLoading value)? loading,
    TResult? Function(CageLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CageLoading value)? loading,
    TResult Function(CageLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CageLoaded implements CageState {
  const factory CageLoaded() = _$CageLoadedImpl;
}
