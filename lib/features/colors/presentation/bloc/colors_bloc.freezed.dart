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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

  /// Create a copy of ColorsEvent
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
    extends _$ColorsEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColorsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadImpl implements Load {
  const _$LoadImpl();

  @override
  String toString() {
    return 'ColorsEvent.load()';
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
  const factory Load() = _$LoadImpl;
}

/// @nodoc
abstract class _$$AddColorImplCopyWith<$Res> {
  factory _$$AddColorImplCopyWith(
          _$AddColorImpl value, $Res Function(_$AddColorImpl) then) =
      __$$AddColorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BirdColor color});

  $BirdColorCopyWith<$Res> get color;
}

/// @nodoc
class __$$AddColorImplCopyWithImpl<$Res>
    extends _$ColorsEventCopyWithImpl<$Res, _$AddColorImpl>
    implements _$$AddColorImplCopyWith<$Res> {
  __$$AddColorImplCopyWithImpl(
      _$AddColorImpl _value, $Res Function(_$AddColorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColorsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$AddColorImpl(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as BirdColor,
    ));
  }

  /// Create a copy of ColorsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BirdColorCopyWith<$Res> get color {
    return $BirdColorCopyWith<$Res>(_value.color, (value) {
      return _then(_value.copyWith(color: value));
    });
  }
}

/// @nodoc

class _$AddColorImpl implements AddColor {
  const _$AddColorImpl(this.color);

  @override
  final BirdColor color;

  @override
  String toString() {
    return 'ColorsEvent.addColor(color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddColorImpl &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  /// Create a copy of ColorsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddColorImplCopyWith<_$AddColorImpl> get copyWith =>
      __$$AddColorImplCopyWithImpl<_$AddColorImpl>(this, _$identity);

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
  const factory AddColor(final BirdColor color) = _$AddColorImpl;

  BirdColor get color;

  /// Create a copy of ColorsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddColorImplCopyWith<_$AddColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteColorImplCopyWith<$Res> {
  factory _$$DeleteColorImplCopyWith(
          _$DeleteColorImpl value, $Res Function(_$DeleteColorImpl) then) =
      __$$DeleteColorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BirdColor color});

  $BirdColorCopyWith<$Res> get color;
}

/// @nodoc
class __$$DeleteColorImplCopyWithImpl<$Res>
    extends _$ColorsEventCopyWithImpl<$Res, _$DeleteColorImpl>
    implements _$$DeleteColorImplCopyWith<$Res> {
  __$$DeleteColorImplCopyWithImpl(
      _$DeleteColorImpl _value, $Res Function(_$DeleteColorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColorsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$DeleteColorImpl(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as BirdColor,
    ));
  }

  /// Create a copy of ColorsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BirdColorCopyWith<$Res> get color {
    return $BirdColorCopyWith<$Res>(_value.color, (value) {
      return _then(_value.copyWith(color: value));
    });
  }
}

/// @nodoc

class _$DeleteColorImpl implements DeleteColor {
  const _$DeleteColorImpl(this.color);

  @override
  final BirdColor color;

  @override
  String toString() {
    return 'ColorsEvent.deleteColor(color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteColorImpl &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  /// Create a copy of ColorsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteColorImplCopyWith<_$DeleteColorImpl> get copyWith =>
      __$$DeleteColorImplCopyWithImpl<_$DeleteColorImpl>(this, _$identity);

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
  const factory DeleteColor(final BirdColor color) = _$DeleteColorImpl;

  BirdColor get color;

  /// Create a copy of ColorsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteColorImplCopyWith<_$DeleteColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditColorImplCopyWith<$Res> {
  factory _$$EditColorImplCopyWith(
          _$EditColorImpl value, $Res Function(_$EditColorImpl) then) =
      __$$EditColorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BirdColor color});

  $BirdColorCopyWith<$Res> get color;
}

/// @nodoc
class __$$EditColorImplCopyWithImpl<$Res>
    extends _$ColorsEventCopyWithImpl<$Res, _$EditColorImpl>
    implements _$$EditColorImplCopyWith<$Res> {
  __$$EditColorImplCopyWithImpl(
      _$EditColorImpl _value, $Res Function(_$EditColorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColorsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$EditColorImpl(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as BirdColor,
    ));
  }

  /// Create a copy of ColorsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BirdColorCopyWith<$Res> get color {
    return $BirdColorCopyWith<$Res>(_value.color, (value) {
      return _then(_value.copyWith(color: value));
    });
  }
}

/// @nodoc

class _$EditColorImpl implements EditColor {
  const _$EditColorImpl(this.color);

  @override
  final BirdColor color;

  @override
  String toString() {
    return 'ColorsEvent.editColor(color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditColorImpl &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  /// Create a copy of ColorsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditColorImplCopyWith<_$EditColorImpl> get copyWith =>
      __$$EditColorImplCopyWithImpl<_$EditColorImpl>(this, _$identity);

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
  const factory EditColor(final BirdColor color) = _$EditColorImpl;

  BirdColor get color;

  /// Create a copy of ColorsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditColorImplCopyWith<_$EditColorImpl> get copyWith =>
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

  /// Create a copy of ColorsState
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
    extends _$ColorsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColorsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ColorsState.initial()';
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
    extends _$ColorsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColorsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ColorsState.loading()';
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
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BirdColor> colors});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ColorsStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColorsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colors = null,
  }) {
    return _then(_$LoadedImpl(
      colors: null == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<BirdColor>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl({required final List<BirdColor> colors})
      : _colors = colors;

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._colors, _colors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_colors));

  /// Create a copy of ColorsState
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
  const factory Loaded({required final List<BirdColor> colors}) = _$LoadedImpl;

  List<BirdColor> get colors;

  /// Create a copy of ColorsState
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
    extends _$ColorsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColorsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'ColorsState.error()';
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
  const factory Error() = _$ErrorImpl;
}
