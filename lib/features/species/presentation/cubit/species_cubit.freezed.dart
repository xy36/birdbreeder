// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'species_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpeciesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() errorScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? errorScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? errorScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpeciesLoading value) loading,
    required TResult Function(SpeciesLoaded value) loaded,
    required TResult Function(SpeciesErrorScreen value) errorScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpeciesLoading value)? loading,
    TResult? Function(SpeciesLoaded value)? loaded,
    TResult? Function(SpeciesErrorScreen value)? errorScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpeciesLoading value)? loading,
    TResult Function(SpeciesLoaded value)? loaded,
    TResult Function(SpeciesErrorScreen value)? errorScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeciesStateCopyWith<$Res> {
  factory $SpeciesStateCopyWith(
          SpeciesState value, $Res Function(SpeciesState) then) =
      _$SpeciesStateCopyWithImpl<$Res, SpeciesState>;
}

/// @nodoc
class _$SpeciesStateCopyWithImpl<$Res, $Val extends SpeciesState>
    implements $SpeciesStateCopyWith<$Res> {
  _$SpeciesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpeciesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SpeciesLoadingImplCopyWith<$Res> {
  factory _$$SpeciesLoadingImplCopyWith(_$SpeciesLoadingImpl value,
          $Res Function(_$SpeciesLoadingImpl) then) =
      __$$SpeciesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpeciesLoadingImplCopyWithImpl<$Res>
    extends _$SpeciesStateCopyWithImpl<$Res, _$SpeciesLoadingImpl>
    implements _$$SpeciesLoadingImplCopyWith<$Res> {
  __$$SpeciesLoadingImplCopyWithImpl(
      _$SpeciesLoadingImpl _value, $Res Function(_$SpeciesLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpeciesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SpeciesLoadingImpl implements SpeciesLoading {
  const _$SpeciesLoadingImpl();

  @override
  String toString() {
    return 'SpeciesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SpeciesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() errorScreen,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? errorScreen,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? errorScreen,
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
    required TResult Function(SpeciesLoading value) loading,
    required TResult Function(SpeciesLoaded value) loaded,
    required TResult Function(SpeciesErrorScreen value) errorScreen,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpeciesLoading value)? loading,
    TResult? Function(SpeciesLoaded value)? loaded,
    TResult? Function(SpeciesErrorScreen value)? errorScreen,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpeciesLoading value)? loading,
    TResult Function(SpeciesLoaded value)? loaded,
    TResult Function(SpeciesErrorScreen value)? errorScreen,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SpeciesLoading implements SpeciesState {
  const factory SpeciesLoading() = _$SpeciesLoadingImpl;
}

/// @nodoc
abstract class _$$SpeciesLoadedImplCopyWith<$Res> {
  factory _$$SpeciesLoadedImplCopyWith(
          _$SpeciesLoadedImpl value, $Res Function(_$SpeciesLoadedImpl) then) =
      __$$SpeciesLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpeciesLoadedImplCopyWithImpl<$Res>
    extends _$SpeciesStateCopyWithImpl<$Res, _$SpeciesLoadedImpl>
    implements _$$SpeciesLoadedImplCopyWith<$Res> {
  __$$SpeciesLoadedImplCopyWithImpl(
      _$SpeciesLoadedImpl _value, $Res Function(_$SpeciesLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpeciesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SpeciesLoadedImpl implements SpeciesLoaded {
  const _$SpeciesLoadedImpl();

  @override
  String toString() {
    return 'SpeciesState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SpeciesLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() errorScreen,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? errorScreen,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? errorScreen,
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
    required TResult Function(SpeciesLoading value) loading,
    required TResult Function(SpeciesLoaded value) loaded,
    required TResult Function(SpeciesErrorScreen value) errorScreen,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpeciesLoading value)? loading,
    TResult? Function(SpeciesLoaded value)? loaded,
    TResult? Function(SpeciesErrorScreen value)? errorScreen,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpeciesLoading value)? loading,
    TResult Function(SpeciesLoaded value)? loaded,
    TResult Function(SpeciesErrorScreen value)? errorScreen,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SpeciesLoaded implements SpeciesState {
  const factory SpeciesLoaded() = _$SpeciesLoadedImpl;
}

/// @nodoc
abstract class _$$SpeciesErrorScreenImplCopyWith<$Res> {
  factory _$$SpeciesErrorScreenImplCopyWith(_$SpeciesErrorScreenImpl value,
          $Res Function(_$SpeciesErrorScreenImpl) then) =
      __$$SpeciesErrorScreenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpeciesErrorScreenImplCopyWithImpl<$Res>
    extends _$SpeciesStateCopyWithImpl<$Res, _$SpeciesErrorScreenImpl>
    implements _$$SpeciesErrorScreenImplCopyWith<$Res> {
  __$$SpeciesErrorScreenImplCopyWithImpl(_$SpeciesErrorScreenImpl _value,
      $Res Function(_$SpeciesErrorScreenImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpeciesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SpeciesErrorScreenImpl implements SpeciesErrorScreen {
  const _$SpeciesErrorScreenImpl();

  @override
  String toString() {
    return 'SpeciesState.errorScreen()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SpeciesErrorScreenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() errorScreen,
  }) {
    return errorScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? errorScreen,
  }) {
    return errorScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? errorScreen,
    required TResult orElse(),
  }) {
    if (errorScreen != null) {
      return errorScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SpeciesLoading value) loading,
    required TResult Function(SpeciesLoaded value) loaded,
    required TResult Function(SpeciesErrorScreen value) errorScreen,
  }) {
    return errorScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SpeciesLoading value)? loading,
    TResult? Function(SpeciesLoaded value)? loaded,
    TResult? Function(SpeciesErrorScreen value)? errorScreen,
  }) {
    return errorScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SpeciesLoading value)? loading,
    TResult Function(SpeciesLoaded value)? loaded,
    TResult Function(SpeciesErrorScreen value)? errorScreen,
    required TResult orElse(),
  }) {
    if (errorScreen != null) {
      return errorScreen(this);
    }
    return orElse();
  }
}

abstract class SpeciesErrorScreen implements SpeciesState {
  const factory SpeciesErrorScreen() = _$SpeciesErrorScreenImpl;
}
