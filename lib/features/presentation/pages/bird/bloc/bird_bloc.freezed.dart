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
abstract class _$$BirdLoadCopyWith<$Res> {
  factory _$$BirdLoadCopyWith(
          _$BirdLoad value, $Res Function(_$BirdLoad) then) =
      __$$BirdLoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BirdLoadCopyWithImpl<$Res>
    extends _$BirdEventCopyWithImpl<$Res, _$BirdLoad>
    implements _$$BirdLoadCopyWith<$Res> {
  __$$BirdLoadCopyWithImpl(_$BirdLoad _value, $Res Function(_$BirdLoad) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BirdLoad implements BirdLoad {
  const _$BirdLoad();

  @override
  String toString() {
    return 'BirdEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BirdLoad);
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
  const factory BirdLoad() = _$BirdLoad;
}

/// @nodoc
abstract class _$$BirdSaveCopyWith<$Res> {
  factory _$$BirdSaveCopyWith(
          _$BirdSave value, $Res Function(_$BirdSave) then) =
      __$$BirdSaveCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BirdSaveCopyWithImpl<$Res>
    extends _$BirdEventCopyWithImpl<$Res, _$BirdSave>
    implements _$$BirdSaveCopyWith<$Res> {
  __$$BirdSaveCopyWithImpl(_$BirdSave _value, $Res Function(_$BirdSave) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BirdSave implements BirdSave {
  const _$BirdSave();

  @override
  String toString() {
    return 'BirdEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BirdSave);
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
  const factory BirdSave() = _$BirdSave;
}

/// @nodoc
abstract class _$$BirdEditCopyWith<$Res> {
  factory _$$BirdEditCopyWith(
          _$BirdEdit value, $Res Function(_$BirdEdit) then) =
      __$$BirdEditCopyWithImpl<$Res>;
  @useResult
  $Res call({bool on});
}

/// @nodoc
class __$$BirdEditCopyWithImpl<$Res>
    extends _$BirdEventCopyWithImpl<$Res, _$BirdEdit>
    implements _$$BirdEditCopyWith<$Res> {
  __$$BirdEditCopyWithImpl(_$BirdEdit _value, $Res Function(_$BirdEdit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? on = null,
  }) {
    return _then(_$BirdEdit(
      on: null == on
          ? _value.on
          : on // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BirdEdit implements BirdEdit {
  const _$BirdEdit({required this.on});

  @override
  final bool on;

  @override
  String toString() {
    return 'BirdEvent.edit(on: $on)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdEdit &&
            (identical(other.on, on) || other.on == on));
  }

  @override
  int get hashCode => Object.hash(runtimeType, on);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdEditCopyWith<_$BirdEdit> get copyWith =>
      __$$BirdEditCopyWithImpl<_$BirdEdit>(this, _$identity);

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
  const factory BirdEdit({required final bool on}) = _$BirdEdit;

  bool get on;
  @JsonKey(ignore: true)
  _$$BirdEditCopyWith<_$BirdEdit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BirdDeleteCopyWith<$Res> {
  factory _$$BirdDeleteCopyWith(
          _$BirdDelete value, $Res Function(_$BirdDelete) then) =
      __$$BirdDeleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BirdDeleteCopyWithImpl<$Res>
    extends _$BirdEventCopyWithImpl<$Res, _$BirdDelete>
    implements _$$BirdDeleteCopyWith<$Res> {
  __$$BirdDeleteCopyWithImpl(
      _$BirdDelete _value, $Res Function(_$BirdDelete) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BirdDelete implements BirdDelete {
  const _$BirdDelete();

  @override
  String toString() {
    return 'BirdEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BirdDelete);
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
  const factory BirdDelete() = _$BirdDelete;
}

/// @nodoc
abstract class _$$BirdChangeCopyWith<$Res> {
  factory _$$BirdChangeCopyWith(
          _$BirdChange value, $Res Function(_$BirdChange) then) =
      __$$BirdChangeCopyWithImpl<$Res>;
  @useResult
  $Res call({Bird bird});

  $BirdCopyWith<$Res> get bird;
}

/// @nodoc
class __$$BirdChangeCopyWithImpl<$Res>
    extends _$BirdEventCopyWithImpl<$Res, _$BirdChange>
    implements _$$BirdChangeCopyWith<$Res> {
  __$$BirdChangeCopyWithImpl(
      _$BirdChange _value, $Res Function(_$BirdChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bird = null,
  }) {
    return _then(_$BirdChange(
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

class _$BirdChange implements BirdChange {
  const _$BirdChange({required this.bird});

  @override
  final Bird bird;

  @override
  String toString() {
    return 'BirdEvent.change(bird: $bird)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdChange &&
            (identical(other.bird, bird) || other.bird == bird));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bird);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdChangeCopyWith<_$BirdChange> get copyWith =>
      __$$BirdChangeCopyWithImpl<_$BirdChange>(this, _$identity);

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
  const factory BirdChange({required final Bird bird}) = _$BirdChange;

  Bird get bird;
  @JsonKey(ignore: true)
  _$$BirdChangeCopyWith<_$BirdChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BirdState {
  Bird get bird => throw _privateConstructorUsedError;
  bool get isEdit => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bird bird, bool isEdit) initial,
    required TResult Function(Bird bird, bool isEdit) loading,
    required TResult Function(Bird bird, bool isEdit) loaded,
    required TResult Function(Bird bird, bool isEdit) error,
    required TResult Function(Bird bird, bool isEdit) saved,
    required TResult Function(Bird bird, bool isEdit) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bird bird, bool isEdit)? initial,
    TResult? Function(Bird bird, bool isEdit)? loading,
    TResult? Function(Bird bird, bool isEdit)? loaded,
    TResult? Function(Bird bird, bool isEdit)? error,
    TResult? Function(Bird bird, bool isEdit)? saved,
    TResult? Function(Bird bird, bool isEdit)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bird bird, bool isEdit)? initial,
    TResult Function(Bird bird, bool isEdit)? loading,
    TResult Function(Bird bird, bool isEdit)? loaded,
    TResult Function(Bird bird, bool isEdit)? error,
    TResult Function(Bird bird, bool isEdit)? saved,
    TResult Function(Bird bird, bool isEdit)? deleted,
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
  $Res call({Bird bird, bool isEdit});

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
    Object? bird = null,
    Object? isEdit = null,
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
abstract class _$$BirdInitialCopyWith<$Res>
    implements $BirdStateCopyWith<$Res> {
  factory _$$BirdInitialCopyWith(
          _$BirdInitial value, $Res Function(_$BirdInitial) then) =
      __$$BirdInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Bird bird, bool isEdit});

  @override
  $BirdCopyWith<$Res> get bird;
}

/// @nodoc
class __$$BirdInitialCopyWithImpl<$Res>
    extends _$BirdStateCopyWithImpl<$Res, _$BirdInitial>
    implements _$$BirdInitialCopyWith<$Res> {
  __$$BirdInitialCopyWithImpl(
      _$BirdInitial _value, $Res Function(_$BirdInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bird = null,
    Object? isEdit = null,
  }) {
    return _then(_$BirdInitial(
      bird: null == bird
          ? _value.bird
          : bird // ignore: cast_nullable_to_non_nullable
              as Bird,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BirdInitial implements BirdInitial {
  const _$BirdInitial({required this.bird, required this.isEdit});

  @override
  final Bird bird;
  @override
  final bool isEdit;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdInitial &&
            (identical(other.bird, bird) || other.bird == bird) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bird, isEdit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdInitialCopyWith<_$BirdInitial> get copyWith =>
      __$$BirdInitialCopyWithImpl<_$BirdInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bird bird, bool isEdit) initial,
    required TResult Function(Bird bird, bool isEdit) loading,
    required TResult Function(Bird bird, bool isEdit) loaded,
    required TResult Function(Bird bird, bool isEdit) error,
    required TResult Function(Bird bird, bool isEdit) saved,
    required TResult Function(Bird bird, bool isEdit) deleted,
  }) {
    return initial(bird, isEdit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bird bird, bool isEdit)? initial,
    TResult? Function(Bird bird, bool isEdit)? loading,
    TResult? Function(Bird bird, bool isEdit)? loaded,
    TResult? Function(Bird bird, bool isEdit)? error,
    TResult? Function(Bird bird, bool isEdit)? saved,
    TResult? Function(Bird bird, bool isEdit)? deleted,
  }) {
    return initial?.call(bird, isEdit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bird bird, bool isEdit)? initial,
    TResult Function(Bird bird, bool isEdit)? loading,
    TResult Function(Bird bird, bool isEdit)? loaded,
    TResult Function(Bird bird, bool isEdit)? error,
    TResult Function(Bird bird, bool isEdit)? saved,
    TResult Function(Bird bird, bool isEdit)? deleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(bird, isEdit);
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
      {required final Bird bird, required final bool isEdit}) = _$BirdInitial;

  @override
  Bird get bird;
  @override
  bool get isEdit;
  @override
  @JsonKey(ignore: true)
  _$$BirdInitialCopyWith<_$BirdInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BirdLoadingCopyWith<$Res>
    implements $BirdStateCopyWith<$Res> {
  factory _$$BirdLoadingCopyWith(
          _$BirdLoading value, $Res Function(_$BirdLoading) then) =
      __$$BirdLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Bird bird, bool isEdit});

  @override
  $BirdCopyWith<$Res> get bird;
}

/// @nodoc
class __$$BirdLoadingCopyWithImpl<$Res>
    extends _$BirdStateCopyWithImpl<$Res, _$BirdLoading>
    implements _$$BirdLoadingCopyWith<$Res> {
  __$$BirdLoadingCopyWithImpl(
      _$BirdLoading _value, $Res Function(_$BirdLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bird = null,
    Object? isEdit = null,
  }) {
    return _then(_$BirdLoading(
      bird: null == bird
          ? _value.bird
          : bird // ignore: cast_nullable_to_non_nullable
              as Bird,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BirdLoading implements BirdLoading {
  const _$BirdLoading({required this.bird, required this.isEdit});

  @override
  final Bird bird;
  @override
  final bool isEdit;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdLoading &&
            (identical(other.bird, bird) || other.bird == bird) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bird, isEdit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdLoadingCopyWith<_$BirdLoading> get copyWith =>
      __$$BirdLoadingCopyWithImpl<_$BirdLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bird bird, bool isEdit) initial,
    required TResult Function(Bird bird, bool isEdit) loading,
    required TResult Function(Bird bird, bool isEdit) loaded,
    required TResult Function(Bird bird, bool isEdit) error,
    required TResult Function(Bird bird, bool isEdit) saved,
    required TResult Function(Bird bird, bool isEdit) deleted,
  }) {
    return loading(bird, isEdit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bird bird, bool isEdit)? initial,
    TResult? Function(Bird bird, bool isEdit)? loading,
    TResult? Function(Bird bird, bool isEdit)? loaded,
    TResult? Function(Bird bird, bool isEdit)? error,
    TResult? Function(Bird bird, bool isEdit)? saved,
    TResult? Function(Bird bird, bool isEdit)? deleted,
  }) {
    return loading?.call(bird, isEdit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bird bird, bool isEdit)? initial,
    TResult Function(Bird bird, bool isEdit)? loading,
    TResult Function(Bird bird, bool isEdit)? loaded,
    TResult Function(Bird bird, bool isEdit)? error,
    TResult Function(Bird bird, bool isEdit)? saved,
    TResult Function(Bird bird, bool isEdit)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(bird, isEdit);
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
      {required final Bird bird, required final bool isEdit}) = _$BirdLoading;

  @override
  Bird get bird;
  @override
  bool get isEdit;
  @override
  @JsonKey(ignore: true)
  _$$BirdLoadingCopyWith<_$BirdLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BirdLoadedCopyWith<$Res> implements $BirdStateCopyWith<$Res> {
  factory _$$BirdLoadedCopyWith(
          _$BirdLoaded value, $Res Function(_$BirdLoaded) then) =
      __$$BirdLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Bird bird, bool isEdit});

  @override
  $BirdCopyWith<$Res> get bird;
}

/// @nodoc
class __$$BirdLoadedCopyWithImpl<$Res>
    extends _$BirdStateCopyWithImpl<$Res, _$BirdLoaded>
    implements _$$BirdLoadedCopyWith<$Res> {
  __$$BirdLoadedCopyWithImpl(
      _$BirdLoaded _value, $Res Function(_$BirdLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bird = null,
    Object? isEdit = null,
  }) {
    return _then(_$BirdLoaded(
      bird: null == bird
          ? _value.bird
          : bird // ignore: cast_nullable_to_non_nullable
              as Bird,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BirdLoaded implements BirdLoaded {
  const _$BirdLoaded({required this.bird, required this.isEdit});

  @override
  final Bird bird;
  @override
  final bool isEdit;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdLoaded &&
            (identical(other.bird, bird) || other.bird == bird) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bird, isEdit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdLoadedCopyWith<_$BirdLoaded> get copyWith =>
      __$$BirdLoadedCopyWithImpl<_$BirdLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bird bird, bool isEdit) initial,
    required TResult Function(Bird bird, bool isEdit) loading,
    required TResult Function(Bird bird, bool isEdit) loaded,
    required TResult Function(Bird bird, bool isEdit) error,
    required TResult Function(Bird bird, bool isEdit) saved,
    required TResult Function(Bird bird, bool isEdit) deleted,
  }) {
    return loaded(bird, isEdit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bird bird, bool isEdit)? initial,
    TResult? Function(Bird bird, bool isEdit)? loading,
    TResult? Function(Bird bird, bool isEdit)? loaded,
    TResult? Function(Bird bird, bool isEdit)? error,
    TResult? Function(Bird bird, bool isEdit)? saved,
    TResult? Function(Bird bird, bool isEdit)? deleted,
  }) {
    return loaded?.call(bird, isEdit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bird bird, bool isEdit)? initial,
    TResult Function(Bird bird, bool isEdit)? loading,
    TResult Function(Bird bird, bool isEdit)? loaded,
    TResult Function(Bird bird, bool isEdit)? error,
    TResult Function(Bird bird, bool isEdit)? saved,
    TResult Function(Bird bird, bool isEdit)? deleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(bird, isEdit);
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
      {required final Bird bird, required final bool isEdit}) = _$BirdLoaded;

  @override
  Bird get bird;
  @override
  bool get isEdit;
  @override
  @JsonKey(ignore: true)
  _$$BirdLoadedCopyWith<_$BirdLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BirdErrorCopyWith<$Res> implements $BirdStateCopyWith<$Res> {
  factory _$$BirdErrorCopyWith(
          _$BirdError value, $Res Function(_$BirdError) then) =
      __$$BirdErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Bird bird, bool isEdit});

  @override
  $BirdCopyWith<$Res> get bird;
}

/// @nodoc
class __$$BirdErrorCopyWithImpl<$Res>
    extends _$BirdStateCopyWithImpl<$Res, _$BirdError>
    implements _$$BirdErrorCopyWith<$Res> {
  __$$BirdErrorCopyWithImpl(
      _$BirdError _value, $Res Function(_$BirdError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bird = null,
    Object? isEdit = null,
  }) {
    return _then(_$BirdError(
      bird: null == bird
          ? _value.bird
          : bird // ignore: cast_nullable_to_non_nullable
              as Bird,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BirdError implements BirdError {
  const _$BirdError({required this.bird, required this.isEdit});

  @override
  final Bird bird;
  @override
  final bool isEdit;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdError &&
            (identical(other.bird, bird) || other.bird == bird) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bird, isEdit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdErrorCopyWith<_$BirdError> get copyWith =>
      __$$BirdErrorCopyWithImpl<_$BirdError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bird bird, bool isEdit) initial,
    required TResult Function(Bird bird, bool isEdit) loading,
    required TResult Function(Bird bird, bool isEdit) loaded,
    required TResult Function(Bird bird, bool isEdit) error,
    required TResult Function(Bird bird, bool isEdit) saved,
    required TResult Function(Bird bird, bool isEdit) deleted,
  }) {
    return error(bird, isEdit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bird bird, bool isEdit)? initial,
    TResult? Function(Bird bird, bool isEdit)? loading,
    TResult? Function(Bird bird, bool isEdit)? loaded,
    TResult? Function(Bird bird, bool isEdit)? error,
    TResult? Function(Bird bird, bool isEdit)? saved,
    TResult? Function(Bird bird, bool isEdit)? deleted,
  }) {
    return error?.call(bird, isEdit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bird bird, bool isEdit)? initial,
    TResult Function(Bird bird, bool isEdit)? loading,
    TResult Function(Bird bird, bool isEdit)? loaded,
    TResult Function(Bird bird, bool isEdit)? error,
    TResult Function(Bird bird, bool isEdit)? saved,
    TResult Function(Bird bird, bool isEdit)? deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(bird, isEdit);
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
      {required final Bird bird, required final bool isEdit}) = _$BirdError;

  @override
  Bird get bird;
  @override
  bool get isEdit;
  @override
  @JsonKey(ignore: true)
  _$$BirdErrorCopyWith<_$BirdError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BirdSavedCopyWith<$Res> implements $BirdStateCopyWith<$Res> {
  factory _$$BirdSavedCopyWith(
          _$BirdSaved value, $Res Function(_$BirdSaved) then) =
      __$$BirdSavedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Bird bird, bool isEdit});

  @override
  $BirdCopyWith<$Res> get bird;
}

/// @nodoc
class __$$BirdSavedCopyWithImpl<$Res>
    extends _$BirdStateCopyWithImpl<$Res, _$BirdSaved>
    implements _$$BirdSavedCopyWith<$Res> {
  __$$BirdSavedCopyWithImpl(
      _$BirdSaved _value, $Res Function(_$BirdSaved) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bird = null,
    Object? isEdit = null,
  }) {
    return _then(_$BirdSaved(
      bird: null == bird
          ? _value.bird
          : bird // ignore: cast_nullable_to_non_nullable
              as Bird,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BirdSaved implements BirdSaved {
  const _$BirdSaved({required this.bird, required this.isEdit});

  @override
  final Bird bird;
  @override
  final bool isEdit;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdSaved &&
            (identical(other.bird, bird) || other.bird == bird) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bird, isEdit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdSavedCopyWith<_$BirdSaved> get copyWith =>
      __$$BirdSavedCopyWithImpl<_$BirdSaved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bird bird, bool isEdit) initial,
    required TResult Function(Bird bird, bool isEdit) loading,
    required TResult Function(Bird bird, bool isEdit) loaded,
    required TResult Function(Bird bird, bool isEdit) error,
    required TResult Function(Bird bird, bool isEdit) saved,
    required TResult Function(Bird bird, bool isEdit) deleted,
  }) {
    return saved(bird, isEdit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bird bird, bool isEdit)? initial,
    TResult? Function(Bird bird, bool isEdit)? loading,
    TResult? Function(Bird bird, bool isEdit)? loaded,
    TResult? Function(Bird bird, bool isEdit)? error,
    TResult? Function(Bird bird, bool isEdit)? saved,
    TResult? Function(Bird bird, bool isEdit)? deleted,
  }) {
    return saved?.call(bird, isEdit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bird bird, bool isEdit)? initial,
    TResult Function(Bird bird, bool isEdit)? loading,
    TResult Function(Bird bird, bool isEdit)? loaded,
    TResult Function(Bird bird, bool isEdit)? error,
    TResult Function(Bird bird, bool isEdit)? saved,
    TResult Function(Bird bird, bool isEdit)? deleted,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(bird, isEdit);
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
      {required final Bird bird, required final bool isEdit}) = _$BirdSaved;

  @override
  Bird get bird;
  @override
  bool get isEdit;
  @override
  @JsonKey(ignore: true)
  _$$BirdSavedCopyWith<_$BirdSaved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BirdDeletedCopyWith<$Res>
    implements $BirdStateCopyWith<$Res> {
  factory _$$BirdDeletedCopyWith(
          _$BirdDeleted value, $Res Function(_$BirdDeleted) then) =
      __$$BirdDeletedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Bird bird, bool isEdit});

  @override
  $BirdCopyWith<$Res> get bird;
}

/// @nodoc
class __$$BirdDeletedCopyWithImpl<$Res>
    extends _$BirdStateCopyWithImpl<$Res, _$BirdDeleted>
    implements _$$BirdDeletedCopyWith<$Res> {
  __$$BirdDeletedCopyWithImpl(
      _$BirdDeleted _value, $Res Function(_$BirdDeleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bird = null,
    Object? isEdit = null,
  }) {
    return _then(_$BirdDeleted(
      bird: null == bird
          ? _value.bird
          : bird // ignore: cast_nullable_to_non_nullable
              as Bird,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BirdDeleted implements BirdDeleted {
  const _$BirdDeleted({required this.bird, required this.isEdit});

  @override
  final Bird bird;
  @override
  final bool isEdit;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdDeleted &&
            (identical(other.bird, bird) || other.bird == bird) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bird, isEdit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdDeletedCopyWith<_$BirdDeleted> get copyWith =>
      __$$BirdDeletedCopyWithImpl<_$BirdDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Bird bird, bool isEdit) initial,
    required TResult Function(Bird bird, bool isEdit) loading,
    required TResult Function(Bird bird, bool isEdit) loaded,
    required TResult Function(Bird bird, bool isEdit) error,
    required TResult Function(Bird bird, bool isEdit) saved,
    required TResult Function(Bird bird, bool isEdit) deleted,
  }) {
    return deleted(bird, isEdit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Bird bird, bool isEdit)? initial,
    TResult? Function(Bird bird, bool isEdit)? loading,
    TResult? Function(Bird bird, bool isEdit)? loaded,
    TResult? Function(Bird bird, bool isEdit)? error,
    TResult? Function(Bird bird, bool isEdit)? saved,
    TResult? Function(Bird bird, bool isEdit)? deleted,
  }) {
    return deleted?.call(bird, isEdit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Bird bird, bool isEdit)? initial,
    TResult Function(Bird bird, bool isEdit)? loading,
    TResult Function(Bird bird, bool isEdit)? loaded,
    TResult Function(Bird bird, bool isEdit)? error,
    TResult Function(Bird bird, bool isEdit)? saved,
    TResult Function(Bird bird, bool isEdit)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(bird, isEdit);
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
      {required final Bird bird, required final bool isEdit}) = _$BirdDeleted;

  @override
  Bird get bird;
  @override
  bool get isEdit;
  @override
  @JsonKey(ignore: true)
  _$$BirdDeletedCopyWith<_$BirdDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}
