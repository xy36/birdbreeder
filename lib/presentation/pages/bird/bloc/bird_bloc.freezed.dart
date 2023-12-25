// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bird_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BirdEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bird bird) changed,
    required TResult Function() save,
    required TResult Function() load,
    required TResult Function(bool isEditMode) setEditMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bird bird)? changed,
    TResult? Function()? save,
    TResult? Function()? load,
    TResult? Function(bool isEditMode)? setEditMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bird bird)? changed,
    TResult Function()? save,
    TResult Function()? load,
    TResult Function(bool isEditMode)? setEditMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Changed value) changed,
    required TResult Function(_Save value) save,
    required TResult Function(_Load value) load,
    required TResult Function(_SetEditMode value) setEditMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Changed value)? changed,
    TResult? Function(_Save value)? save,
    TResult? Function(_Load value)? load,
    TResult? Function(_SetEditMode value)? setEditMode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Changed value)? changed,
    TResult Function(_Save value)? save,
    TResult Function(_Load value)? load,
    TResult Function(_SetEditMode value)? setEditMode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirdEventCopyWith<$Res> {
  factory $BirdEventCopyWith(BirdEvent value, $Res Function(BirdEvent) then) =
      _$BirdEventCopyWithImpl<$Res, BirdEvent>;
}

/// @nodoc
class _$BirdEventCopyWithImpl<$Res, $Val extends BirdEvent>
    implements $BirdEventCopyWith<$Res> {
  _$BirdEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChangedCopyWith<$Res> {
  factory _$$_ChangedCopyWith(
          _$_Changed value, $Res Function(_$_Changed) then) =
      __$$_ChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Bird bird});

  $BirdCopyWith<$Res> get bird;
}

/// @nodoc
class __$$_ChangedCopyWithImpl<$Res>
    extends _$BirdEventCopyWithImpl<$Res, _$_Changed>
    implements _$$_ChangedCopyWith<$Res> {
  __$$_ChangedCopyWithImpl(_$_Changed _value, $Res Function(_$_Changed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bird = null,
  }) {
    return _then(_$_Changed(
      bird: null == bird
          ? _value.bird
          : bird // ignore: cast_nullable_to_non_nullable
              as Bird,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BirdCopyWith<$Res> get bird {
    return $BirdCopyWith<$Res>(_value.bird, (value) {
      return _then(_value.copyWith(bird: value));
    });
  }
}

/// @nodoc

class _$_Changed implements _Changed {
  const _$_Changed({required this.bird});

  @override
  final Bird bird;

  @override
  String toString() {
    return 'BirdEvent.changed(bird: $bird)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Changed &&
            (identical(other.bird, bird) || other.bird == bird));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bird);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangedCopyWith<_$_Changed> get copyWith =>
      __$$_ChangedCopyWithImpl<_$_Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bird bird) changed,
    required TResult Function() save,
    required TResult Function() load,
    required TResult Function(bool isEditMode) setEditMode,
  }) {
    return changed(bird);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bird bird)? changed,
    TResult? Function()? save,
    TResult? Function()? load,
    TResult? Function(bool isEditMode)? setEditMode,
  }) {
    return changed?.call(bird);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bird bird)? changed,
    TResult Function()? save,
    TResult Function()? load,
    TResult Function(bool isEditMode)? setEditMode,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(bird);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Changed value) changed,
    required TResult Function(_Save value) save,
    required TResult Function(_Load value) load,
    required TResult Function(_SetEditMode value) setEditMode,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Changed value)? changed,
    TResult? Function(_Save value)? save,
    TResult? Function(_Load value)? load,
    TResult? Function(_SetEditMode value)? setEditMode,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Changed value)? changed,
    TResult Function(_Save value)? save,
    TResult Function(_Load value)? load,
    TResult Function(_SetEditMode value)? setEditMode,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class _Changed implements BirdEvent {
  const factory _Changed({required final Bird bird}) = _$_Changed;

  Bird get bird;
  @JsonKey(ignore: true)
  _$$_ChangedCopyWith<_$_Changed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveCopyWith<$Res> {
  factory _$$_SaveCopyWith(_$_Save value, $Res Function(_$_Save) then) =
      __$$_SaveCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveCopyWithImpl<$Res> extends _$BirdEventCopyWithImpl<$Res, _$_Save>
    implements _$$_SaveCopyWith<$Res> {
  __$$_SaveCopyWithImpl(_$_Save _value, $Res Function(_$_Save) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Save implements _Save {
  const _$_Save();

  @override
  String toString() {
    return 'BirdEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Save);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bird bird) changed,
    required TResult Function() save,
    required TResult Function() load,
    required TResult Function(bool isEditMode) setEditMode,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bird bird)? changed,
    TResult? Function()? save,
    TResult? Function()? load,
    TResult? Function(bool isEditMode)? setEditMode,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bird bird)? changed,
    TResult Function()? save,
    TResult Function()? load,
    TResult Function(bool isEditMode)? setEditMode,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Changed value) changed,
    required TResult Function(_Save value) save,
    required TResult Function(_Load value) load,
    required TResult Function(_SetEditMode value) setEditMode,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Changed value)? changed,
    TResult? Function(_Save value)? save,
    TResult? Function(_Load value)? load,
    TResult? Function(_SetEditMode value)? setEditMode,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Changed value)? changed,
    TResult Function(_Save value)? save,
    TResult Function(_Load value)? load,
    TResult Function(_SetEditMode value)? setEditMode,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements BirdEvent {
  const factory _Save() = _$_Save;
}

/// @nodoc
abstract class _$$_LoadCopyWith<$Res> {
  factory _$$_LoadCopyWith(_$_Load value, $Res Function(_$_Load) then) =
      __$$_LoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadCopyWithImpl<$Res> extends _$BirdEventCopyWithImpl<$Res, _$_Load>
    implements _$$_LoadCopyWith<$Res> {
  __$$_LoadCopyWithImpl(_$_Load _value, $Res Function(_$_Load) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Load implements _Load {
  const _$_Load();

  @override
  String toString() {
    return 'BirdEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bird bird) changed,
    required TResult Function() save,
    required TResult Function() load,
    required TResult Function(bool isEditMode) setEditMode,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bird bird)? changed,
    TResult? Function()? save,
    TResult? Function()? load,
    TResult? Function(bool isEditMode)? setEditMode,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bird bird)? changed,
    TResult Function()? save,
    TResult Function()? load,
    TResult Function(bool isEditMode)? setEditMode,
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
    required TResult Function(_Changed value) changed,
    required TResult Function(_Save value) save,
    required TResult Function(_Load value) load,
    required TResult Function(_SetEditMode value) setEditMode,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Changed value)? changed,
    TResult? Function(_Save value)? save,
    TResult? Function(_Load value)? load,
    TResult? Function(_SetEditMode value)? setEditMode,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Changed value)? changed,
    TResult Function(_Save value)? save,
    TResult Function(_Load value)? load,
    TResult Function(_SetEditMode value)? setEditMode,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements BirdEvent {
  const factory _Load() = _$_Load;
}

/// @nodoc
abstract class _$$_SetEditModeCopyWith<$Res> {
  factory _$$_SetEditModeCopyWith(
          _$_SetEditMode value, $Res Function(_$_SetEditMode) then) =
      __$$_SetEditModeCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isEditMode});
}

/// @nodoc
class __$$_SetEditModeCopyWithImpl<$Res>
    extends _$BirdEventCopyWithImpl<$Res, _$_SetEditMode>
    implements _$$_SetEditModeCopyWith<$Res> {
  __$$_SetEditModeCopyWithImpl(
      _$_SetEditMode _value, $Res Function(_$_SetEditMode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEditMode = null,
  }) {
    return _then(_$_SetEditMode(
      isEditMode: null == isEditMode
          ? _value.isEditMode
          : isEditMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SetEditMode implements _SetEditMode {
  const _$_SetEditMode({required this.isEditMode});

  @override
  final bool isEditMode;

  @override
  String toString() {
    return 'BirdEvent.setEditMode(isEditMode: $isEditMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetEditMode &&
            (identical(other.isEditMode, isEditMode) ||
                other.isEditMode == isEditMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEditMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetEditModeCopyWith<_$_SetEditMode> get copyWith =>
      __$$_SetEditModeCopyWithImpl<_$_SetEditMode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bird bird) changed,
    required TResult Function() save,
    required TResult Function() load,
    required TResult Function(bool isEditMode) setEditMode,
  }) {
    return setEditMode(isEditMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bird bird)? changed,
    TResult? Function()? save,
    TResult? Function()? load,
    TResult? Function(bool isEditMode)? setEditMode,
  }) {
    return setEditMode?.call(isEditMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bird bird)? changed,
    TResult Function()? save,
    TResult Function()? load,
    TResult Function(bool isEditMode)? setEditMode,
    required TResult orElse(),
  }) {
    if (setEditMode != null) {
      return setEditMode(isEditMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Changed value) changed,
    required TResult Function(_Save value) save,
    required TResult Function(_Load value) load,
    required TResult Function(_SetEditMode value) setEditMode,
  }) {
    return setEditMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Changed value)? changed,
    TResult? Function(_Save value)? save,
    TResult? Function(_Load value)? load,
    TResult? Function(_SetEditMode value)? setEditMode,
  }) {
    return setEditMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Changed value)? changed,
    TResult Function(_Save value)? save,
    TResult Function(_Load value)? load,
    TResult Function(_SetEditMode value)? setEditMode,
    required TResult orElse(),
  }) {
    if (setEditMode != null) {
      return setEditMode(this);
    }
    return orElse();
  }
}

abstract class _SetEditMode implements BirdEvent {
  const factory _SetEditMode({required final bool isEditMode}) = _$_SetEditMode;

  bool get isEditMode;
  @JsonKey(ignore: true)
  _$$_SetEditModeCopyWith<_$_SetEditMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BirdState {
  BirdStatus get status => throw _privateConstructorUsedError;
  Bird get bird => throw _privateConstructorUsedError;
  bool get isEditMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BirdStateCopyWith<BirdState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirdStateCopyWith<$Res> {
  factory $BirdStateCopyWith(BirdState value, $Res Function(BirdState) then) =
      _$BirdStateCopyWithImpl<$Res, BirdState>;
  @useResult
  $Res call({BirdStatus status, Bird bird, bool isEditMode});

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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? bird = null,
    Object? isEditMode = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BirdStatus,
      bird: null == bird
          ? _value.bird
          : bird // ignore: cast_nullable_to_non_nullable
              as Bird,
      isEditMode: null == isEditMode
          ? _value.isEditMode
          : isEditMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BirdCopyWith<$Res> get bird {
    return $BirdCopyWith<$Res>(_value.bird, (value) {
      return _then(_value.copyWith(bird: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BirdStateCopyWith<$Res> implements $BirdStateCopyWith<$Res> {
  factory _$$_BirdStateCopyWith(
          _$_BirdState value, $Res Function(_$_BirdState) then) =
      __$$_BirdStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BirdStatus status, Bird bird, bool isEditMode});

  @override
  $BirdCopyWith<$Res> get bird;
}

/// @nodoc
class __$$_BirdStateCopyWithImpl<$Res>
    extends _$BirdStateCopyWithImpl<$Res, _$_BirdState>
    implements _$$_BirdStateCopyWith<$Res> {
  __$$_BirdStateCopyWithImpl(
      _$_BirdState _value, $Res Function(_$_BirdState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? bird = null,
    Object? isEditMode = null,
  }) {
    return _then(_$_BirdState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BirdStatus,
      bird: null == bird
          ? _value.bird
          : bird // ignore: cast_nullable_to_non_nullable
              as Bird,
      isEditMode: null == isEditMode
          ? _value.isEditMode
          : isEditMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_BirdState implements _BirdState {
  const _$_BirdState(
      {this.status = BirdStatus.initial,
      required this.bird,
      this.isEditMode = false});

  @override
  @JsonKey()
  final BirdStatus status;
  @override
  final Bird bird;
  @override
  @JsonKey()
  final bool isEditMode;

  @override
  String toString() {
    return 'BirdState(status: $status, bird: $bird, isEditMode: $isEditMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BirdState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.bird, bird) || other.bird == bird) &&
            (identical(other.isEditMode, isEditMode) ||
                other.isEditMode == isEditMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, bird, isEditMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BirdStateCopyWith<_$_BirdState> get copyWith =>
      __$$_BirdStateCopyWithImpl<_$_BirdState>(this, _$identity);
}

abstract class _BirdState implements BirdState {
  const factory _BirdState(
      {final BirdStatus status,
      required final Bird bird,
      final bool isEditMode}) = _$_BirdState;

  @override
  BirdStatus get status;
  @override
  Bird get bird;
  @override
  bool get isEditMode;
  @override
  @JsonKey(ignore: true)
  _$$_BirdStateCopyWith<_$_BirdState> get copyWith =>
      throw _privateConstructorUsedError;
}
