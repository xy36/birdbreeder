// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ColorState {
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
    required TResult Function(ColorLoading value) loading,
    required TResult Function(ColorLoaded value) loaded,
    required TResult Function(ColorErrorScreen value) errorScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ColorLoading value)? loading,
    TResult? Function(ColorLoaded value)? loaded,
    TResult? Function(ColorErrorScreen value)? errorScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ColorLoading value)? loading,
    TResult Function(ColorLoaded value)? loaded,
    TResult Function(ColorErrorScreen value)? errorScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorStateCopyWith<$Res> {
  factory $ColorStateCopyWith(
          ColorState value, $Res Function(ColorState) then) =
      _$ColorStateCopyWithImpl<$Res, ColorState>;
}

/// @nodoc
class _$ColorStateCopyWithImpl<$Res, $Val extends ColorState>
    implements $ColorStateCopyWith<$Res> {
  _$ColorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ColorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ColorLoadingImplCopyWith<$Res> {
  factory _$$ColorLoadingImplCopyWith(
          _$ColorLoadingImpl value, $Res Function(_$ColorLoadingImpl) then) =
      __$$ColorLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ColorLoadingImplCopyWithImpl<$Res>
    extends _$ColorStateCopyWithImpl<$Res, _$ColorLoadingImpl>
    implements _$$ColorLoadingImplCopyWith<$Res> {
  __$$ColorLoadingImplCopyWithImpl(
      _$ColorLoadingImpl _value, $Res Function(_$ColorLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ColorLoadingImpl implements ColorLoading {
  const _$ColorLoadingImpl();

  @override
  String toString() {
    return 'ColorState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ColorLoadingImpl);
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
    required TResult Function(ColorLoading value) loading,
    required TResult Function(ColorLoaded value) loaded,
    required TResult Function(ColorErrorScreen value) errorScreen,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ColorLoading value)? loading,
    TResult? Function(ColorLoaded value)? loaded,
    TResult? Function(ColorErrorScreen value)? errorScreen,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ColorLoading value)? loading,
    TResult Function(ColorLoaded value)? loaded,
    TResult Function(ColorErrorScreen value)? errorScreen,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ColorLoading implements ColorState {
  const factory ColorLoading() = _$ColorLoadingImpl;
}

/// @nodoc
abstract class _$$ColorLoadedImplCopyWith<$Res> {
  factory _$$ColorLoadedImplCopyWith(
          _$ColorLoadedImpl value, $Res Function(_$ColorLoadedImpl) then) =
      __$$ColorLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ColorLoadedImplCopyWithImpl<$Res>
    extends _$ColorStateCopyWithImpl<$Res, _$ColorLoadedImpl>
    implements _$$ColorLoadedImplCopyWith<$Res> {
  __$$ColorLoadedImplCopyWithImpl(
      _$ColorLoadedImpl _value, $Res Function(_$ColorLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ColorLoadedImpl implements ColorLoaded {
  const _$ColorLoadedImpl();

  @override
  String toString() {
    return 'ColorState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ColorLoadedImpl);
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
    required TResult Function(ColorLoading value) loading,
    required TResult Function(ColorLoaded value) loaded,
    required TResult Function(ColorErrorScreen value) errorScreen,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ColorLoading value)? loading,
    TResult? Function(ColorLoaded value)? loaded,
    TResult? Function(ColorErrorScreen value)? errorScreen,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ColorLoading value)? loading,
    TResult Function(ColorLoaded value)? loaded,
    TResult Function(ColorErrorScreen value)? errorScreen,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ColorLoaded implements ColorState {
  const factory ColorLoaded() = _$ColorLoadedImpl;
}

/// @nodoc
abstract class _$$ColorErrorScreenImplCopyWith<$Res> {
  factory _$$ColorErrorScreenImplCopyWith(_$ColorErrorScreenImpl value,
          $Res Function(_$ColorErrorScreenImpl) then) =
      __$$ColorErrorScreenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ColorErrorScreenImplCopyWithImpl<$Res>
    extends _$ColorStateCopyWithImpl<$Res, _$ColorErrorScreenImpl>
    implements _$$ColorErrorScreenImplCopyWith<$Res> {
  __$$ColorErrorScreenImplCopyWithImpl(_$ColorErrorScreenImpl _value,
      $Res Function(_$ColorErrorScreenImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ColorErrorScreenImpl implements ColorErrorScreen {
  const _$ColorErrorScreenImpl();

  @override
  String toString() {
    return 'ColorState.errorScreen()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ColorErrorScreenImpl);
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
    required TResult Function(ColorLoading value) loading,
    required TResult Function(ColorLoaded value) loaded,
    required TResult Function(ColorErrorScreen value) errorScreen,
  }) {
    return errorScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ColorLoading value)? loading,
    TResult? Function(ColorLoaded value)? loaded,
    TResult? Function(ColorErrorScreen value)? errorScreen,
  }) {
    return errorScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ColorLoading value)? loading,
    TResult Function(ColorLoaded value)? loaded,
    TResult Function(ColorErrorScreen value)? errorScreen,
    required TResult orElse(),
  }) {
    if (errorScreen != null) {
      return errorScreen(this);
    }
    return orElse();
  }
}

abstract class ColorErrorScreen implements ColorState {
  const factory ColorErrorScreen() = _$ColorErrorScreenImpl;
}
