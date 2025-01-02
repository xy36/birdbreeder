// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cages_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CagesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Cage cage) addCage,
    required TResult Function(Cage cage) deleteCage,
    required TResult Function(Cage cage) editCage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Cage cage)? addCage,
    TResult? Function(Cage cage)? deleteCage,
    TResult? Function(Cage cage)? editCage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Cage cage)? addCage,
    TResult Function(Cage cage)? deleteCage,
    TResult Function(Cage cage)? editCage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(AddCage value) addCage,
    required TResult Function(DeleteCage value) deleteCage,
    required TResult Function(EditCage value) editCage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(AddCage value)? addCage,
    TResult? Function(DeleteCage value)? deleteCage,
    TResult? Function(EditCage value)? editCage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(AddCage value)? addCage,
    TResult Function(DeleteCage value)? deleteCage,
    TResult Function(EditCage value)? editCage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CagesEventCopyWith<$Res> {
  factory $CagesEventCopyWith(
          CagesEvent value, $Res Function(CagesEvent) then) =
      _$CagesEventCopyWithImpl<$Res, CagesEvent>;
}

/// @nodoc
class _$CagesEventCopyWithImpl<$Res, $Val extends CagesEvent>
    implements $CagesEventCopyWith<$Res> {
  _$CagesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CagesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
          _$LoadImpl value, $Res Function(_$LoadImpl) then) =
      __$$LoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$CagesEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of CagesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadImpl implements Load {
  const _$LoadImpl();

  @override
  String toString() {
    return 'CagesEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Cage cage) addCage,
    required TResult Function(Cage cage) deleteCage,
    required TResult Function(Cage cage) editCage,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Cage cage)? addCage,
    TResult? Function(Cage cage)? deleteCage,
    TResult? Function(Cage cage)? editCage,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Cage cage)? addCage,
    TResult Function(Cage cage)? deleteCage,
    TResult Function(Cage cage)? editCage,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(AddCage value) addCage,
    required TResult Function(DeleteCage value) deleteCage,
    required TResult Function(EditCage value) editCage,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(AddCage value)? addCage,
    TResult? Function(DeleteCage value)? deleteCage,
    TResult? Function(EditCage value)? editCage,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(AddCage value)? addCage,
    TResult Function(DeleteCage value)? deleteCage,
    TResult Function(EditCage value)? editCage,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class Load implements CagesEvent {
  const factory Load() = _$LoadImpl;
}

/// @nodoc
abstract class _$$AddCageImplCopyWith<$Res> {
  factory _$$AddCageImplCopyWith(
          _$AddCageImpl value, $Res Function(_$AddCageImpl) then) =
      __$$AddCageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Cage cage});

  $CageCopyWith<$Res> get cage;
}

/// @nodoc
class __$$AddCageImplCopyWithImpl<$Res>
    extends _$CagesEventCopyWithImpl<$Res, _$AddCageImpl>
    implements _$$AddCageImplCopyWith<$Res> {
  __$$AddCageImplCopyWithImpl(
      _$AddCageImpl _value, $Res Function(_$AddCageImpl) _then)
      : super(_value, _then);

  /// Create a copy of CagesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cage = null,
  }) {
    return _then(_$AddCageImpl(
      null == cage
          ? _value.cage
          : cage // ignore: cast_nullable_to_non_nullable
              as Cage,
    ));
  }

  /// Create a copy of CagesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CageCopyWith<$Res> get cage {
    return $CageCopyWith<$Res>(_value.cage, (value) {
      return _then(_value.copyWith(cage: value));
    });
  }
}

/// @nodoc

class _$AddCageImpl implements AddCage {
  const _$AddCageImpl(this.cage);

  @override
  final Cage cage;

  @override
  String toString() {
    return 'CagesEvent.addCage(cage: $cage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCageImpl &&
            (identical(other.cage, cage) || other.cage == cage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cage);

  /// Create a copy of CagesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCageImplCopyWith<_$AddCageImpl> get copyWith =>
      __$$AddCageImplCopyWithImpl<_$AddCageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Cage cage) addCage,
    required TResult Function(Cage cage) deleteCage,
    required TResult Function(Cage cage) editCage,
  }) {
    return addCage(cage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Cage cage)? addCage,
    TResult? Function(Cage cage)? deleteCage,
    TResult? Function(Cage cage)? editCage,
  }) {
    return addCage?.call(cage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Cage cage)? addCage,
    TResult Function(Cage cage)? deleteCage,
    TResult Function(Cage cage)? editCage,
    required TResult orElse(),
  }) {
    if (addCage != null) {
      return addCage(cage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(AddCage value) addCage,
    required TResult Function(DeleteCage value) deleteCage,
    required TResult Function(EditCage value) editCage,
  }) {
    return addCage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(AddCage value)? addCage,
    TResult? Function(DeleteCage value)? deleteCage,
    TResult? Function(EditCage value)? editCage,
  }) {
    return addCage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(AddCage value)? addCage,
    TResult Function(DeleteCage value)? deleteCage,
    TResult Function(EditCage value)? editCage,
    required TResult orElse(),
  }) {
    if (addCage != null) {
      return addCage(this);
    }
    return orElse();
  }
}

abstract class AddCage implements CagesEvent {
  const factory AddCage(final Cage cage) = _$AddCageImpl;

  Cage get cage;

  /// Create a copy of CagesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCageImplCopyWith<_$AddCageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCageImplCopyWith<$Res> {
  factory _$$DeleteCageImplCopyWith(
          _$DeleteCageImpl value, $Res Function(_$DeleteCageImpl) then) =
      __$$DeleteCageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Cage cage});

  $CageCopyWith<$Res> get cage;
}

/// @nodoc
class __$$DeleteCageImplCopyWithImpl<$Res>
    extends _$CagesEventCopyWithImpl<$Res, _$DeleteCageImpl>
    implements _$$DeleteCageImplCopyWith<$Res> {
  __$$DeleteCageImplCopyWithImpl(
      _$DeleteCageImpl _value, $Res Function(_$DeleteCageImpl) _then)
      : super(_value, _then);

  /// Create a copy of CagesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cage = null,
  }) {
    return _then(_$DeleteCageImpl(
      null == cage
          ? _value.cage
          : cage // ignore: cast_nullable_to_non_nullable
              as Cage,
    ));
  }

  /// Create a copy of CagesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CageCopyWith<$Res> get cage {
    return $CageCopyWith<$Res>(_value.cage, (value) {
      return _then(_value.copyWith(cage: value));
    });
  }
}

/// @nodoc

class _$DeleteCageImpl implements DeleteCage {
  const _$DeleteCageImpl(this.cage);

  @override
  final Cage cage;

  @override
  String toString() {
    return 'CagesEvent.deleteCage(cage: $cage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCageImpl &&
            (identical(other.cage, cage) || other.cage == cage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cage);

  /// Create a copy of CagesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCageImplCopyWith<_$DeleteCageImpl> get copyWith =>
      __$$DeleteCageImplCopyWithImpl<_$DeleteCageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Cage cage) addCage,
    required TResult Function(Cage cage) deleteCage,
    required TResult Function(Cage cage) editCage,
  }) {
    return deleteCage(cage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Cage cage)? addCage,
    TResult? Function(Cage cage)? deleteCage,
    TResult? Function(Cage cage)? editCage,
  }) {
    return deleteCage?.call(cage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Cage cage)? addCage,
    TResult Function(Cage cage)? deleteCage,
    TResult Function(Cage cage)? editCage,
    required TResult orElse(),
  }) {
    if (deleteCage != null) {
      return deleteCage(cage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(AddCage value) addCage,
    required TResult Function(DeleteCage value) deleteCage,
    required TResult Function(EditCage value) editCage,
  }) {
    return deleteCage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(AddCage value)? addCage,
    TResult? Function(DeleteCage value)? deleteCage,
    TResult? Function(EditCage value)? editCage,
  }) {
    return deleteCage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(AddCage value)? addCage,
    TResult Function(DeleteCage value)? deleteCage,
    TResult Function(EditCage value)? editCage,
    required TResult orElse(),
  }) {
    if (deleteCage != null) {
      return deleteCage(this);
    }
    return orElse();
  }
}

abstract class DeleteCage implements CagesEvent {
  const factory DeleteCage(final Cage cage) = _$DeleteCageImpl;

  Cage get cage;

  /// Create a copy of CagesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCageImplCopyWith<_$DeleteCageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditCageImplCopyWith<$Res> {
  factory _$$EditCageImplCopyWith(
          _$EditCageImpl value, $Res Function(_$EditCageImpl) then) =
      __$$EditCageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Cage cage});

  $CageCopyWith<$Res> get cage;
}

/// @nodoc
class __$$EditCageImplCopyWithImpl<$Res>
    extends _$CagesEventCopyWithImpl<$Res, _$EditCageImpl>
    implements _$$EditCageImplCopyWith<$Res> {
  __$$EditCageImplCopyWithImpl(
      _$EditCageImpl _value, $Res Function(_$EditCageImpl) _then)
      : super(_value, _then);

  /// Create a copy of CagesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cage = null,
  }) {
    return _then(_$EditCageImpl(
      null == cage
          ? _value.cage
          : cage // ignore: cast_nullable_to_non_nullable
              as Cage,
    ));
  }

  /// Create a copy of CagesEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CageCopyWith<$Res> get cage {
    return $CageCopyWith<$Res>(_value.cage, (value) {
      return _then(_value.copyWith(cage: value));
    });
  }
}

/// @nodoc

class _$EditCageImpl implements EditCage {
  const _$EditCageImpl(this.cage);

  @override
  final Cage cage;

  @override
  String toString() {
    return 'CagesEvent.editCage(cage: $cage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditCageImpl &&
            (identical(other.cage, cage) || other.cage == cage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cage);

  /// Create a copy of CagesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditCageImplCopyWith<_$EditCageImpl> get copyWith =>
      __$$EditCageImplCopyWithImpl<_$EditCageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Cage cage) addCage,
    required TResult Function(Cage cage) deleteCage,
    required TResult Function(Cage cage) editCage,
  }) {
    return editCage(cage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Cage cage)? addCage,
    TResult? Function(Cage cage)? deleteCage,
    TResult? Function(Cage cage)? editCage,
  }) {
    return editCage?.call(cage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Cage cage)? addCage,
    TResult Function(Cage cage)? deleteCage,
    TResult Function(Cage cage)? editCage,
    required TResult orElse(),
  }) {
    if (editCage != null) {
      return editCage(cage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(AddCage value) addCage,
    required TResult Function(DeleteCage value) deleteCage,
    required TResult Function(EditCage value) editCage,
  }) {
    return editCage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(AddCage value)? addCage,
    TResult? Function(DeleteCage value)? deleteCage,
    TResult? Function(EditCage value)? editCage,
  }) {
    return editCage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(AddCage value)? addCage,
    TResult Function(DeleteCage value)? deleteCage,
    TResult Function(EditCage value)? editCage,
    required TResult orElse(),
  }) {
    if (editCage != null) {
      return editCage(this);
    }
    return orElse();
  }
}

abstract class EditCage implements CagesEvent {
  const factory EditCage(final Cage cage) = _$EditCageImpl;

  Cage get cage;

  /// Create a copy of CagesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditCageImplCopyWith<_$EditCageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CagesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Cage> cages) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Cage> cages)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Cage> cages)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CagesStateCopyWith<$Res> {
  factory $CagesStateCopyWith(
          CagesState value, $Res Function(CagesState) then) =
      _$CagesStateCopyWithImpl<$Res, CagesState>;
}

/// @nodoc
class _$CagesStateCopyWithImpl<$Res, $Val extends CagesState>
    implements $CagesStateCopyWith<$Res> {
  _$CagesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CagesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CagesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CagesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CagesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Cage> cages) loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Cage> cages)? loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Cage> cages)? loaded,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CagesState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CagesStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CagesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CagesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Cage> cages) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Cage> cages)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Cage> cages)? loaded,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CagesState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Cage> cages});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CagesStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CagesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cages = null,
  }) {
    return _then(_$LoadedImpl(
      cages: null == cages
          ? _value._cages
          : cages // ignore: cast_nullable_to_non_nullable
              as List<Cage>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl({required final List<Cage> cages}) : _cages = cages;

  final List<Cage> _cages;
  @override
  List<Cage> get cages {
    if (_cages is EqualUnmodifiableListView) return _cages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cages);
  }

  @override
  String toString() {
    return 'CagesState.loaded(cages: $cages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._cages, _cages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cages));

  /// Create a copy of CagesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Cage> cages) loaded,
    required TResult Function() error,
  }) {
    return loaded(cages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Cage> cages)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(cages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Cage> cages)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements CagesState {
  const factory Loaded({required final List<Cage> cages}) = _$LoadedImpl;

  List<Cage> get cages;

  /// Create a copy of CagesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CagesStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CagesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'CagesState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Cage> cages) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Cage> cages)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Cage> cages)? loaded,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements CagesState {
  const factory Error() = _$ErrorImpl;
}
