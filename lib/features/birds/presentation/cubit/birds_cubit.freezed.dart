// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'birds_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BirdsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Bird> birds) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Bird> birds)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Bird> birds)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirdsInitial value) initial,
    required TResult Function(BirdsLoading value) loading,
    required TResult Function(BirdsLoaded value) loaded,
    required TResult Function(BirdsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdsInitial value)? initial,
    TResult? Function(BirdsLoading value)? loading,
    TResult? Function(BirdsLoaded value)? loaded,
    TResult? Function(BirdsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdsInitial value)? initial,
    TResult Function(BirdsLoading value)? loading,
    TResult Function(BirdsLoaded value)? loaded,
    TResult Function(BirdsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirdsStateCopyWith<$Res> {
  factory $BirdsStateCopyWith(
          BirdsState value, $Res Function(BirdsState) then) =
      _$BirdsStateCopyWithImpl<$Res, BirdsState>;
}

/// @nodoc
class _$BirdsStateCopyWithImpl<$Res, $Val extends BirdsState>
    implements $BirdsStateCopyWith<$Res> {
  _$BirdsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BirdsInitialImplCopyWith<$Res> {
  factory _$$BirdsInitialImplCopyWith(
          _$BirdsInitialImpl value, $Res Function(_$BirdsInitialImpl) then) =
      __$$BirdsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BirdsInitialImplCopyWithImpl<$Res>
    extends _$BirdsStateCopyWithImpl<$Res, _$BirdsInitialImpl>
    implements _$$BirdsInitialImplCopyWith<$Res> {
  __$$BirdsInitialImplCopyWithImpl(
      _$BirdsInitialImpl _value, $Res Function(_$BirdsInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BirdsInitialImpl implements BirdsInitial {
  const _$BirdsInitialImpl();

  @override
  String toString() {
    return 'BirdsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BirdsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Bird> birds) loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Bird> birds)? loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Bird> birds)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirdsInitial value) initial,
    required TResult Function(BirdsLoading value) loading,
    required TResult Function(BirdsLoaded value) loaded,
    required TResult Function(BirdsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdsInitial value)? initial,
    TResult? Function(BirdsLoading value)? loading,
    TResult? Function(BirdsLoaded value)? loaded,
    TResult? Function(BirdsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdsInitial value)? initial,
    TResult Function(BirdsLoading value)? loading,
    TResult Function(BirdsLoaded value)? loaded,
    TResult Function(BirdsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BirdsInitial implements BirdsState {
  const factory BirdsInitial() = _$BirdsInitialImpl;
}

/// @nodoc
abstract class _$$BirdsLoadingImplCopyWith<$Res> {
  factory _$$BirdsLoadingImplCopyWith(
          _$BirdsLoadingImpl value, $Res Function(_$BirdsLoadingImpl) then) =
      __$$BirdsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BirdsLoadingImplCopyWithImpl<$Res>
    extends _$BirdsStateCopyWithImpl<$Res, _$BirdsLoadingImpl>
    implements _$$BirdsLoadingImplCopyWith<$Res> {
  __$$BirdsLoadingImplCopyWithImpl(
      _$BirdsLoadingImpl _value, $Res Function(_$BirdsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BirdsLoadingImpl implements BirdsLoading {
  const _$BirdsLoadingImpl();

  @override
  String toString() {
    return 'BirdsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BirdsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Bird> birds) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Bird> birds)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Bird> birds)? loaded,
    TResult Function()? error,
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
    required TResult Function(BirdsInitial value) initial,
    required TResult Function(BirdsLoading value) loading,
    required TResult Function(BirdsLoaded value) loaded,
    required TResult Function(BirdsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdsInitial value)? initial,
    TResult? Function(BirdsLoading value)? loading,
    TResult? Function(BirdsLoaded value)? loaded,
    TResult? Function(BirdsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdsInitial value)? initial,
    TResult Function(BirdsLoading value)? loading,
    TResult Function(BirdsLoaded value)? loaded,
    TResult Function(BirdsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BirdsLoading implements BirdsState {
  const factory BirdsLoading() = _$BirdsLoadingImpl;
}

/// @nodoc
abstract class _$$BirdsLoadedImplCopyWith<$Res> {
  factory _$$BirdsLoadedImplCopyWith(
          _$BirdsLoadedImpl value, $Res Function(_$BirdsLoadedImpl) then) =
      __$$BirdsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Bird> birds});
}

/// @nodoc
class __$$BirdsLoadedImplCopyWithImpl<$Res>
    extends _$BirdsStateCopyWithImpl<$Res, _$BirdsLoadedImpl>
    implements _$$BirdsLoadedImplCopyWith<$Res> {
  __$$BirdsLoadedImplCopyWithImpl(
      _$BirdsLoadedImpl _value, $Res Function(_$BirdsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birds = null,
  }) {
    return _then(_$BirdsLoadedImpl(
      birds: null == birds
          ? _value._birds
          : birds // ignore: cast_nullable_to_non_nullable
              as List<Bird>,
    ));
  }
}

/// @nodoc

class _$BirdsLoadedImpl implements BirdsLoaded {
  const _$BirdsLoadedImpl({required final List<Bird> birds}) : _birds = birds;

  final List<Bird> _birds;
  @override
  List<Bird> get birds {
    if (_birds is EqualUnmodifiableListView) return _birds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_birds);
  }

  @override
  String toString() {
    return 'BirdsState.loaded(birds: $birds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdsLoadedImpl &&
            const DeepCollectionEquality().equals(other._birds, _birds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_birds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdsLoadedImplCopyWith<_$BirdsLoadedImpl> get copyWith =>
      __$$BirdsLoadedImplCopyWithImpl<_$BirdsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Bird> birds) loaded,
    required TResult Function() error,
  }) {
    return loaded(birds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Bird> birds)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(birds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Bird> birds)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(birds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirdsInitial value) initial,
    required TResult Function(BirdsLoading value) loading,
    required TResult Function(BirdsLoaded value) loaded,
    required TResult Function(BirdsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdsInitial value)? initial,
    TResult? Function(BirdsLoading value)? loading,
    TResult? Function(BirdsLoaded value)? loaded,
    TResult? Function(BirdsError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdsInitial value)? initial,
    TResult Function(BirdsLoading value)? loading,
    TResult Function(BirdsLoaded value)? loaded,
    TResult Function(BirdsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BirdsLoaded implements BirdsState {
  const factory BirdsLoaded({required final List<Bird> birds}) =
      _$BirdsLoadedImpl;

  List<Bird> get birds;
  @JsonKey(ignore: true)
  _$$BirdsLoadedImplCopyWith<_$BirdsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BirdsErrorImplCopyWith<$Res> {
  factory _$$BirdsErrorImplCopyWith(
          _$BirdsErrorImpl value, $Res Function(_$BirdsErrorImpl) then) =
      __$$BirdsErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BirdsErrorImplCopyWithImpl<$Res>
    extends _$BirdsStateCopyWithImpl<$Res, _$BirdsErrorImpl>
    implements _$$BirdsErrorImplCopyWith<$Res> {
  __$$BirdsErrorImplCopyWithImpl(
      _$BirdsErrorImpl _value, $Res Function(_$BirdsErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BirdsErrorImpl implements BirdsError {
  const _$BirdsErrorImpl();

  @override
  String toString() {
    return 'BirdsState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BirdsErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Bird> birds) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Bird> birds)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Bird> birds)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirdsInitial value) initial,
    required TResult Function(BirdsLoading value) loading,
    required TResult Function(BirdsLoaded value) loaded,
    required TResult Function(BirdsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdsInitial value)? initial,
    TResult? Function(BirdsLoading value)? loading,
    TResult? Function(BirdsLoaded value)? loaded,
    TResult? Function(BirdsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdsInitial value)? initial,
    TResult Function(BirdsLoading value)? loading,
    TResult Function(BirdsLoaded value)? loaded,
    TResult Function(BirdsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BirdsError implements BirdsState {
  const factory BirdsError() = _$BirdsErrorImpl;
}
