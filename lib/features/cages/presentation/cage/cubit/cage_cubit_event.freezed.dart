// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cage_cubit_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CageCubitEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() updateFailed,
    required TResult Function() createFailed,
    required TResult Function() deleteFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? updateFailed,
    TResult? Function()? createFailed,
    TResult? Function()? deleteFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateFailed,
    TResult Function()? createFailed,
    TResult Function()? deleteFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CageEventUpdateFailed value) updateFailed,
    required TResult Function(CageEventCreateFailed value) createFailed,
    required TResult Function(CageEventDeleteFailed value) deleteFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CageEventUpdateFailed value)? updateFailed,
    TResult? Function(CageEventCreateFailed value)? createFailed,
    TResult? Function(CageEventDeleteFailed value)? deleteFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CageEventUpdateFailed value)? updateFailed,
    TResult Function(CageEventCreateFailed value)? createFailed,
    TResult Function(CageEventDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CageCubitEventCopyWith<$Res> {
  factory $CageCubitEventCopyWith(
          CageCubitEvent value, $Res Function(CageCubitEvent) then) =
      _$CageCubitEventCopyWithImpl<$Res, CageCubitEvent>;
}

/// @nodoc
class _$CageCubitEventCopyWithImpl<$Res, $Val extends CageCubitEvent>
    implements $CageCubitEventCopyWith<$Res> {
  _$CageCubitEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CageCubitEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CageEventUpdateFailedImplCopyWith<$Res> {
  factory _$$CageEventUpdateFailedImplCopyWith(
          _$CageEventUpdateFailedImpl value,
          $Res Function(_$CageEventUpdateFailedImpl) then) =
      __$$CageEventUpdateFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CageEventUpdateFailedImplCopyWithImpl<$Res>
    extends _$CageCubitEventCopyWithImpl<$Res, _$CageEventUpdateFailedImpl>
    implements _$$CageEventUpdateFailedImplCopyWith<$Res> {
  __$$CageEventUpdateFailedImplCopyWithImpl(_$CageEventUpdateFailedImpl _value,
      $Res Function(_$CageEventUpdateFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CageCubitEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CageEventUpdateFailedImpl implements CageEventUpdateFailed {
  const _$CageEventUpdateFailedImpl();

  @override
  String toString() {
    return 'CageCubitEvent.updateFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CageEventUpdateFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() updateFailed,
    required TResult Function() createFailed,
    required TResult Function() deleteFailed,
  }) {
    return updateFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? updateFailed,
    TResult? Function()? createFailed,
    TResult? Function()? deleteFailed,
  }) {
    return updateFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateFailed,
    TResult Function()? createFailed,
    TResult Function()? deleteFailed,
    required TResult orElse(),
  }) {
    if (updateFailed != null) {
      return updateFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CageEventUpdateFailed value) updateFailed,
    required TResult Function(CageEventCreateFailed value) createFailed,
    required TResult Function(CageEventDeleteFailed value) deleteFailed,
  }) {
    return updateFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CageEventUpdateFailed value)? updateFailed,
    TResult? Function(CageEventCreateFailed value)? createFailed,
    TResult? Function(CageEventDeleteFailed value)? deleteFailed,
  }) {
    return updateFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CageEventUpdateFailed value)? updateFailed,
    TResult Function(CageEventCreateFailed value)? createFailed,
    TResult Function(CageEventDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) {
    if (updateFailed != null) {
      return updateFailed(this);
    }
    return orElse();
  }
}

abstract class CageEventUpdateFailed implements CageCubitEvent {
  const factory CageEventUpdateFailed() = _$CageEventUpdateFailedImpl;
}

/// @nodoc
abstract class _$$CageEventCreateFailedImplCopyWith<$Res> {
  factory _$$CageEventCreateFailedImplCopyWith(
          _$CageEventCreateFailedImpl value,
          $Res Function(_$CageEventCreateFailedImpl) then) =
      __$$CageEventCreateFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CageEventCreateFailedImplCopyWithImpl<$Res>
    extends _$CageCubitEventCopyWithImpl<$Res, _$CageEventCreateFailedImpl>
    implements _$$CageEventCreateFailedImplCopyWith<$Res> {
  __$$CageEventCreateFailedImplCopyWithImpl(_$CageEventCreateFailedImpl _value,
      $Res Function(_$CageEventCreateFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CageCubitEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CageEventCreateFailedImpl implements CageEventCreateFailed {
  const _$CageEventCreateFailedImpl();

  @override
  String toString() {
    return 'CageCubitEvent.createFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CageEventCreateFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() updateFailed,
    required TResult Function() createFailed,
    required TResult Function() deleteFailed,
  }) {
    return createFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? updateFailed,
    TResult? Function()? createFailed,
    TResult? Function()? deleteFailed,
  }) {
    return createFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateFailed,
    TResult Function()? createFailed,
    TResult Function()? deleteFailed,
    required TResult orElse(),
  }) {
    if (createFailed != null) {
      return createFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CageEventUpdateFailed value) updateFailed,
    required TResult Function(CageEventCreateFailed value) createFailed,
    required TResult Function(CageEventDeleteFailed value) deleteFailed,
  }) {
    return createFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CageEventUpdateFailed value)? updateFailed,
    TResult? Function(CageEventCreateFailed value)? createFailed,
    TResult? Function(CageEventDeleteFailed value)? deleteFailed,
  }) {
    return createFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CageEventUpdateFailed value)? updateFailed,
    TResult Function(CageEventCreateFailed value)? createFailed,
    TResult Function(CageEventDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) {
    if (createFailed != null) {
      return createFailed(this);
    }
    return orElse();
  }
}

abstract class CageEventCreateFailed implements CageCubitEvent {
  const factory CageEventCreateFailed() = _$CageEventCreateFailedImpl;
}

/// @nodoc
abstract class _$$CageEventDeleteFailedImplCopyWith<$Res> {
  factory _$$CageEventDeleteFailedImplCopyWith(
          _$CageEventDeleteFailedImpl value,
          $Res Function(_$CageEventDeleteFailedImpl) then) =
      __$$CageEventDeleteFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CageEventDeleteFailedImplCopyWithImpl<$Res>
    extends _$CageCubitEventCopyWithImpl<$Res, _$CageEventDeleteFailedImpl>
    implements _$$CageEventDeleteFailedImplCopyWith<$Res> {
  __$$CageEventDeleteFailedImplCopyWithImpl(_$CageEventDeleteFailedImpl _value,
      $Res Function(_$CageEventDeleteFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CageCubitEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CageEventDeleteFailedImpl implements CageEventDeleteFailed {
  const _$CageEventDeleteFailedImpl();

  @override
  String toString() {
    return 'CageCubitEvent.deleteFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CageEventDeleteFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() updateFailed,
    required TResult Function() createFailed,
    required TResult Function() deleteFailed,
  }) {
    return deleteFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? updateFailed,
    TResult? Function()? createFailed,
    TResult? Function()? deleteFailed,
  }) {
    return deleteFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? updateFailed,
    TResult Function()? createFailed,
    TResult Function()? deleteFailed,
    required TResult orElse(),
  }) {
    if (deleteFailed != null) {
      return deleteFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CageEventUpdateFailed value) updateFailed,
    required TResult Function(CageEventCreateFailed value) createFailed,
    required TResult Function(CageEventDeleteFailed value) deleteFailed,
  }) {
    return deleteFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CageEventUpdateFailed value)? updateFailed,
    TResult? Function(CageEventCreateFailed value)? createFailed,
    TResult? Function(CageEventDeleteFailed value)? deleteFailed,
  }) {
    return deleteFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CageEventUpdateFailed value)? updateFailed,
    TResult Function(CageEventCreateFailed value)? createFailed,
    TResult Function(CageEventDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) {
    if (deleteFailed != null) {
      return deleteFailed(this);
    }
    return orElse();
  }
}

abstract class CageEventDeleteFailed implements CageCubitEvent {
  const factory CageEventDeleteFailed() = _$CageEventDeleteFailedImpl;
}
