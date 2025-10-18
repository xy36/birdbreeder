// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finances_categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FinancesCategories _$FinancesCategoriesFromJson(Map<String, dynamic> json) {
  return _FinancesCategories.fromJson(json);
}

/// @nodoc
mixin _$FinancesCategories {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  FinancesCategoriesKind get kind => throw _privateConstructorUsedError;

  /// Serializes this FinancesCategories to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FinancesCategories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinancesCategoriesCopyWith<FinancesCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancesCategoriesCopyWith<$Res> {
  factory $FinancesCategoriesCopyWith(
          FinancesCategories value, $Res Function(FinancesCategories) then) =
      _$FinancesCategoriesCopyWithImpl<$Res, FinancesCategories>;
  @useResult
  $Res call(
      {String id, String name, String color, FinancesCategoriesKind kind});
}

/// @nodoc
class _$FinancesCategoriesCopyWithImpl<$Res, $Val extends FinancesCategories>
    implements $FinancesCategoriesCopyWith<$Res> {
  _$FinancesCategoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinancesCategories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? kind = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as FinancesCategoriesKind,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinancesCategoriesImplCopyWith<$Res>
    implements $FinancesCategoriesCopyWith<$Res> {
  factory _$$FinancesCategoriesImplCopyWith(_$FinancesCategoriesImpl value,
          $Res Function(_$FinancesCategoriesImpl) then) =
      __$$FinancesCategoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, String color, FinancesCategoriesKind kind});
}

/// @nodoc
class __$$FinancesCategoriesImplCopyWithImpl<$Res>
    extends _$FinancesCategoriesCopyWithImpl<$Res, _$FinancesCategoriesImpl>
    implements _$$FinancesCategoriesImplCopyWith<$Res> {
  __$$FinancesCategoriesImplCopyWithImpl(_$FinancesCategoriesImpl _value,
      $Res Function(_$FinancesCategoriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of FinancesCategories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? kind = null,
  }) {
    return _then(_$FinancesCategoriesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as FinancesCategoriesKind,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinancesCategoriesImpl implements _FinancesCategories {
  const _$FinancesCategoriesImpl(
      {required this.id,
      required this.name,
      required this.color,
      required this.kind});

  factory _$FinancesCategoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinancesCategoriesImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String color;
  @override
  final FinancesCategoriesKind kind;

  @override
  String toString() {
    return 'FinancesCategories(id: $id, name: $name, color: $color, kind: $kind)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinancesCategoriesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.kind, kind) || other.kind == kind));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color, kind);

  /// Create a copy of FinancesCategories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinancesCategoriesImplCopyWith<_$FinancesCategoriesImpl> get copyWith =>
      __$$FinancesCategoriesImplCopyWithImpl<_$FinancesCategoriesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinancesCategoriesImplToJson(
      this,
    );
  }
}

abstract class _FinancesCategories implements FinancesCategories {
  const factory _FinancesCategories(
      {required final String id,
      required final String name,
      required final String color,
      required final FinancesCategoriesKind kind}) = _$FinancesCategoriesImpl;

  factory _FinancesCategories.fromJson(Map<String, dynamic> json) =
      _$FinancesCategoriesImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get color;
  @override
  FinancesCategoriesKind get kind;

  /// Create a copy of FinancesCategories
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinancesCategoriesImplCopyWith<_$FinancesCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
