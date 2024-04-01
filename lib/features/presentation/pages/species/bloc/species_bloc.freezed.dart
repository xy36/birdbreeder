// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'species_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpeciesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Species species) addSpecies,
    required TResult Function(Species species) deleteSpecies,
    required TResult Function(Species species) editSpecies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Species species)? addSpecies,
    TResult? Function(Species species)? deleteSpecies,
    TResult? Function(Species species)? editSpecies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Species species)? addSpecies,
    TResult Function(Species species)? deleteSpecies,
    TResult Function(Species species)? editSpecies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(AddSpecies value) addSpecies,
    required TResult Function(DeleteSpecies value) deleteSpecies,
    required TResult Function(EditSpecies value) editSpecies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(AddSpecies value)? addSpecies,
    TResult? Function(DeleteSpecies value)? deleteSpecies,
    TResult? Function(EditSpecies value)? editSpecies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(AddSpecies value)? addSpecies,
    TResult Function(DeleteSpecies value)? deleteSpecies,
    TResult Function(EditSpecies value)? editSpecies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeciesEventCopyWith<$Res> {
  factory $SpeciesEventCopyWith(
          SpeciesEvent value, $Res Function(SpeciesEvent) then) =
      _$SpeciesEventCopyWithImpl<$Res, SpeciesEvent>;
}

/// @nodoc
class _$SpeciesEventCopyWithImpl<$Res, $Val extends SpeciesEvent>
    implements $SpeciesEventCopyWith<$Res> {
  _$SpeciesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
          _$LoadImpl value, $Res Function(_$LoadImpl) then) =
      __$$LoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$SpeciesEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadImpl implements Load {
  const _$LoadImpl();

  @override
  String toString() {
    return 'SpeciesEvent.load()';
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
    required TResult Function(Species species) addSpecies,
    required TResult Function(Species species) deleteSpecies,
    required TResult Function(Species species) editSpecies,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Species species)? addSpecies,
    TResult? Function(Species species)? deleteSpecies,
    TResult? Function(Species species)? editSpecies,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Species species)? addSpecies,
    TResult Function(Species species)? deleteSpecies,
    TResult Function(Species species)? editSpecies,
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
    required TResult Function(AddSpecies value) addSpecies,
    required TResult Function(DeleteSpecies value) deleteSpecies,
    required TResult Function(EditSpecies value) editSpecies,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(AddSpecies value)? addSpecies,
    TResult? Function(DeleteSpecies value)? deleteSpecies,
    TResult? Function(EditSpecies value)? editSpecies,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(AddSpecies value)? addSpecies,
    TResult Function(DeleteSpecies value)? deleteSpecies,
    TResult Function(EditSpecies value)? editSpecies,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class Load implements SpeciesEvent {
  const factory Load() = _$LoadImpl;
}

/// @nodoc
abstract class _$$AddSpeciesImplCopyWith<$Res> {
  factory _$$AddSpeciesImplCopyWith(
          _$AddSpeciesImpl value, $Res Function(_$AddSpeciesImpl) then) =
      __$$AddSpeciesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Species species});

  $SpeciesCopyWith<$Res> get species;
}

/// @nodoc
class __$$AddSpeciesImplCopyWithImpl<$Res>
    extends _$SpeciesEventCopyWithImpl<$Res, _$AddSpeciesImpl>
    implements _$$AddSpeciesImplCopyWith<$Res> {
  __$$AddSpeciesImplCopyWithImpl(
      _$AddSpeciesImpl _value, $Res Function(_$AddSpeciesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? species = null,
  }) {
    return _then(_$AddSpeciesImpl(
      null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Species,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeciesCopyWith<$Res> get species {
    return $SpeciesCopyWith<$Res>(_value.species, (value) {
      return _then(_value.copyWith(species: value));
    });
  }
}

/// @nodoc

class _$AddSpeciesImpl implements AddSpecies {
  const _$AddSpeciesImpl(this.species);

  @override
  final Species species;

  @override
  String toString() {
    return 'SpeciesEvent.addSpecies(species: $species)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSpeciesImpl &&
            (identical(other.species, species) || other.species == species));
  }

  @override
  int get hashCode => Object.hash(runtimeType, species);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSpeciesImplCopyWith<_$AddSpeciesImpl> get copyWith =>
      __$$AddSpeciesImplCopyWithImpl<_$AddSpeciesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Species species) addSpecies,
    required TResult Function(Species species) deleteSpecies,
    required TResult Function(Species species) editSpecies,
  }) {
    return addSpecies(species);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Species species)? addSpecies,
    TResult? Function(Species species)? deleteSpecies,
    TResult? Function(Species species)? editSpecies,
  }) {
    return addSpecies?.call(species);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Species species)? addSpecies,
    TResult Function(Species species)? deleteSpecies,
    TResult Function(Species species)? editSpecies,
    required TResult orElse(),
  }) {
    if (addSpecies != null) {
      return addSpecies(species);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(AddSpecies value) addSpecies,
    required TResult Function(DeleteSpecies value) deleteSpecies,
    required TResult Function(EditSpecies value) editSpecies,
  }) {
    return addSpecies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(AddSpecies value)? addSpecies,
    TResult? Function(DeleteSpecies value)? deleteSpecies,
    TResult? Function(EditSpecies value)? editSpecies,
  }) {
    return addSpecies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(AddSpecies value)? addSpecies,
    TResult Function(DeleteSpecies value)? deleteSpecies,
    TResult Function(EditSpecies value)? editSpecies,
    required TResult orElse(),
  }) {
    if (addSpecies != null) {
      return addSpecies(this);
    }
    return orElse();
  }
}

abstract class AddSpecies implements SpeciesEvent {
  const factory AddSpecies(final Species species) = _$AddSpeciesImpl;

  Species get species;
  @JsonKey(ignore: true)
  _$$AddSpeciesImplCopyWith<_$AddSpeciesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSpeciesImplCopyWith<$Res> {
  factory _$$DeleteSpeciesImplCopyWith(
          _$DeleteSpeciesImpl value, $Res Function(_$DeleteSpeciesImpl) then) =
      __$$DeleteSpeciesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Species species});

  $SpeciesCopyWith<$Res> get species;
}

/// @nodoc
class __$$DeleteSpeciesImplCopyWithImpl<$Res>
    extends _$SpeciesEventCopyWithImpl<$Res, _$DeleteSpeciesImpl>
    implements _$$DeleteSpeciesImplCopyWith<$Res> {
  __$$DeleteSpeciesImplCopyWithImpl(
      _$DeleteSpeciesImpl _value, $Res Function(_$DeleteSpeciesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? species = null,
  }) {
    return _then(_$DeleteSpeciesImpl(
      null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Species,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeciesCopyWith<$Res> get species {
    return $SpeciesCopyWith<$Res>(_value.species, (value) {
      return _then(_value.copyWith(species: value));
    });
  }
}

/// @nodoc

class _$DeleteSpeciesImpl implements DeleteSpecies {
  const _$DeleteSpeciesImpl(this.species);

  @override
  final Species species;

  @override
  String toString() {
    return 'SpeciesEvent.deleteSpecies(species: $species)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSpeciesImpl &&
            (identical(other.species, species) || other.species == species));
  }

  @override
  int get hashCode => Object.hash(runtimeType, species);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSpeciesImplCopyWith<_$DeleteSpeciesImpl> get copyWith =>
      __$$DeleteSpeciesImplCopyWithImpl<_$DeleteSpeciesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Species species) addSpecies,
    required TResult Function(Species species) deleteSpecies,
    required TResult Function(Species species) editSpecies,
  }) {
    return deleteSpecies(species);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Species species)? addSpecies,
    TResult? Function(Species species)? deleteSpecies,
    TResult? Function(Species species)? editSpecies,
  }) {
    return deleteSpecies?.call(species);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Species species)? addSpecies,
    TResult Function(Species species)? deleteSpecies,
    TResult Function(Species species)? editSpecies,
    required TResult orElse(),
  }) {
    if (deleteSpecies != null) {
      return deleteSpecies(species);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(AddSpecies value) addSpecies,
    required TResult Function(DeleteSpecies value) deleteSpecies,
    required TResult Function(EditSpecies value) editSpecies,
  }) {
    return deleteSpecies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(AddSpecies value)? addSpecies,
    TResult? Function(DeleteSpecies value)? deleteSpecies,
    TResult? Function(EditSpecies value)? editSpecies,
  }) {
    return deleteSpecies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(AddSpecies value)? addSpecies,
    TResult Function(DeleteSpecies value)? deleteSpecies,
    TResult Function(EditSpecies value)? editSpecies,
    required TResult orElse(),
  }) {
    if (deleteSpecies != null) {
      return deleteSpecies(this);
    }
    return orElse();
  }
}

abstract class DeleteSpecies implements SpeciesEvent {
  const factory DeleteSpecies(final Species species) = _$DeleteSpeciesImpl;

  Species get species;
  @JsonKey(ignore: true)
  _$$DeleteSpeciesImplCopyWith<_$DeleteSpeciesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditSpeciesImplCopyWith<$Res> {
  factory _$$EditSpeciesImplCopyWith(
          _$EditSpeciesImpl value, $Res Function(_$EditSpeciesImpl) then) =
      __$$EditSpeciesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Species species});

  $SpeciesCopyWith<$Res> get species;
}

/// @nodoc
class __$$EditSpeciesImplCopyWithImpl<$Res>
    extends _$SpeciesEventCopyWithImpl<$Res, _$EditSpeciesImpl>
    implements _$$EditSpeciesImplCopyWith<$Res> {
  __$$EditSpeciesImplCopyWithImpl(
      _$EditSpeciesImpl _value, $Res Function(_$EditSpeciesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? species = null,
  }) {
    return _then(_$EditSpeciesImpl(
      null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Species,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeciesCopyWith<$Res> get species {
    return $SpeciesCopyWith<$Res>(_value.species, (value) {
      return _then(_value.copyWith(species: value));
    });
  }
}

/// @nodoc

class _$EditSpeciesImpl implements EditSpecies {
  const _$EditSpeciesImpl(this.species);

  @override
  final Species species;

  @override
  String toString() {
    return 'SpeciesEvent.editSpecies(species: $species)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditSpeciesImpl &&
            (identical(other.species, species) || other.species == species));
  }

  @override
  int get hashCode => Object.hash(runtimeType, species);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditSpeciesImplCopyWith<_$EditSpeciesImpl> get copyWith =>
      __$$EditSpeciesImplCopyWithImpl<_$EditSpeciesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(Species species) addSpecies,
    required TResult Function(Species species) deleteSpecies,
    required TResult Function(Species species) editSpecies,
  }) {
    return editSpecies(species);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(Species species)? addSpecies,
    TResult? Function(Species species)? deleteSpecies,
    TResult? Function(Species species)? editSpecies,
  }) {
    return editSpecies?.call(species);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(Species species)? addSpecies,
    TResult Function(Species species)? deleteSpecies,
    TResult Function(Species species)? editSpecies,
    required TResult orElse(),
  }) {
    if (editSpecies != null) {
      return editSpecies(species);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Load value) load,
    required TResult Function(AddSpecies value) addSpecies,
    required TResult Function(DeleteSpecies value) deleteSpecies,
    required TResult Function(EditSpecies value) editSpecies,
  }) {
    return editSpecies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Load value)? load,
    TResult? Function(AddSpecies value)? addSpecies,
    TResult? Function(DeleteSpecies value)? deleteSpecies,
    TResult? Function(EditSpecies value)? editSpecies,
  }) {
    return editSpecies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Load value)? load,
    TResult Function(AddSpecies value)? addSpecies,
    TResult Function(DeleteSpecies value)? deleteSpecies,
    TResult Function(EditSpecies value)? editSpecies,
    required TResult orElse(),
  }) {
    if (editSpecies != null) {
      return editSpecies(this);
    }
    return orElse();
  }
}

abstract class EditSpecies implements SpeciesEvent {
  const factory EditSpecies(final Species species) = _$EditSpeciesImpl;

  Species get species;
  @JsonKey(ignore: true)
  _$$EditSpeciesImplCopyWith<_$EditSpeciesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SpeciesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Species> species) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Species> species)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Species> species)? loaded,
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
abstract class $SpeciesStateCopyWith<$Res> {
  factory $SpeciesStateCopyWith(
          SpeciesState value, $Res Function(SpeciesState) then) =
      _$SpeciesStateCopyWithImpl<$Res, SpeciesState>;
}

/// @nodoc
class _$SpeciesStateCopyWithImpl<$Res, $Val extends SpeciesState>
    implements $SpeciesStateCopyWith<$Res> {
  _$SpeciesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SpeciesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SpeciesState.initial()';
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
    required TResult Function(List<Species> species) loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Species> species)? loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Species> species)? loaded,
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

abstract class Initial implements SpeciesState {
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
    extends _$SpeciesStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SpeciesState.loading()';
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
    required TResult Function(List<Species> species) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Species> species)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Species> species)? loaded,
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

abstract class Loading implements SpeciesState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Species> species});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$SpeciesStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? species = null,
  }) {
    return _then(_$LoadedImpl(
      species: null == species
          ? _value._species
          : species // ignore: cast_nullable_to_non_nullable
              as List<Species>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl({required final List<Species> species})
      : _species = species;

  final List<Species> _species;
  @override
  List<Species> get species {
    if (_species is EqualUnmodifiableListView) return _species;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_species);
  }

  @override
  String toString() {
    return 'SpeciesState.loaded(species: $species)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._species, _species));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_species));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Species> species) loaded,
    required TResult Function() error,
  }) {
    return loaded(species);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Species> species)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(species);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Species> species)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(species);
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

abstract class Loaded implements SpeciesState {
  const factory Loaded({required final List<Species> species}) = _$LoadedImpl;

  List<Species> get species;
  @JsonKey(ignore: true)
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
    extends _$SpeciesStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'SpeciesState.error()';
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
    required TResult Function(List<Species> species) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Species> species)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Species> species)? loaded,
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

abstract class Error implements SpeciesState {
  const factory Error() = _$ErrorImpl;
}
