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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BirdEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() save,
    required TResult Function(bool on) edit,
    required TResult Function() delete,
    required TResult Function(Bird bird) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? save,
    TResult? Function(bool on)? edit,
    TResult? Function()? delete,
    TResult? Function(Bird bird)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? save,
    TResult Function(bool on)? edit,
    TResult Function()? delete,
    TResult Function(Bird bird)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirdLoad value) load,
    required TResult Function(BirdSave value) save,
    required TResult Function(BirdEdit value) edit,
    required TResult Function(BirdDelete value) delete,
    required TResult Function(BirdChange value) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdLoad value)? load,
    TResult? Function(BirdSave value)? save,
    TResult? Function(BirdEdit value)? edit,
    TResult? Function(BirdDelete value)? delete,
    TResult? Function(BirdChange value)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdLoad value)? load,
    TResult Function(BirdSave value)? save,
    TResult Function(BirdEdit value)? edit,
    TResult Function(BirdDelete value)? delete,
    TResult Function(BirdChange value)? change,
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
abstract class _$$BirdLoadImplCopyWith<$Res> {
  factory _$$BirdLoadImplCopyWith(
          _$BirdLoadImpl value, $Res Function(_$BirdLoadImpl) then) =
      __$$BirdLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BirdLoadImplCopyWithImpl<$Res>
    extends _$BirdEventCopyWithImpl<$Res, _$BirdLoadImpl>
    implements _$$BirdLoadImplCopyWith<$Res> {
  __$$BirdLoadImplCopyWithImpl(
      _$BirdLoadImpl _value, $Res Function(_$BirdLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BirdLoadImpl implements BirdLoad {
  const _$BirdLoadImpl();

  @override
  String toString() {
    return 'BirdEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BirdLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() save,
    required TResult Function(bool on) edit,
    required TResult Function() delete,
    required TResult Function(Bird bird) change,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? save,
    TResult? Function(bool on)? edit,
    TResult? Function()? delete,
    TResult? Function(Bird bird)? change,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? save,
    TResult Function(bool on)? edit,
    TResult Function()? delete,
    TResult Function(Bird bird)? change,
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
    required TResult Function(BirdLoad value) load,
    required TResult Function(BirdSave value) save,
    required TResult Function(BirdEdit value) edit,
    required TResult Function(BirdDelete value) delete,
    required TResult Function(BirdChange value) change,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdLoad value)? load,
    TResult? Function(BirdSave value)? save,
    TResult? Function(BirdEdit value)? edit,
    TResult? Function(BirdDelete value)? delete,
    TResult? Function(BirdChange value)? change,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdLoad value)? load,
    TResult Function(BirdSave value)? save,
    TResult Function(BirdEdit value)? edit,
    TResult Function(BirdDelete value)? delete,
    TResult Function(BirdChange value)? change,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class BirdLoad implements BirdEvent {
  const factory BirdLoad() = _$BirdLoadImpl;
}

/// @nodoc
abstract class _$$BirdSaveImplCopyWith<$Res> {
  factory _$$BirdSaveImplCopyWith(
          _$BirdSaveImpl value, $Res Function(_$BirdSaveImpl) then) =
      __$$BirdSaveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BirdSaveImplCopyWithImpl<$Res>
    extends _$BirdEventCopyWithImpl<$Res, _$BirdSaveImpl>
    implements _$$BirdSaveImplCopyWith<$Res> {
  __$$BirdSaveImplCopyWithImpl(
      _$BirdSaveImpl _value, $Res Function(_$BirdSaveImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BirdSaveImpl implements BirdSave {
  const _$BirdSaveImpl();

  @override
  String toString() {
    return 'BirdEvent.save()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BirdSaveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() save,
    required TResult Function(bool on) edit,
    required TResult Function() delete,
    required TResult Function(Bird bird) change,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? save,
    TResult? Function(bool on)? edit,
    TResult? Function()? delete,
    TResult? Function(Bird bird)? change,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? save,
    TResult Function(bool on)? edit,
    TResult Function()? delete,
    TResult Function(Bird bird)? change,
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
    required TResult Function(BirdLoad value) load,
    required TResult Function(BirdSave value) save,
    required TResult Function(BirdEdit value) edit,
    required TResult Function(BirdDelete value) delete,
    required TResult Function(BirdChange value) change,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdLoad value)? load,
    TResult? Function(BirdSave value)? save,
    TResult? Function(BirdEdit value)? edit,
    TResult? Function(BirdDelete value)? delete,
    TResult? Function(BirdChange value)? change,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdLoad value)? load,
    TResult Function(BirdSave value)? save,
    TResult Function(BirdEdit value)? edit,
    TResult Function(BirdDelete value)? delete,
    TResult Function(BirdChange value)? change,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class BirdSave implements BirdEvent {
  const factory BirdSave() = _$BirdSaveImpl;
}

/// @nodoc
abstract class _$$BirdEditImplCopyWith<$Res> {
  factory _$$BirdEditImplCopyWith(
          _$BirdEditImpl value, $Res Function(_$BirdEditImpl) then) =
      __$$BirdEditImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool on});
}

/// @nodoc
class __$$BirdEditImplCopyWithImpl<$Res>
    extends _$BirdEventCopyWithImpl<$Res, _$BirdEditImpl>
    implements _$$BirdEditImplCopyWith<$Res> {
  __$$BirdEditImplCopyWithImpl(
      _$BirdEditImpl _value, $Res Function(_$BirdEditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? on = null,
  }) {
    return _then(_$BirdEditImpl(
      on: null == on
          ? _value.on
          : on // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BirdEditImpl implements BirdEdit {
  const _$BirdEditImpl({required this.on});

  @override
  final bool on;

  @override
  String toString() {
    return 'BirdEvent.edit(on: $on)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdEditImpl &&
            (identical(other.on, on) || other.on == on));
  }

  @override
  int get hashCode => Object.hash(runtimeType, on);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdEditImplCopyWith<_$BirdEditImpl> get copyWith =>
      __$$BirdEditImplCopyWithImpl<_$BirdEditImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() save,
    required TResult Function(bool on) edit,
    required TResult Function() delete,
    required TResult Function(Bird bird) change,
  }) {
    return edit(on);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? save,
    TResult? Function(bool on)? edit,
    TResult? Function()? delete,
    TResult? Function(Bird bird)? change,
  }) {
    return edit?.call(on);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? save,
    TResult Function(bool on)? edit,
    TResult Function()? delete,
    TResult Function(Bird bird)? change,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(on);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirdLoad value) load,
    required TResult Function(BirdSave value) save,
    required TResult Function(BirdEdit value) edit,
    required TResult Function(BirdDelete value) delete,
    required TResult Function(BirdChange value) change,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdLoad value)? load,
    TResult? Function(BirdSave value)? save,
    TResult? Function(BirdEdit value)? edit,
    TResult? Function(BirdDelete value)? delete,
    TResult? Function(BirdChange value)? change,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdLoad value)? load,
    TResult Function(BirdSave value)? save,
    TResult Function(BirdEdit value)? edit,
    TResult Function(BirdDelete value)? delete,
    TResult Function(BirdChange value)? change,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class BirdEdit implements BirdEvent {
  const factory BirdEdit({required final bool on}) = _$BirdEditImpl;

  bool get on;
  @JsonKey(ignore: true)
  _$$BirdEditImplCopyWith<_$BirdEditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BirdDeleteImplCopyWith<$Res> {
  factory _$$BirdDeleteImplCopyWith(
          _$BirdDeleteImpl value, $Res Function(_$BirdDeleteImpl) then) =
      __$$BirdDeleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BirdDeleteImplCopyWithImpl<$Res>
    extends _$BirdEventCopyWithImpl<$Res, _$BirdDeleteImpl>
    implements _$$BirdDeleteImplCopyWith<$Res> {
  __$$BirdDeleteImplCopyWithImpl(
      _$BirdDeleteImpl _value, $Res Function(_$BirdDeleteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BirdDeleteImpl implements BirdDelete {
  const _$BirdDeleteImpl();

  @override
  String toString() {
    return 'BirdEvent.delete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BirdDeleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() save,
    required TResult Function(bool on) edit,
    required TResult Function() delete,
    required TResult Function(Bird bird) change,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? save,
    TResult? Function(bool on)? edit,
    TResult? Function()? delete,
    TResult? Function(Bird bird)? change,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? save,
    TResult Function(bool on)? edit,
    TResult Function()? delete,
    TResult Function(Bird bird)? change,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirdLoad value) load,
    required TResult Function(BirdSave value) save,
    required TResult Function(BirdEdit value) edit,
    required TResult Function(BirdDelete value) delete,
    required TResult Function(BirdChange value) change,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdLoad value)? load,
    TResult? Function(BirdSave value)? save,
    TResult? Function(BirdEdit value)? edit,
    TResult? Function(BirdDelete value)? delete,
    TResult? Function(BirdChange value)? change,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdLoad value)? load,
    TResult Function(BirdSave value)? save,
    TResult Function(BirdEdit value)? edit,
    TResult Function(BirdDelete value)? delete,
    TResult Function(BirdChange value)? change,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class BirdDelete implements BirdEvent {
  const factory BirdDelete() = _$BirdDeleteImpl;
}

/// @nodoc
abstract class _$$BirdChangeImplCopyWith<$Res> {
  factory _$$BirdChangeImplCopyWith(
          _$BirdChangeImpl value, $Res Function(_$BirdChangeImpl) then) =
      __$$BirdChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Bird bird});

  $BirdCopyWith<$Res> get bird;
}

/// @nodoc
class __$$BirdChangeImplCopyWithImpl<$Res>
    extends _$BirdEventCopyWithImpl<$Res, _$BirdChangeImpl>
    implements _$$BirdChangeImplCopyWith<$Res> {
  __$$BirdChangeImplCopyWithImpl(
      _$BirdChangeImpl _value, $Res Function(_$BirdChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bird = null,
  }) {
    return _then(_$BirdChangeImpl(
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

class _$BirdChangeImpl implements BirdChange {
  const _$BirdChangeImpl({required this.bird});

  @override
  final Bird bird;

  @override
  String toString() {
    return 'BirdEvent.change(bird: $bird)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdChangeImpl &&
            (identical(other.bird, bird) || other.bird == bird));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bird);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdChangeImplCopyWith<_$BirdChangeImpl> get copyWith =>
      __$$BirdChangeImplCopyWithImpl<_$BirdChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() save,
    required TResult Function(bool on) edit,
    required TResult Function() delete,
    required TResult Function(Bird bird) change,
  }) {
    return change(bird);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? save,
    TResult? Function(bool on)? edit,
    TResult? Function()? delete,
    TResult? Function(Bird bird)? change,
  }) {
    return change?.call(bird);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? save,
    TResult Function(bool on)? edit,
    TResult Function()? delete,
    TResult Function(Bird bird)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(bird);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirdLoad value) load,
    required TResult Function(BirdSave value) save,
    required TResult Function(BirdEdit value) edit,
    required TResult Function(BirdDelete value) delete,
    required TResult Function(BirdChange value) change,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdLoad value)? load,
    TResult? Function(BirdSave value)? save,
    TResult? Function(BirdEdit value)? edit,
    TResult? Function(BirdDelete value)? delete,
    TResult? Function(BirdChange value)? change,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdLoad value)? load,
    TResult Function(BirdSave value)? save,
    TResult Function(BirdEdit value)? edit,
    TResult Function(BirdDelete value)? delete,
    TResult Function(BirdChange value)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class BirdChange implements BirdEvent {
  const factory BirdChange({required final Bird bird}) = _$BirdChangeImpl;

  Bird get bird;
  @JsonKey(ignore: true)
  _$$BirdChangeImplCopyWith<_$BirdChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BirdState {
  Bird get bird => throw _privateConstructorUsedError;
  bool get isEdit => throw _privateConstructorUsedError;
  BirdResources get birdResources => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        initial,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        loading,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        loaded,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        error,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        saved,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        initial,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loading,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loaded,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        error,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        saved,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        initial,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loading,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loaded,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        error,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        saved,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirdInitial value) initial,
    required TResult Function(BirdLoading value) loading,
    required TResult Function(BirdLoaded value) loaded,
    required TResult Function(BirdError value) error,
    required TResult Function(BirdSaved value) saved,
    required TResult Function(BirdDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdInitial value)? initial,
    TResult? Function(BirdLoading value)? loading,
    TResult? Function(BirdLoaded value)? loaded,
    TResult? Function(BirdError value)? error,
    TResult? Function(BirdSaved value)? saved,
    TResult? Function(BirdDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdInitial value)? initial,
    TResult Function(BirdLoading value)? loading,
    TResult Function(BirdLoaded value)? loaded,
    TResult Function(BirdError value)? error,
    TResult Function(BirdSaved value)? saved,
    TResult Function(BirdDeleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BirdStateCopyWith<BirdState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirdStateCopyWith<$Res> {
  factory $BirdStateCopyWith(BirdState value, $Res Function(BirdState) then) =
      _$BirdStateCopyWithImpl<$Res, BirdState>;
  @useResult
  $Res call({Bird bird, bool isEdit, BirdResources birdResources});

  $BirdCopyWith<$Res> get bird;
  $BirdResourcesCopyWith<$Res> get birdResources;
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
    Object? bird = null,
    Object? isEdit = null,
    Object? birdResources = null,
  }) {
    return _then(_value.copyWith(
      bird: null == bird
          ? _value.bird
          : bird // ignore: cast_nullable_to_non_nullable
              as Bird,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      birdResources: null == birdResources
          ? _value.birdResources
          : birdResources // ignore: cast_nullable_to_non_nullable
              as BirdResources,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BirdCopyWith<$Res> get bird {
    return $BirdCopyWith<$Res>(_value.bird, (value) {
      return _then(_value.copyWith(bird: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BirdResourcesCopyWith<$Res> get birdResources {
    return $BirdResourcesCopyWith<$Res>(_value.birdResources, (value) {
      return _then(_value.copyWith(birdResources: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BirdInitialImplCopyWith<$Res>
    implements $BirdStateCopyWith<$Res> {
  factory _$$BirdInitialImplCopyWith(
          _$BirdInitialImpl value, $Res Function(_$BirdInitialImpl) then) =
      __$$BirdInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Bird bird, bool isEdit, BirdResources birdResources});

  @override
  $BirdCopyWith<$Res> get bird;
  @override
  $BirdResourcesCopyWith<$Res> get birdResources;
}

/// @nodoc
class __$$BirdInitialImplCopyWithImpl<$Res>
    extends _$BirdStateCopyWithImpl<$Res, _$BirdInitialImpl>
    implements _$$BirdInitialImplCopyWith<$Res> {
  __$$BirdInitialImplCopyWithImpl(
      _$BirdInitialImpl _value, $Res Function(_$BirdInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bird = null,
    Object? isEdit = null,
    Object? birdResources = null,
  }) {
    return _then(_$BirdInitialImpl(
      bird: null == bird
          ? _value.bird
          : bird // ignore: cast_nullable_to_non_nullable
              as Bird,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      birdResources: null == birdResources
          ? _value.birdResources
          : birdResources // ignore: cast_nullable_to_non_nullable
              as BirdResources,
    ));
  }
}

/// @nodoc

class _$BirdInitialImpl implements BirdInitial {
  const _$BirdInitialImpl(
      {required this.bird, required this.isEdit, required this.birdResources});

  @override
  final Bird bird;
  @override
  final bool isEdit;
  @override
  final BirdResources birdResources;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdInitialImpl &&
            (identical(other.bird, bird) || other.bird == bird) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit) &&
            (identical(other.birdResources, birdResources) ||
                other.birdResources == birdResources));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bird, isEdit, birdResources);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdInitialImplCopyWith<_$BirdInitialImpl> get copyWith =>
      __$$BirdInitialImplCopyWithImpl<_$BirdInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        initial,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        loading,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        loaded,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        error,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        saved,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        deleted,
  }) {
    return initial(bird, isEdit, birdResources);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        initial,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loading,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loaded,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        error,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        saved,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        deleted,
  }) {
    return initial?.call(bird, isEdit, birdResources);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        initial,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loading,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loaded,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        error,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        saved,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(bird, isEdit, birdResources);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirdInitial value) initial,
    required TResult Function(BirdLoading value) loading,
    required TResult Function(BirdLoaded value) loaded,
    required TResult Function(BirdError value) error,
    required TResult Function(BirdSaved value) saved,
    required TResult Function(BirdDeleted value) deleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdInitial value)? initial,
    TResult? Function(BirdLoading value)? loading,
    TResult? Function(BirdLoaded value)? loaded,
    TResult? Function(BirdError value)? error,
    TResult? Function(BirdSaved value)? saved,
    TResult? Function(BirdDeleted value)? deleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdInitial value)? initial,
    TResult Function(BirdLoading value)? loading,
    TResult Function(BirdLoaded value)? loaded,
    TResult Function(BirdError value)? error,
    TResult Function(BirdSaved value)? saved,
    TResult Function(BirdDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BirdInitial implements BirdState {
  const factory BirdInitial(
      {required final Bird bird,
      required final bool isEdit,
      required final BirdResources birdResources}) = _$BirdInitialImpl;

  @override
  Bird get bird;
  @override
  bool get isEdit;
  @override
  BirdResources get birdResources;
  @override
  @JsonKey(ignore: true)
  _$$BirdInitialImplCopyWith<_$BirdInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BirdLoadingImplCopyWith<$Res>
    implements $BirdStateCopyWith<$Res> {
  factory _$$BirdLoadingImplCopyWith(
          _$BirdLoadingImpl value, $Res Function(_$BirdLoadingImpl) then) =
      __$$BirdLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Bird bird, bool isEdit, BirdResources birdResources});

  @override
  $BirdCopyWith<$Res> get bird;
  @override
  $BirdResourcesCopyWith<$Res> get birdResources;
}

/// @nodoc
class __$$BirdLoadingImplCopyWithImpl<$Res>
    extends _$BirdStateCopyWithImpl<$Res, _$BirdLoadingImpl>
    implements _$$BirdLoadingImplCopyWith<$Res> {
  __$$BirdLoadingImplCopyWithImpl(
      _$BirdLoadingImpl _value, $Res Function(_$BirdLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bird = null,
    Object? isEdit = null,
    Object? birdResources = null,
  }) {
    return _then(_$BirdLoadingImpl(
      bird: null == bird
          ? _value.bird
          : bird // ignore: cast_nullable_to_non_nullable
              as Bird,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      birdResources: null == birdResources
          ? _value.birdResources
          : birdResources // ignore: cast_nullable_to_non_nullable
              as BirdResources,
    ));
  }
}

/// @nodoc

class _$BirdLoadingImpl implements BirdLoading {
  const _$BirdLoadingImpl(
      {required this.bird, required this.isEdit, required this.birdResources});

  @override
  final Bird bird;
  @override
  final bool isEdit;
  @override
  final BirdResources birdResources;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdLoadingImpl &&
            (identical(other.bird, bird) || other.bird == bird) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit) &&
            (identical(other.birdResources, birdResources) ||
                other.birdResources == birdResources));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bird, isEdit, birdResources);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdLoadingImplCopyWith<_$BirdLoadingImpl> get copyWith =>
      __$$BirdLoadingImplCopyWithImpl<_$BirdLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        initial,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        loading,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        loaded,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        error,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        saved,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        deleted,
  }) {
    return loading(bird, isEdit, birdResources);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        initial,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loading,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loaded,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        error,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        saved,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        deleted,
  }) {
    return loading?.call(bird, isEdit, birdResources);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        initial,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loading,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loaded,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        error,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        saved,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(bird, isEdit, birdResources);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirdInitial value) initial,
    required TResult Function(BirdLoading value) loading,
    required TResult Function(BirdLoaded value) loaded,
    required TResult Function(BirdError value) error,
    required TResult Function(BirdSaved value) saved,
    required TResult Function(BirdDeleted value) deleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdInitial value)? initial,
    TResult? Function(BirdLoading value)? loading,
    TResult? Function(BirdLoaded value)? loaded,
    TResult? Function(BirdError value)? error,
    TResult? Function(BirdSaved value)? saved,
    TResult? Function(BirdDeleted value)? deleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdInitial value)? initial,
    TResult Function(BirdLoading value)? loading,
    TResult Function(BirdLoaded value)? loaded,
    TResult Function(BirdError value)? error,
    TResult Function(BirdSaved value)? saved,
    TResult Function(BirdDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BirdLoading implements BirdState {
  const factory BirdLoading(
      {required final Bird bird,
      required final bool isEdit,
      required final BirdResources birdResources}) = _$BirdLoadingImpl;

  @override
  Bird get bird;
  @override
  bool get isEdit;
  @override
  BirdResources get birdResources;
  @override
  @JsonKey(ignore: true)
  _$$BirdLoadingImplCopyWith<_$BirdLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BirdLoadedImplCopyWith<$Res>
    implements $BirdStateCopyWith<$Res> {
  factory _$$BirdLoadedImplCopyWith(
          _$BirdLoadedImpl value, $Res Function(_$BirdLoadedImpl) then) =
      __$$BirdLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Bird bird, bool isEdit, BirdResources birdResources});

  @override
  $BirdCopyWith<$Res> get bird;
  @override
  $BirdResourcesCopyWith<$Res> get birdResources;
}

/// @nodoc
class __$$BirdLoadedImplCopyWithImpl<$Res>
    extends _$BirdStateCopyWithImpl<$Res, _$BirdLoadedImpl>
    implements _$$BirdLoadedImplCopyWith<$Res> {
  __$$BirdLoadedImplCopyWithImpl(
      _$BirdLoadedImpl _value, $Res Function(_$BirdLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bird = null,
    Object? isEdit = null,
    Object? birdResources = null,
  }) {
    return _then(_$BirdLoadedImpl(
      bird: null == bird
          ? _value.bird
          : bird // ignore: cast_nullable_to_non_nullable
              as Bird,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      birdResources: null == birdResources
          ? _value.birdResources
          : birdResources // ignore: cast_nullable_to_non_nullable
              as BirdResources,
    ));
  }
}

/// @nodoc

class _$BirdLoadedImpl implements BirdLoaded {
  const _$BirdLoadedImpl(
      {required this.bird, required this.isEdit, required this.birdResources});

  @override
  final Bird bird;
  @override
  final bool isEdit;
  @override
  final BirdResources birdResources;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdLoadedImpl &&
            (identical(other.bird, bird) || other.bird == bird) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit) &&
            (identical(other.birdResources, birdResources) ||
                other.birdResources == birdResources));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bird, isEdit, birdResources);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdLoadedImplCopyWith<_$BirdLoadedImpl> get copyWith =>
      __$$BirdLoadedImplCopyWithImpl<_$BirdLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        initial,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        loading,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        loaded,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        error,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        saved,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        deleted,
  }) {
    return loaded(bird, isEdit, birdResources);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        initial,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loading,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loaded,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        error,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        saved,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        deleted,
  }) {
    return loaded?.call(bird, isEdit, birdResources);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        initial,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loading,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loaded,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        error,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        saved,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(bird, isEdit, birdResources);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirdInitial value) initial,
    required TResult Function(BirdLoading value) loading,
    required TResult Function(BirdLoaded value) loaded,
    required TResult Function(BirdError value) error,
    required TResult Function(BirdSaved value) saved,
    required TResult Function(BirdDeleted value) deleted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdInitial value)? initial,
    TResult? Function(BirdLoading value)? loading,
    TResult? Function(BirdLoaded value)? loaded,
    TResult? Function(BirdError value)? error,
    TResult? Function(BirdSaved value)? saved,
    TResult? Function(BirdDeleted value)? deleted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdInitial value)? initial,
    TResult Function(BirdLoading value)? loading,
    TResult Function(BirdLoaded value)? loaded,
    TResult Function(BirdError value)? error,
    TResult Function(BirdSaved value)? saved,
    TResult Function(BirdDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BirdLoaded implements BirdState {
  const factory BirdLoaded(
      {required final Bird bird,
      required final bool isEdit,
      required final BirdResources birdResources}) = _$BirdLoadedImpl;

  @override
  Bird get bird;
  @override
  bool get isEdit;
  @override
  BirdResources get birdResources;
  @override
  @JsonKey(ignore: true)
  _$$BirdLoadedImplCopyWith<_$BirdLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BirdErrorImplCopyWith<$Res>
    implements $BirdStateCopyWith<$Res> {
  factory _$$BirdErrorImplCopyWith(
          _$BirdErrorImpl value, $Res Function(_$BirdErrorImpl) then) =
      __$$BirdErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Bird bird, bool isEdit, BirdResources birdResources});

  @override
  $BirdCopyWith<$Res> get bird;
  @override
  $BirdResourcesCopyWith<$Res> get birdResources;
}

/// @nodoc
class __$$BirdErrorImplCopyWithImpl<$Res>
    extends _$BirdStateCopyWithImpl<$Res, _$BirdErrorImpl>
    implements _$$BirdErrorImplCopyWith<$Res> {
  __$$BirdErrorImplCopyWithImpl(
      _$BirdErrorImpl _value, $Res Function(_$BirdErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bird = null,
    Object? isEdit = null,
    Object? birdResources = null,
  }) {
    return _then(_$BirdErrorImpl(
      bird: null == bird
          ? _value.bird
          : bird // ignore: cast_nullable_to_non_nullable
              as Bird,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      birdResources: null == birdResources
          ? _value.birdResources
          : birdResources // ignore: cast_nullable_to_non_nullable
              as BirdResources,
    ));
  }
}

/// @nodoc

class _$BirdErrorImpl implements BirdError {
  const _$BirdErrorImpl(
      {required this.bird, required this.isEdit, required this.birdResources});

  @override
  final Bird bird;
  @override
  final bool isEdit;
  @override
  final BirdResources birdResources;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdErrorImpl &&
            (identical(other.bird, bird) || other.bird == bird) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit) &&
            (identical(other.birdResources, birdResources) ||
                other.birdResources == birdResources));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bird, isEdit, birdResources);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdErrorImplCopyWith<_$BirdErrorImpl> get copyWith =>
      __$$BirdErrorImplCopyWithImpl<_$BirdErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        initial,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        loading,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        loaded,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        error,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        saved,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        deleted,
  }) {
    return error(bird, isEdit, birdResources);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        initial,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loading,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loaded,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        error,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        saved,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        deleted,
  }) {
    return error?.call(bird, isEdit, birdResources);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        initial,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loading,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loaded,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        error,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        saved,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(bird, isEdit, birdResources);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirdInitial value) initial,
    required TResult Function(BirdLoading value) loading,
    required TResult Function(BirdLoaded value) loaded,
    required TResult Function(BirdError value) error,
    required TResult Function(BirdSaved value) saved,
    required TResult Function(BirdDeleted value) deleted,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdInitial value)? initial,
    TResult? Function(BirdLoading value)? loading,
    TResult? Function(BirdLoaded value)? loaded,
    TResult? Function(BirdError value)? error,
    TResult? Function(BirdSaved value)? saved,
    TResult? Function(BirdDeleted value)? deleted,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdInitial value)? initial,
    TResult Function(BirdLoading value)? loading,
    TResult Function(BirdLoaded value)? loaded,
    TResult Function(BirdError value)? error,
    TResult Function(BirdSaved value)? saved,
    TResult Function(BirdDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BirdError implements BirdState {
  const factory BirdError(
      {required final Bird bird,
      required final bool isEdit,
      required final BirdResources birdResources}) = _$BirdErrorImpl;

  @override
  Bird get bird;
  @override
  bool get isEdit;
  @override
  BirdResources get birdResources;
  @override
  @JsonKey(ignore: true)
  _$$BirdErrorImplCopyWith<_$BirdErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BirdSavedImplCopyWith<$Res>
    implements $BirdStateCopyWith<$Res> {
  factory _$$BirdSavedImplCopyWith(
          _$BirdSavedImpl value, $Res Function(_$BirdSavedImpl) then) =
      __$$BirdSavedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Bird bird, bool isEdit, BirdResources birdResources});

  @override
  $BirdCopyWith<$Res> get bird;
  @override
  $BirdResourcesCopyWith<$Res> get birdResources;
}

/// @nodoc
class __$$BirdSavedImplCopyWithImpl<$Res>
    extends _$BirdStateCopyWithImpl<$Res, _$BirdSavedImpl>
    implements _$$BirdSavedImplCopyWith<$Res> {
  __$$BirdSavedImplCopyWithImpl(
      _$BirdSavedImpl _value, $Res Function(_$BirdSavedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bird = null,
    Object? isEdit = null,
    Object? birdResources = null,
  }) {
    return _then(_$BirdSavedImpl(
      bird: null == bird
          ? _value.bird
          : bird // ignore: cast_nullable_to_non_nullable
              as Bird,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      birdResources: null == birdResources
          ? _value.birdResources
          : birdResources // ignore: cast_nullable_to_non_nullable
              as BirdResources,
    ));
  }
}

/// @nodoc

class _$BirdSavedImpl implements BirdSaved {
  const _$BirdSavedImpl(
      {required this.bird, required this.isEdit, required this.birdResources});

  @override
  final Bird bird;
  @override
  final bool isEdit;
  @override
  final BirdResources birdResources;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdSavedImpl &&
            (identical(other.bird, bird) || other.bird == bird) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit) &&
            (identical(other.birdResources, birdResources) ||
                other.birdResources == birdResources));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bird, isEdit, birdResources);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdSavedImplCopyWith<_$BirdSavedImpl> get copyWith =>
      __$$BirdSavedImplCopyWithImpl<_$BirdSavedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        initial,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        loading,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        loaded,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        error,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        saved,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        deleted,
  }) {
    return saved(bird, isEdit, birdResources);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        initial,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loading,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loaded,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        error,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        saved,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        deleted,
  }) {
    return saved?.call(bird, isEdit, birdResources);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        initial,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loading,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loaded,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        error,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        saved,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        deleted,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(bird, isEdit, birdResources);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirdInitial value) initial,
    required TResult Function(BirdLoading value) loading,
    required TResult Function(BirdLoaded value) loaded,
    required TResult Function(BirdError value) error,
    required TResult Function(BirdSaved value) saved,
    required TResult Function(BirdDeleted value) deleted,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdInitial value)? initial,
    TResult? Function(BirdLoading value)? loading,
    TResult? Function(BirdLoaded value)? loaded,
    TResult? Function(BirdError value)? error,
    TResult? Function(BirdSaved value)? saved,
    TResult? Function(BirdDeleted value)? deleted,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdInitial value)? initial,
    TResult Function(BirdLoading value)? loading,
    TResult Function(BirdLoaded value)? loaded,
    TResult Function(BirdError value)? error,
    TResult Function(BirdSaved value)? saved,
    TResult Function(BirdDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class BirdSaved implements BirdState {
  const factory BirdSaved(
      {required final Bird bird,
      required final bool isEdit,
      required final BirdResources birdResources}) = _$BirdSavedImpl;

  @override
  Bird get bird;
  @override
  bool get isEdit;
  @override
  BirdResources get birdResources;
  @override
  @JsonKey(ignore: true)
  _$$BirdSavedImplCopyWith<_$BirdSavedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BirdDeletedImplCopyWith<$Res>
    implements $BirdStateCopyWith<$Res> {
  factory _$$BirdDeletedImplCopyWith(
          _$BirdDeletedImpl value, $Res Function(_$BirdDeletedImpl) then) =
      __$$BirdDeletedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Bird bird, bool isEdit, BirdResources birdResources});

  @override
  $BirdCopyWith<$Res> get bird;
  @override
  $BirdResourcesCopyWith<$Res> get birdResources;
}

/// @nodoc
class __$$BirdDeletedImplCopyWithImpl<$Res>
    extends _$BirdStateCopyWithImpl<$Res, _$BirdDeletedImpl>
    implements _$$BirdDeletedImplCopyWith<$Res> {
  __$$BirdDeletedImplCopyWithImpl(
      _$BirdDeletedImpl _value, $Res Function(_$BirdDeletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bird = null,
    Object? isEdit = null,
    Object? birdResources = null,
  }) {
    return _then(_$BirdDeletedImpl(
      bird: null == bird
          ? _value.bird
          : bird // ignore: cast_nullable_to_non_nullable
              as Bird,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      birdResources: null == birdResources
          ? _value.birdResources
          : birdResources // ignore: cast_nullable_to_non_nullable
              as BirdResources,
    ));
  }
}

/// @nodoc

class _$BirdDeletedImpl implements BirdDeleted {
  const _$BirdDeletedImpl(
      {required this.bird, required this.isEdit, required this.birdResources});

  @override
  final Bird bird;
  @override
  final bool isEdit;
  @override
  final BirdResources birdResources;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdDeletedImpl &&
            (identical(other.bird, bird) || other.bird == bird) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit) &&
            (identical(other.birdResources, birdResources) ||
                other.birdResources == birdResources));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bird, isEdit, birdResources);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdDeletedImplCopyWith<_$BirdDeletedImpl> get copyWith =>
      __$$BirdDeletedImplCopyWithImpl<_$BirdDeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        initial,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        loading,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        loaded,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        error,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        saved,
    required TResult Function(
            Bird bird, bool isEdit, BirdResources birdResources)
        deleted,
  }) {
    return deleted(bird, isEdit, birdResources);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        initial,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loading,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loaded,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        error,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        saved,
    TResult? Function(Bird bird, bool isEdit, BirdResources birdResources)?
        deleted,
  }) {
    return deleted?.call(bird, isEdit, birdResources);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        initial,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loading,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        loaded,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        error,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        saved,
    TResult Function(Bird bird, bool isEdit, BirdResources birdResources)?
        deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(bird, isEdit, birdResources);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BirdInitial value) initial,
    required TResult Function(BirdLoading value) loading,
    required TResult Function(BirdLoaded value) loaded,
    required TResult Function(BirdError value) error,
    required TResult Function(BirdSaved value) saved,
    required TResult Function(BirdDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BirdInitial value)? initial,
    TResult? Function(BirdLoading value)? loading,
    TResult? Function(BirdLoaded value)? loaded,
    TResult? Function(BirdError value)? error,
    TResult? Function(BirdSaved value)? saved,
    TResult? Function(BirdDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BirdInitial value)? initial,
    TResult Function(BirdLoading value)? loading,
    TResult Function(BirdLoaded value)? loaded,
    TResult Function(BirdError value)? error,
    TResult Function(BirdSaved value)? saved,
    TResult Function(BirdDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class BirdDeleted implements BirdState {
  const factory BirdDeleted(
      {required final Bird bird,
      required final bool isEdit,
      required final BirdResources birdResources}) = _$BirdDeletedImpl;

  @override
  Bird get bird;
  @override
  bool get isEdit;
  @override
  BirdResources get birdResources;
  @override
  @JsonKey(ignore: true)
  _$$BirdDeletedImplCopyWith<_$BirdDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
