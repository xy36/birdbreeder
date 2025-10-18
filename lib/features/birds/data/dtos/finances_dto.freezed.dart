// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finances_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FinancesDto _$FinancesDtoFromJson(Map<String, dynamic> json) {
  return _FinancesDto.fromJson(json);
}

/// @nodoc
mixin _$FinancesDto {
  String get id => throw _privateConstructorUsedError;
  String? get collectionId => throw _privateConstructorUsedError;
  String? get collectionName => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;
  DateTime? get updated => throw _privateConstructorUsedError;
  String get financesCategoriesId => throw _privateConstructorUsedError;
  @StringNullEmptyConverter()
  String? get birdId => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  /// Serializes this FinancesDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FinancesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinancesDtoCopyWith<FinancesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancesDtoCopyWith<$Res> {
  factory $FinancesDtoCopyWith(
          FinancesDto value, $Res Function(FinancesDto) then) =
      _$FinancesDtoCopyWithImpl<$Res, FinancesDto>;
  @useResult
  $Res call(
      {String id,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated,
      String financesCategoriesId,
      @StringNullEmptyConverter() String? birdId,
      DateTime? date,
      double amount});
}

/// @nodoc
class _$FinancesDtoCopyWithImpl<$Res, $Val extends FinancesDto>
    implements $FinancesDtoCopyWith<$Res> {
  _$FinancesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinancesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? financesCategoriesId = null,
    Object? birdId = freezed,
    Object? date = freezed,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      financesCategoriesId: null == financesCategoriesId
          ? _value.financesCategoriesId
          : financesCategoriesId // ignore: cast_nullable_to_non_nullable
              as String,
      birdId: freezed == birdId
          ? _value.birdId
          : birdId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinancesDtoImplCopyWith<$Res>
    implements $FinancesDtoCopyWith<$Res> {
  factory _$$FinancesDtoImplCopyWith(
          _$FinancesDtoImpl value, $Res Function(_$FinancesDtoImpl) then) =
      __$$FinancesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated,
      String financesCategoriesId,
      @StringNullEmptyConverter() String? birdId,
      DateTime? date,
      double amount});
}

/// @nodoc
class __$$FinancesDtoImplCopyWithImpl<$Res>
    extends _$FinancesDtoCopyWithImpl<$Res, _$FinancesDtoImpl>
    implements _$$FinancesDtoImplCopyWith<$Res> {
  __$$FinancesDtoImplCopyWithImpl(
      _$FinancesDtoImpl _value, $Res Function(_$FinancesDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FinancesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? financesCategoriesId = null,
    Object? birdId = freezed,
    Object? date = freezed,
    Object? amount = null,
  }) {
    return _then(_$FinancesDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      financesCategoriesId: null == financesCategoriesId
          ? _value.financesCategoriesId
          : financesCategoriesId // ignore: cast_nullable_to_non_nullable
              as String,
      birdId: freezed == birdId
          ? _value.birdId
          : birdId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinancesDtoImpl implements _FinancesDto {
  const _$FinancesDtoImpl(
      {required this.id,
      this.collectionId,
      this.collectionName,
      this.created,
      this.updated,
      required this.financesCategoriesId,
      @StringNullEmptyConverter() this.birdId,
      this.date,
      required this.amount});

  factory _$FinancesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinancesDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String? collectionId;
  @override
  final String? collectionName;
  @override
  final DateTime? created;
  @override
  final DateTime? updated;
  @override
  final String financesCategoriesId;
  @override
  @StringNullEmptyConverter()
  final String? birdId;
  @override
  final DateTime? date;
  @override
  final double amount;

  @override
  String toString() {
    return 'FinancesDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, financesCategoriesId: $financesCategoriesId, birdId: $birdId, date: $date, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinancesDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.financesCategoriesId, financesCategoriesId) ||
                other.financesCategoriesId == financesCategoriesId) &&
            (identical(other.birdId, birdId) || other.birdId == birdId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, financesCategoriesId, birdId, date, amount);

  /// Create a copy of FinancesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinancesDtoImplCopyWith<_$FinancesDtoImpl> get copyWith =>
      __$$FinancesDtoImplCopyWithImpl<_$FinancesDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinancesDtoImplToJson(
      this,
    );
  }
}

abstract class _FinancesDto implements FinancesDto {
  const factory _FinancesDto(
      {required final String id,
      final String? collectionId,
      final String? collectionName,
      final DateTime? created,
      final DateTime? updated,
      required final String financesCategoriesId,
      @StringNullEmptyConverter() final String? birdId,
      final DateTime? date,
      required final double amount}) = _$FinancesDtoImpl;

  factory _FinancesDto.fromJson(Map<String, dynamic> json) =
      _$FinancesDtoImpl.fromJson;

  @override
  String get id;
  @override
  String? get collectionId;
  @override
  String? get collectionName;
  @override
  DateTime? get created;
  @override
  DateTime? get updated;
  @override
  String get financesCategoriesId;
  @override
  @StringNullEmptyConverter()
  String? get birdId;
  @override
  DateTime? get date;
  @override
  double get amount;

  /// Create a copy of FinancesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinancesDtoImplCopyWith<_$FinancesDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
