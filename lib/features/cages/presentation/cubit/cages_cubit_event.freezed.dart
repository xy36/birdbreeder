// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cages_cubit_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CagesCubitEvent {
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
    required TResult Function(CagesEventUpdateFailed value) updateFailed,
    required TResult Function(CagesEventCreateFailed value) createFailed,
    required TResult Function(CagesEventDeleteFailed value) deleteFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CagesEventUpdateFailed value)? updateFailed,
    TResult? Function(CagesEventCreateFailed value)? createFailed,
    TResult? Function(CagesEventDeleteFailed value)? deleteFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CagesEventUpdateFailed value)? updateFailed,
    TResult Function(CagesEventCreateFailed value)? createFailed,
    TResult Function(CagesEventDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CagesCubitEventCopyWith<$Res> {
  factory $CagesCubitEventCopyWith(
          CagesCubitEvent value, $Res Function(CagesCubitEvent) then) =
      _$CagesCubitEventCopyWithImpl<$Res, CagesCubitEvent>;
}

/// @nodoc
class _$CagesCubitEventCopyWithImpl<$Res, $Val extends CagesCubitEvent>
    implements $CagesCubitEventCopyWith<$Res> {
  _$CagesCubitEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CagesCubitEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CagesEventUpdateFailedImplCopyWith<$Res> {
  factory _$$CagesEventUpdateFailedImplCopyWith(
          _$CagesEventUpdateFailedImpl value,
          $Res Function(_$CagesEventUpdateFailedImpl) then) =
      __$$CagesEventUpdateFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CagesEventUpdateFailedImplCopyWithImpl<$Res>
    extends _$CagesCubitEventCopyWithImpl<$Res, _$CagesEventUpdateFailedImpl>
    implements _$$CagesEventUpdateFailedImplCopyWith<$Res> {
  __$$CagesEventUpdateFailedImplCopyWithImpl(
      _$CagesEventUpdateFailedImpl _value,
      $Res Function(_$CagesEventUpdateFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CagesCubitEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CagesEventUpdateFailedImpl implements CagesEventUpdateFailed {
  const _$CagesEventUpdateFailedImpl();

  @override
  String toString() {
    return 'CagesCubitEvent.updateFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CagesEventUpdateFailedImpl);
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
    required TResult Function(CagesEventUpdateFailed value) updateFailed,
    required TResult Function(CagesEventCreateFailed value) createFailed,
    required TResult Function(CagesEventDeleteFailed value) deleteFailed,
  }) {
    return updateFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CagesEventUpdateFailed value)? updateFailed,
    TResult? Function(CagesEventCreateFailed value)? createFailed,
    TResult? Function(CagesEventDeleteFailed value)? deleteFailed,
  }) {
    return updateFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CagesEventUpdateFailed value)? updateFailed,
    TResult Function(CagesEventCreateFailed value)? createFailed,
    TResult Function(CagesEventDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) {
    if (updateFailed != null) {
      return updateFailed(this);
    }
    return orElse();
  }
}

abstract class CagesEventUpdateFailed implements CagesCubitEvent {
  const factory CagesEventUpdateFailed() = _$CagesEventUpdateFailedImpl;
}

/// @nodoc
abstract class _$$CagesEventCreateFailedImplCopyWith<$Res> {
  factory _$$CagesEventCreateFailedImplCopyWith(
          _$CagesEventCreateFailedImpl value,
          $Res Function(_$CagesEventCreateFailedImpl) then) =
      __$$CagesEventCreateFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CagesEventCreateFailedImplCopyWithImpl<$Res>
    extends _$CagesCubitEventCopyWithImpl<$Res, _$CagesEventCreateFailedImpl>
    implements _$$CagesEventCreateFailedImplCopyWith<$Res> {
  __$$CagesEventCreateFailedImplCopyWithImpl(
      _$CagesEventCreateFailedImpl _value,
      $Res Function(_$CagesEventCreateFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CagesCubitEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CagesEventCreateFailedImpl implements CagesEventCreateFailed {
  const _$CagesEventCreateFailedImpl();

  @override
  String toString() {
    return 'CagesCubitEvent.createFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CagesEventCreateFailedImpl);
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
    required TResult Function(CagesEventUpdateFailed value) updateFailed,
    required TResult Function(CagesEventCreateFailed value) createFailed,
    required TResult Function(CagesEventDeleteFailed value) deleteFailed,
  }) {
    return createFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CagesEventUpdateFailed value)? updateFailed,
    TResult? Function(CagesEventCreateFailed value)? createFailed,
    TResult? Function(CagesEventDeleteFailed value)? deleteFailed,
  }) {
    return createFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CagesEventUpdateFailed value)? updateFailed,
    TResult Function(CagesEventCreateFailed value)? createFailed,
    TResult Function(CagesEventDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) {
    if (createFailed != null) {
      return createFailed(this);
    }
    return orElse();
  }
}

abstract class CagesEventCreateFailed implements CagesCubitEvent {
  const factory CagesEventCreateFailed() = _$CagesEventCreateFailedImpl;
}

/// @nodoc
abstract class _$$CagesEventDeleteFailedImplCopyWith<$Res> {
  factory _$$CagesEventDeleteFailedImplCopyWith(
          _$CagesEventDeleteFailedImpl value,
          $Res Function(_$CagesEventDeleteFailedImpl) then) =
      __$$CagesEventDeleteFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CagesEventDeleteFailedImplCopyWithImpl<$Res>
    extends _$CagesCubitEventCopyWithImpl<$Res, _$CagesEventDeleteFailedImpl>
    implements _$$CagesEventDeleteFailedImplCopyWith<$Res> {
  __$$CagesEventDeleteFailedImplCopyWithImpl(
      _$CagesEventDeleteFailedImpl _value,
      $Res Function(_$CagesEventDeleteFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CagesCubitEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CagesEventDeleteFailedImpl implements CagesEventDeleteFailed {
  const _$CagesEventDeleteFailedImpl();

  @override
  String toString() {
    return 'CagesCubitEvent.deleteFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CagesEventDeleteFailedImpl);
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
    required TResult Function(CagesEventUpdateFailed value) updateFailed,
    required TResult Function(CagesEventCreateFailed value) createFailed,
    required TResult Function(CagesEventDeleteFailed value) deleteFailed,
  }) {
    return deleteFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CagesEventUpdateFailed value)? updateFailed,
    TResult? Function(CagesEventCreateFailed value)? createFailed,
    TResult? Function(CagesEventDeleteFailed value)? deleteFailed,
  }) {
    return deleteFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CagesEventUpdateFailed value)? updateFailed,
    TResult Function(CagesEventCreateFailed value)? createFailed,
    TResult Function(CagesEventDeleteFailed value)? deleteFailed,
    required TResult orElse(),
  }) {
    if (deleteFailed != null) {
      return deleteFailed(this);
    }
    return orElse();
  }
}

abstract class CagesEventDeleteFailed implements CagesCubitEvent {
  const factory CagesEventDeleteFailed() = _$CagesEventDeleteFailedImpl;
}
