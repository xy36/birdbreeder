// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'colors_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ColorsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(BirdColor color) addColor,
    required TResult Function(BirdColor color) deleteColor,
    required TResult Function(BirdColor color) editColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(BirdColor color)? addColor,
    TResult? Function(BirdColor color)? deleteColor,
    TResult? Function(BirdColor color)? editColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(BirdColor color)? addColor,
    TResult Function(BirdColor color)? deleteColor,
    TResult Function(BirdColor color)? editColor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(AddColor value) addColor,
    required TResult Function(DeleteColor value) deleteColor,
    required TResult Function(EditColor value) editColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(AddColor value)? addColor,
    TResult? Function(DeleteColor value)? deleteColor,
    TResult? Function(EditColor value)? editColor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(AddColor value)? addColor,
    TResult Function(DeleteColor value)? deleteColor,
    TResult Function(EditColor value)? editColor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorsEventCopyWith<$Res> {
  factory $ColorsEventCopyWith(
          ColorsEvent value, $Res Function(ColorsEvent) then) =
      _$ColorsEventCopyWithImpl<$Res, ColorsEvent>;
}

/// @nodoc
class _$ColorsEventCopyWithImpl<$Res, $Val extends ColorsEvent>
    implements $ColorsEventCopyWith<$Res> {
  _$ColorsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadCopyWith<$Res> {
  factory _$$LoadCopyWith(_$Load value, $Res Function(_$Load) then) =
      __$$LoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCopyWithImpl<$Res> extends _$ColorsEventCopyWithImpl<$Res, _$Load>
    implements _$$LoadCopyWith<$Res> {
  __$$LoadCopyWithImpl(_$Load _value, $Res Function(_$Load) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Load implements Load {
  const _$Load();

  @override
  String toString() {
    return 'ColorsEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(BirdColor color) addColor,
    required TResult Function(BirdColor color) deleteColor,
    required TResult Function(BirdColor color) editColor,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(BirdColor color)? addColor,
    TResult? Function(BirdColor color)? deleteColor,
    TResult? Function(BirdColor color)? editColor,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(BirdColor color)? addColor,
    TResult Function(BirdColor color)? deleteColor,
    TResult Function(BirdColor color)? editColor,
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
    required TResult Function(AddColor value) addColor,
    required TResult Function(DeleteColor value) deleteColor,
    required TResult Function(EditColor value) editColor,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(AddColor value)? addColor,
    TResult? Function(DeleteColor value)? deleteColor,
    TResult? Function(EditColor value)? editColor,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(AddColor value)? addColor,
    TResult Function(DeleteColor value)? deleteColor,
    TResult Function(EditColor value)? editColor,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class Load implements ColorsEvent {
  const factory Load() = _$Load;
}

/// @nodoc
abstract class _$$AddColorCopyWith<$Res> {
  factory _$$AddColorCopyWith(
          _$AddColor value, $Res Function(_$AddColor) then) =
      __$$AddColorCopyWithImpl<$Res>;
  @useResult
  $Res call({BirdColor color});

  $BirdColorCopyWith<$Res> get color;
}

/// @nodoc
class __$$AddColorCopyWithImpl<$Res>
    extends _$ColorsEventCopyWithImpl<$Res, _$AddColor>
    implements _$$AddColorCopyWith<$Res> {
  __$$AddColorCopyWithImpl(_$AddColor _value, $Res Function(_$AddColor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$AddColor(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as BirdColor,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BirdColorCopyWith<$Res> get color {
    return $BirdColorCopyWith<$Res>(_value.color, (value) {
      return _then(_value.copyWith(color: value));
    });
  }
}

/// @nodoc

class _$AddColor implements AddColor {
  const _$AddColor(this.color);

  @override
  final BirdColor color;

  @override
  String toString() {
    return 'ColorsEvent.addColor(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddColor &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddColorCopyWith<_$AddColor> get copyWith =>
      __$$AddColorCopyWithImpl<_$AddColor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(BirdColor color) addColor,
    required TResult Function(BirdColor color) deleteColor,
    required TResult Function(BirdColor color) editColor,
  }) {
    return addColor(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(BirdColor color)? addColor,
    TResult? Function(BirdColor color)? deleteColor,
    TResult? Function(BirdColor color)? editColor,
  }) {
    return addColor?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(BirdColor color)? addColor,
    TResult Function(BirdColor color)? deleteColor,
    TResult Function(BirdColor color)? editColor,
    required TResult orElse(),
  }) {
    if (addColor != null) {
      return addColor(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(AddColor value) addColor,
    required TResult Function(DeleteColor value) deleteColor,
    required TResult Function(EditColor value) editColor,
  }) {
    return addColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(AddColor value)? addColor,
    TResult? Function(DeleteColor value)? deleteColor,
    TResult? Function(EditColor value)? editColor,
  }) {
    return addColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(AddColor value)? addColor,
    TResult Function(DeleteColor value)? deleteColor,
    TResult Function(EditColor value)? editColor,
    required TResult orElse(),
  }) {
    if (addColor != null) {
      return addColor(this);
    }
    return orElse();
  }
}

abstract class AddColor implements ColorsEvent {
  const factory AddColor(final BirdColor color) = _$AddColor;

  BirdColor get color;
  @JsonKey(ignore: true)
  _$$AddColorCopyWith<_$AddColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteColorCopyWith<$Res> {
  factory _$$DeleteColorCopyWith(
          _$DeleteColor value, $Res Function(_$DeleteColor) then) =
      __$$DeleteColorCopyWithImpl<$Res>;
  @useResult
  $Res call({BirdColor color});

  $BirdColorCopyWith<$Res> get color;
}

/// @nodoc
class __$$DeleteColorCopyWithImpl<$Res>
    extends _$ColorsEventCopyWithImpl<$Res, _$DeleteColor>
    implements _$$DeleteColorCopyWith<$Res> {
  __$$DeleteColorCopyWithImpl(
      _$DeleteColor _value, $Res Function(_$DeleteColor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$DeleteColor(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as BirdColor,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BirdColorCopyWith<$Res> get color {
    return $BirdColorCopyWith<$Res>(_value.color, (value) {
      return _then(_value.copyWith(color: value));
    });
  }
}

/// @nodoc

class _$DeleteColor implements DeleteColor {
  const _$DeleteColor(this.color);

  @override
  final BirdColor color;

  @override
  String toString() {
    return 'ColorsEvent.deleteColor(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteColor &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteColorCopyWith<_$DeleteColor> get copyWith =>
      __$$DeleteColorCopyWithImpl<_$DeleteColor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(BirdColor color) addColor,
    required TResult Function(BirdColor color) deleteColor,
    required TResult Function(BirdColor color) editColor,
  }) {
    return deleteColor(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(BirdColor color)? addColor,
    TResult? Function(BirdColor color)? deleteColor,
    TResult? Function(BirdColor color)? editColor,
  }) {
    return deleteColor?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(BirdColor color)? addColor,
    TResult Function(BirdColor color)? deleteColor,
    TResult Function(BirdColor color)? editColor,
    required TResult orElse(),
  }) {
    if (deleteColor != null) {
      return deleteColor(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(AddColor value) addColor,
    required TResult Function(DeleteColor value) deleteColor,
    required TResult Function(EditColor value) editColor,
  }) {
    return deleteColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(AddColor value)? addColor,
    TResult? Function(DeleteColor value)? deleteColor,
    TResult? Function(EditColor value)? editColor,
  }) {
    return deleteColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(AddColor value)? addColor,
    TResult Function(DeleteColor value)? deleteColor,
    TResult Function(EditColor value)? editColor,
    required TResult orElse(),
  }) {
    if (deleteColor != null) {
      return deleteColor(this);
    }
    return orElse();
  }
}

abstract class DeleteColor implements ColorsEvent {
  const factory DeleteColor(final BirdColor color) = _$DeleteColor;

  BirdColor get color;
  @JsonKey(ignore: true)
  _$$DeleteColorCopyWith<_$DeleteColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditColorCopyWith<$Res> {
  factory _$$EditColorCopyWith(
          _$EditColor value, $Res Function(_$EditColor) then) =
      __$$EditColorCopyWithImpl<$Res>;
  @useResult
  $Res call({BirdColor color});

  $BirdColorCopyWith<$Res> get color;
}

/// @nodoc
class __$$EditColorCopyWithImpl<$Res>
    extends _$ColorsEventCopyWithImpl<$Res, _$EditColor>
    implements _$$EditColorCopyWith<$Res> {
  __$$EditColorCopyWithImpl(
      _$EditColor _value, $Res Function(_$EditColor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$EditColor(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as BirdColor,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BirdColorCopyWith<$Res> get color {
    return $BirdColorCopyWith<$Res>(_value.color, (value) {
      return _then(_value.copyWith(color: value));
    });
  }
}

/// @nodoc

class _$EditColor implements EditColor {
  const _$EditColor(this.color);

  @override
  final BirdColor color;

  @override
  String toString() {
    return 'ColorsEvent.editColor(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditColor &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditColorCopyWith<_$EditColor> get copyWith =>
      __$$EditColorCopyWithImpl<_$EditColor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(BirdColor color) addColor,
    required TResult Function(BirdColor color) deleteColor,
    required TResult Function(BirdColor color) editColor,
  }) {
    return editColor(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(BirdColor color)? addColor,
    TResult? Function(BirdColor color)? deleteColor,
    TResult? Function(BirdColor color)? editColor,
  }) {
    return editColor?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(BirdColor color)? addColor,
    TResult Function(BirdColor color)? deleteColor,
    TResult Function(BirdColor color)? editColor,
    required TResult orElse(),
  }) {
    if (editColor != null) {
      return editColor(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(AddColor value) addColor,
    required TResult Function(DeleteColor value) deleteColor,
    required TResult Function(EditColor value) editColor,
  }) {
    return editColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(AddColor value)? addColor,
    TResult? Function(DeleteColor value)? deleteColor,
    TResult? Function(EditColor value)? editColor,
  }) {
    return editColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(AddColor value)? addColor,
    TResult Function(DeleteColor value)? deleteColor,
    TResult Function(EditColor value)? editColor,
    required TResult orElse(),
  }) {
    if (editColor != null) {
      return editColor(this);
    }
    return orElse();
  }
}

abstract class EditColor implements ColorsEvent {
  const factory EditColor(final BirdColor color) = _$EditColor;

  BirdColor get color;
  @JsonKey(ignore: true)
  _$$EditColorCopyWith<_$EditColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ColorsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BirdColor> colors) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BirdColor> colors)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BirdColor> colors)? loaded,
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
abstract class $ColorsStateCopyWith<$Res> {
  factory $ColorsStateCopyWith(
          ColorsState value, $Res Function(ColorsState) then) =
      _$ColorsStateCopyWithImpl<$Res, ColorsState>;
}

/// @nodoc
class _$ColorsStateCopyWithImpl<$Res, $Val extends ColorsState>
    implements $ColorsStateCopyWith<$Res> {
  _$ColorsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$ColorsStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ColorsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BirdColor> colors) loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BirdColor> colors)? loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BirdColor> colors)? loaded,
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

abstract class Initial implements ColorsState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$ColorsStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'ColorsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BirdColor> colors) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BirdColor> colors)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BirdColor> colors)? loaded,
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

abstract class Loading implements ColorsState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BirdColor> colors});
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res>
    extends _$ColorsStateCopyWithImpl<$Res, _$Loaded>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colors = null,
  }) {
    return _then(_$Loaded(
      null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<BirdColor>,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded(final List<BirdColor> colors) : _colors = colors;

  final List<BirdColor> _colors;
  @override
  List<BirdColor> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  @override
  String toString() {
    return 'ColorsState.loaded(colors: $colors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded &&
            const DeepCollectionEquality().equals(other._colors, _colors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_colors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      __$$LoadedCopyWithImpl<_$Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BirdColor> colors) loaded,
    required TResult Function() error,
  }) {
    return loaded(colors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BirdColor> colors)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(colors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BirdColor> colors)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(colors);
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

abstract class Loaded implements ColorsState {
  const factory Loaded(final List<BirdColor> colors) = _$Loaded;

  List<BirdColor> get colors;
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$ColorsStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Error implements Error {
  const _$Error();

  @override
  String toString() {
    return 'ColorsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<BirdColor> colors) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<BirdColor> colors)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<BirdColor> colors)? loaded,
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

abstract class Error implements ColorsState {
  const factory Error() = _$Error;
}
