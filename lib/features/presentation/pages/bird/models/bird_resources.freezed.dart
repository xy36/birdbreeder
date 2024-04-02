// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bird_resources.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BirdResources {
  List<BirdColor> get colorsList => throw _privateConstructorUsedError;
  List<Species> get speciesList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BirdResourcesCopyWith<BirdResources> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirdResourcesCopyWith<$Res> {
  factory $BirdResourcesCopyWith(
          BirdResources value, $Res Function(BirdResources) then) =
      _$BirdResourcesCopyWithImpl<$Res, BirdResources>;
  @useResult
  $Res call({List<BirdColor> colorsList, List<Species> speciesList});
}

/// @nodoc
class _$BirdResourcesCopyWithImpl<$Res, $Val extends BirdResources>
    implements $BirdResourcesCopyWith<$Res> {
  _$BirdResourcesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorsList = null,
    Object? speciesList = null,
  }) {
    return _then(_value.copyWith(
      colorsList: null == colorsList
          ? _value.colorsList
          : colorsList // ignore: cast_nullable_to_non_nullable
              as List<BirdColor>,
      speciesList: null == speciesList
          ? _value.speciesList
          : speciesList // ignore: cast_nullable_to_non_nullable
              as List<Species>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BirdResourcesImplCopyWith<$Res>
    implements $BirdResourcesCopyWith<$Res> {
  factory _$$BirdResourcesImplCopyWith(
          _$BirdResourcesImpl value, $Res Function(_$BirdResourcesImpl) then) =
      __$$BirdResourcesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BirdColor> colorsList, List<Species> speciesList});
}

/// @nodoc
class __$$BirdResourcesImplCopyWithImpl<$Res>
    extends _$BirdResourcesCopyWithImpl<$Res, _$BirdResourcesImpl>
    implements _$$BirdResourcesImplCopyWith<$Res> {
  __$$BirdResourcesImplCopyWithImpl(
      _$BirdResourcesImpl _value, $Res Function(_$BirdResourcesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorsList = null,
    Object? speciesList = null,
  }) {
    return _then(_$BirdResourcesImpl(
      colorsList: null == colorsList
          ? _value._colorsList
          : colorsList // ignore: cast_nullable_to_non_nullable
              as List<BirdColor>,
      speciesList: null == speciesList
          ? _value._speciesList
          : speciesList // ignore: cast_nullable_to_non_nullable
              as List<Species>,
    ));
  }
}

/// @nodoc

class _$BirdResourcesImpl implements _BirdResources {
  _$BirdResourcesImpl(
      {final List<BirdColor> colorsList = const [],
      final List<Species> speciesList = const []})
      : _colorsList = colorsList,
        _speciesList = speciesList;

  final List<BirdColor> _colorsList;
  @override
  @JsonKey()
  List<BirdColor> get colorsList {
    if (_colorsList is EqualUnmodifiableListView) return _colorsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colorsList);
  }

  final List<Species> _speciesList;
  @override
  @JsonKey()
  List<Species> get speciesList {
    if (_speciesList is EqualUnmodifiableListView) return _speciesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_speciesList);
  }

  @override
  String toString() {
    return 'BirdResources(colorsList: $colorsList, speciesList: $speciesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdResourcesImpl &&
            const DeepCollectionEquality()
                .equals(other._colorsList, _colorsList) &&
            const DeepCollectionEquality()
                .equals(other._speciesList, _speciesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_colorsList),
      const DeepCollectionEquality().hash(_speciesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdResourcesImplCopyWith<_$BirdResourcesImpl> get copyWith =>
      __$$BirdResourcesImplCopyWithImpl<_$BirdResourcesImpl>(this, _$identity);
}

abstract class _BirdResources implements BirdResources {
  factory _BirdResources(
      {final List<BirdColor> colorsList,
      final List<Species> speciesList}) = _$BirdResourcesImpl;

  @override
  List<BirdColor> get colorsList;
  @override
  List<Species> get speciesList;
  @override
  @JsonKey(ignore: true)
  _$$BirdResourcesImplCopyWith<_$BirdResourcesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
