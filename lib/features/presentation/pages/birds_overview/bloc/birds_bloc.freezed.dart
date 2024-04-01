// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'birds_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BirdsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() reload,
    required TResult Function(Bird bird) selectBird,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? reload,
    TResult? Function(Bird bird)? selectBird,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? reload,
    TResult Function(Bird bird)? selectBird,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Reload value) reload,
    required TResult Function(_SelectBird value) selectBird,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_SelectBird value)? selectBird,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Reload value)? reload,
    TResult Function(_SelectBird value)? selectBird,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirdsEventCopyWith<$Res> {
  factory $BirdsEventCopyWith(
          BirdsEvent value, $Res Function(BirdsEvent) then) =
      _$BirdsEventCopyWithImpl<$Res, BirdsEvent>;
}

/// @nodoc
class _$BirdsEventCopyWithImpl<$Res, $Val extends BirdsEvent>
    implements $BirdsEventCopyWith<$Res> {
  _$BirdsEventCopyWithImpl(this._value, this._then);

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
    extends _$BirdsEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadImpl implements _Load {
  const _$LoadImpl();

  @override
  String toString() {
    return 'BirdsEvent.load()';
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
    required TResult Function() reload,
    required TResult Function(Bird bird) selectBird,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? reload,
    TResult? Function(Bird bird)? selectBird,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? reload,
    TResult Function(Bird bird)? selectBird,
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
    required TResult Function(_Load value) load,
    required TResult Function(_Reload value) reload,
    required TResult Function(_SelectBird value) selectBird,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_SelectBird value)? selectBird,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Reload value)? reload,
    TResult Function(_SelectBird value)? selectBird,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements BirdsEvent {
  const factory _Load() = _$LoadImpl;
}

/// @nodoc
abstract class _$$ReloadImplCopyWith<$Res> {
  factory _$$ReloadImplCopyWith(
          _$ReloadImpl value, $Res Function(_$ReloadImpl) then) =
      __$$ReloadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReloadImplCopyWithImpl<$Res>
    extends _$BirdsEventCopyWithImpl<$Res, _$ReloadImpl>
    implements _$$ReloadImplCopyWith<$Res> {
  __$$ReloadImplCopyWithImpl(
      _$ReloadImpl _value, $Res Function(_$ReloadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReloadImpl implements _Reload {
  const _$ReloadImpl();

  @override
  String toString() {
    return 'BirdsEvent.reload()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReloadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() reload,
    required TResult Function(Bird bird) selectBird,
  }) {
    return reload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? reload,
    TResult? Function(Bird bird)? selectBird,
  }) {
    return reload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? reload,
    TResult Function(Bird bird)? selectBird,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Reload value) reload,
    required TResult Function(_SelectBird value) selectBird,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_SelectBird value)? selectBird,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Reload value)? reload,
    TResult Function(_SelectBird value)? selectBird,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class _Reload implements BirdsEvent {
  const factory _Reload() = _$ReloadImpl;
}

/// @nodoc
abstract class _$$SelectBirdImplCopyWith<$Res> {
  factory _$$SelectBirdImplCopyWith(
          _$SelectBirdImpl value, $Res Function(_$SelectBirdImpl) then) =
      __$$SelectBirdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Bird bird});

  $BirdCopyWith<$Res> get bird;
}

/// @nodoc
class __$$SelectBirdImplCopyWithImpl<$Res>
    extends _$BirdsEventCopyWithImpl<$Res, _$SelectBirdImpl>
    implements _$$SelectBirdImplCopyWith<$Res> {
  __$$SelectBirdImplCopyWithImpl(
      _$SelectBirdImpl _value, $Res Function(_$SelectBirdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bird = null,
  }) {
    return _then(_$SelectBirdImpl(
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

class _$SelectBirdImpl implements _SelectBird {
  const _$SelectBirdImpl({required this.bird});

  @override
  final Bird bird;

  @override
  String toString() {
    return 'BirdsEvent.selectBird(bird: $bird)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectBirdImpl &&
            (identical(other.bird, bird) || other.bird == bird));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bird);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectBirdImplCopyWith<_$SelectBirdImpl> get copyWith =>
      __$$SelectBirdImplCopyWithImpl<_$SelectBirdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() reload,
    required TResult Function(Bird bird) selectBird,
  }) {
    return selectBird(bird);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? reload,
    TResult? Function(Bird bird)? selectBird,
  }) {
    return selectBird?.call(bird);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? reload,
    TResult Function(Bird bird)? selectBird,
    required TResult orElse(),
  }) {
    if (selectBird != null) {
      return selectBird(bird);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Reload value) reload,
    required TResult Function(_SelectBird value) selectBird,
  }) {
    return selectBird(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Reload value)? reload,
    TResult? Function(_SelectBird value)? selectBird,
  }) {
    return selectBird?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Reload value)? reload,
    TResult Function(_SelectBird value)? selectBird,
    required TResult orElse(),
  }) {
    if (selectBird != null) {
      return selectBird(this);
    }
    return orElse();
  }
}

abstract class _SelectBird implements BirdsEvent {
  const factory _SelectBird({required final Bird bird}) = _$SelectBirdImpl;

  Bird get bird;
  @JsonKey(ignore: true)
  _$$SelectBirdImplCopyWith<_$SelectBirdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BirdsState {
  BirdsStatus get status => throw _privateConstructorUsedError;
  List<Bird> get birds => throw _privateConstructorUsedError;
  Bird? get selectedBird => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BirdsStateCopyWith<BirdsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirdsStateCopyWith<$Res> {
  factory $BirdsStateCopyWith(
          BirdsState value, $Res Function(BirdsState) then) =
      _$BirdsStateCopyWithImpl<$Res, BirdsState>;
  @useResult
  $Res call({BirdsStatus status, List<Bird> birds, Bird? selectedBird});

  $BirdCopyWith<$Res>? get selectedBird;
}

/// @nodoc
class _$BirdsStateCopyWithImpl<$Res, $Val extends BirdsState>
    implements $BirdsStateCopyWith<$Res> {
  _$BirdsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? birds = null,
    Object? selectedBird = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BirdsStatus,
      birds: null == birds
          ? _value.birds
          : birds // ignore: cast_nullable_to_non_nullable
              as List<Bird>,
      selectedBird: freezed == selectedBird
          ? _value.selectedBird
          : selectedBird // ignore: cast_nullable_to_non_nullable
              as Bird?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BirdCopyWith<$Res>? get selectedBird {
    if (_value.selectedBird == null) {
      return null;
    }

    return $BirdCopyWith<$Res>(_value.selectedBird!, (value) {
      return _then(_value.copyWith(selectedBird: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BirdsStateImplCopyWith<$Res>
    implements $BirdsStateCopyWith<$Res> {
  factory _$$BirdsStateImplCopyWith(
          _$BirdsStateImpl value, $Res Function(_$BirdsStateImpl) then) =
      __$$BirdsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BirdsStatus status, List<Bird> birds, Bird? selectedBird});

  @override
  $BirdCopyWith<$Res>? get selectedBird;
}

/// @nodoc
class __$$BirdsStateImplCopyWithImpl<$Res>
    extends _$BirdsStateCopyWithImpl<$Res, _$BirdsStateImpl>
    implements _$$BirdsStateImplCopyWith<$Res> {
  __$$BirdsStateImplCopyWithImpl(
      _$BirdsStateImpl _value, $Res Function(_$BirdsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? birds = null,
    Object? selectedBird = freezed,
  }) {
    return _then(_$BirdsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BirdsStatus,
      birds: null == birds
          ? _value._birds
          : birds // ignore: cast_nullable_to_non_nullable
              as List<Bird>,
      selectedBird: freezed == selectedBird
          ? _value.selectedBird
          : selectedBird // ignore: cast_nullable_to_non_nullable
              as Bird?,
    ));
  }
}

/// @nodoc

class _$BirdsStateImpl implements _BirdsState {
  const _$BirdsStateImpl(
      {this.status = BirdsStatus.initial,
      required final List<Bird> birds,
      this.selectedBird})
      : _birds = birds;

  @override
  @JsonKey()
  final BirdsStatus status;
  final List<Bird> _birds;
  @override
  List<Bird> get birds {
    if (_birds is EqualUnmodifiableListView) return _birds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_birds);
  }

  @override
  final Bird? selectedBird;

  @override
  String toString() {
    return 'BirdsState(status: $status, birds: $birds, selectedBird: $selectedBird)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._birds, _birds) &&
            (identical(other.selectedBird, selectedBird) ||
                other.selectedBird == selectedBird));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_birds), selectedBird);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdsStateImplCopyWith<_$BirdsStateImpl> get copyWith =>
      __$$BirdsStateImplCopyWithImpl<_$BirdsStateImpl>(this, _$identity);
}

abstract class _BirdsState implements BirdsState {
  const factory _BirdsState(
      {final BirdsStatus status,
      required final List<Bird> birds,
      final Bird? selectedBird}) = _$BirdsStateImpl;

  @override
  BirdsStatus get status;
  @override
  List<Bird> get birds;
  @override
  Bird? get selectedBird;
  @override
  @JsonKey(ignore: true)
  _$$BirdsStateImplCopyWith<_$BirdsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
