// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contacts_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContactsState {
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
    required TResult Function(ContactsLoading value) loading,
    required TResult Function(ContactsLoaded value) loaded,
    required TResult Function(ContactsErrorScreen value) errorScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContactsLoading value)? loading,
    TResult? Function(ContactsLoaded value)? loaded,
    TResult? Function(ContactsErrorScreen value)? errorScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactsLoading value)? loading,
    TResult Function(ContactsLoaded value)? loaded,
    TResult Function(ContactsErrorScreen value)? errorScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsStateCopyWith<$Res> {
  factory $ContactsStateCopyWith(
          ContactsState value, $Res Function(ContactsState) then) =
      _$ContactsStateCopyWithImpl<$Res, ContactsState>;
}

/// @nodoc
class _$ContactsStateCopyWithImpl<$Res, $Val extends ContactsState>
    implements $ContactsStateCopyWith<$Res> {
  _$ContactsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ContactsLoadingImplCopyWith<$Res> {
  factory _$$ContactsLoadingImplCopyWith(_$ContactsLoadingImpl value,
          $Res Function(_$ContactsLoadingImpl) then) =
      __$$ContactsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactsLoadingImplCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res, _$ContactsLoadingImpl>
    implements _$$ContactsLoadingImplCopyWith<$Res> {
  __$$ContactsLoadingImplCopyWithImpl(
      _$ContactsLoadingImpl _value, $Res Function(_$ContactsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ContactsLoadingImpl implements ContactsLoading {
  const _$ContactsLoadingImpl();

  @override
  String toString() {
    return 'ContactsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ContactsLoadingImpl);
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
    required TResult Function(ContactsLoading value) loading,
    required TResult Function(ContactsLoaded value) loaded,
    required TResult Function(ContactsErrorScreen value) errorScreen,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContactsLoading value)? loading,
    TResult? Function(ContactsLoaded value)? loaded,
    TResult? Function(ContactsErrorScreen value)? errorScreen,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactsLoading value)? loading,
    TResult Function(ContactsLoaded value)? loaded,
    TResult Function(ContactsErrorScreen value)? errorScreen,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ContactsLoading implements ContactsState {
  const factory ContactsLoading() = _$ContactsLoadingImpl;
}

/// @nodoc
abstract class _$$ContactsLoadedImplCopyWith<$Res> {
  factory _$$ContactsLoadedImplCopyWith(_$ContactsLoadedImpl value,
          $Res Function(_$ContactsLoadedImpl) then) =
      __$$ContactsLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactsLoadedImplCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res, _$ContactsLoadedImpl>
    implements _$$ContactsLoadedImplCopyWith<$Res> {
  __$$ContactsLoadedImplCopyWithImpl(
      _$ContactsLoadedImpl _value, $Res Function(_$ContactsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ContactsLoadedImpl implements ContactsLoaded {
  const _$ContactsLoadedImpl();

  @override
  String toString() {
    return 'ContactsState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ContactsLoadedImpl);
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
    required TResult Function(ContactsLoading value) loading,
    required TResult Function(ContactsLoaded value) loaded,
    required TResult Function(ContactsErrorScreen value) errorScreen,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContactsLoading value)? loading,
    TResult? Function(ContactsLoaded value)? loaded,
    TResult? Function(ContactsErrorScreen value)? errorScreen,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactsLoading value)? loading,
    TResult Function(ContactsLoaded value)? loaded,
    TResult Function(ContactsErrorScreen value)? errorScreen,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ContactsLoaded implements ContactsState {
  const factory ContactsLoaded() = _$ContactsLoadedImpl;
}

/// @nodoc
abstract class _$$ContactsErrorScreenImplCopyWith<$Res> {
  factory _$$ContactsErrorScreenImplCopyWith(_$ContactsErrorScreenImpl value,
          $Res Function(_$ContactsErrorScreenImpl) then) =
      __$$ContactsErrorScreenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactsErrorScreenImplCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res, _$ContactsErrorScreenImpl>
    implements _$$ContactsErrorScreenImplCopyWith<$Res> {
  __$$ContactsErrorScreenImplCopyWithImpl(_$ContactsErrorScreenImpl _value,
      $Res Function(_$ContactsErrorScreenImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ContactsErrorScreenImpl implements ContactsErrorScreen {
  const _$ContactsErrorScreenImpl();

  @override
  String toString() {
    return 'ContactsState.errorScreen()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactsErrorScreenImpl);
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
    required TResult Function(ContactsLoading value) loading,
    required TResult Function(ContactsLoaded value) loaded,
    required TResult Function(ContactsErrorScreen value) errorScreen,
  }) {
    return errorScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContactsLoading value)? loading,
    TResult? Function(ContactsLoaded value)? loaded,
    TResult? Function(ContactsErrorScreen value)? errorScreen,
  }) {
    return errorScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactsLoading value)? loading,
    TResult Function(ContactsLoaded value)? loaded,
    TResult Function(ContactsErrorScreen value)? errorScreen,
    required TResult orElse(),
  }) {
    if (errorScreen != null) {
      return errorScreen(this);
    }
    return orElse();
  }
}

abstract class ContactsErrorScreen implements ContactsState {
  const factory ContactsErrorScreen() = _$ContactsErrorScreenImpl;
}
