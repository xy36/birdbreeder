// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bird_cubit_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BirdCubitEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deleted,
    required TResult Function() duplicated,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? deleted,
    TResult? Function()? duplicated,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deleted,
    TResult Function()? duplicated,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirdCubitEventDeleted value) deleted,
    required TResult Function(BirdCubitEventDuplicated value) duplicated,
    required TResult Function(BirdCubitEventError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdCubitEventDeleted value)? deleted,
    TResult? Function(BirdCubitEventDuplicated value)? duplicated,
    TResult? Function(BirdCubitEventError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdCubitEventDeleted value)? deleted,
    TResult Function(BirdCubitEventDuplicated value)? duplicated,
    TResult Function(BirdCubitEventError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirdCubitEventCopyWith<$Res> {
  factory $BirdCubitEventCopyWith(
          BirdCubitEvent value, $Res Function(BirdCubitEvent) then) =
      _$BirdCubitEventCopyWithImpl<$Res, BirdCubitEvent>;
}

/// @nodoc
class _$BirdCubitEventCopyWithImpl<$Res, $Val extends BirdCubitEvent>
    implements $BirdCubitEventCopyWith<$Res> {
  _$BirdCubitEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BirdCubitEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BirdCubitEventDeletedImplCopyWith<$Res> {
  factory _$$BirdCubitEventDeletedImplCopyWith(
          _$BirdCubitEventDeletedImpl value,
          $Res Function(_$BirdCubitEventDeletedImpl) then) =
      __$$BirdCubitEventDeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BirdCubitEventDeletedImplCopyWithImpl<$Res>
    extends _$BirdCubitEventCopyWithImpl<$Res, _$BirdCubitEventDeletedImpl>
    implements _$$BirdCubitEventDeletedImplCopyWith<$Res> {
  __$$BirdCubitEventDeletedImplCopyWithImpl(_$BirdCubitEventDeletedImpl _value,
      $Res Function(_$BirdCubitEventDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BirdCubitEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BirdCubitEventDeletedImpl implements BirdCubitEventDeleted {
  const _$BirdCubitEventDeletedImpl();

  @override
  String toString() {
    return 'BirdCubitEvent.deleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdCubitEventDeletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deleted,
    required TResult Function() duplicated,
    required TResult Function() error,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? deleted,
    TResult? Function()? duplicated,
    TResult? Function()? error,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deleted,
    TResult Function()? duplicated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirdCubitEventDeleted value) deleted,
    required TResult Function(BirdCubitEventDuplicated value) duplicated,
    required TResult Function(BirdCubitEventError value) error,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdCubitEventDeleted value)? deleted,
    TResult? Function(BirdCubitEventDuplicated value)? duplicated,
    TResult? Function(BirdCubitEventError value)? error,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdCubitEventDeleted value)? deleted,
    TResult Function(BirdCubitEventDuplicated value)? duplicated,
    TResult Function(BirdCubitEventError value)? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class BirdCubitEventDeleted implements BirdCubitEvent {
  const factory BirdCubitEventDeleted() = _$BirdCubitEventDeletedImpl;
}

/// @nodoc
abstract class _$$BirdCubitEventDuplicatedImplCopyWith<$Res> {
  factory _$$BirdCubitEventDuplicatedImplCopyWith(
          _$BirdCubitEventDuplicatedImpl value,
          $Res Function(_$BirdCubitEventDuplicatedImpl) then) =
      __$$BirdCubitEventDuplicatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BirdCubitEventDuplicatedImplCopyWithImpl<$Res>
    extends _$BirdCubitEventCopyWithImpl<$Res, _$BirdCubitEventDuplicatedImpl>
    implements _$$BirdCubitEventDuplicatedImplCopyWith<$Res> {
  __$$BirdCubitEventDuplicatedImplCopyWithImpl(
      _$BirdCubitEventDuplicatedImpl _value,
      $Res Function(_$BirdCubitEventDuplicatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BirdCubitEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BirdCubitEventDuplicatedImpl implements BirdCubitEventDuplicated {
  const _$BirdCubitEventDuplicatedImpl();

  @override
  String toString() {
    return 'BirdCubitEvent.duplicated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdCubitEventDuplicatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deleted,
    required TResult Function() duplicated,
    required TResult Function() error,
  }) {
    return duplicated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? deleted,
    TResult? Function()? duplicated,
    TResult? Function()? error,
  }) {
    return duplicated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deleted,
    TResult Function()? duplicated,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (duplicated != null) {
      return duplicated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirdCubitEventDeleted value) deleted,
    required TResult Function(BirdCubitEventDuplicated value) duplicated,
    required TResult Function(BirdCubitEventError value) error,
  }) {
    return duplicated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdCubitEventDeleted value)? deleted,
    TResult? Function(BirdCubitEventDuplicated value)? duplicated,
    TResult? Function(BirdCubitEventError value)? error,
  }) {
    return duplicated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdCubitEventDeleted value)? deleted,
    TResult Function(BirdCubitEventDuplicated value)? duplicated,
    TResult Function(BirdCubitEventError value)? error,
    required TResult orElse(),
  }) {
    if (duplicated != null) {
      return duplicated(this);
    }
    return orElse();
  }
}

abstract class BirdCubitEventDuplicated implements BirdCubitEvent {
  const factory BirdCubitEventDuplicated() = _$BirdCubitEventDuplicatedImpl;
}

/// @nodoc
abstract class _$$BirdCubitEventErrorImplCopyWith<$Res> {
  factory _$$BirdCubitEventErrorImplCopyWith(_$BirdCubitEventErrorImpl value,
          $Res Function(_$BirdCubitEventErrorImpl) then) =
      __$$BirdCubitEventErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BirdCubitEventErrorImplCopyWithImpl<$Res>
    extends _$BirdCubitEventCopyWithImpl<$Res, _$BirdCubitEventErrorImpl>
    implements _$$BirdCubitEventErrorImplCopyWith<$Res> {
  __$$BirdCubitEventErrorImplCopyWithImpl(_$BirdCubitEventErrorImpl _value,
      $Res Function(_$BirdCubitEventErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of BirdCubitEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BirdCubitEventErrorImpl implements BirdCubitEventError {
  const _$BirdCubitEventErrorImpl();

  @override
  String toString() {
    return 'BirdCubitEvent.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdCubitEventErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() deleted,
    required TResult Function() duplicated,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? deleted,
    TResult? Function()? duplicated,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? deleted,
    TResult Function()? duplicated,
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
    required TResult Function(BirdCubitEventDeleted value) deleted,
    required TResult Function(BirdCubitEventDuplicated value) duplicated,
    required TResult Function(BirdCubitEventError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdCubitEventDeleted value)? deleted,
    TResult? Function(BirdCubitEventDuplicated value)? duplicated,
    TResult? Function(BirdCubitEventError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdCubitEventDeleted value)? deleted,
    TResult Function(BirdCubitEventDuplicated value)? duplicated,
    TResult Function(BirdCubitEventError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BirdCubitEventError implements BirdCubitEvent {
  const factory BirdCubitEventError() = _$BirdCubitEventErrorImpl;
}
