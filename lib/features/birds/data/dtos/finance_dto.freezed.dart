// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FinanceDto _$FinanceDtoFromJson(Map<String, dynamic> json) {
  return _FinanceDto.fromJson(json);
}

/// @nodoc
mixin _$FinanceDto {
  String get id => throw _privateConstructorUsedError;
  String? get collectionId => throw _privateConstructorUsedError;
  String? get collectionName => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;
  DateTime? get updated => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String get categoryId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @StringNullEmptyConverter()
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'bird')
  @StringNullEmptyConverter()
  String? get birdId => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  DateTime? get date => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  /// Serializes this FinanceDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FinanceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinanceDtoCopyWith<FinanceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceDtoCopyWith<$Res> {
  factory $FinanceDtoCopyWith(
          FinanceDto value, $Res Function(FinanceDto) then) =
      _$FinanceDtoCopyWithImpl<$Res, FinanceDto>;
  @useResult
  $Res call(
      {String id,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated,
      @JsonKey(name: 'category') String categoryId,
      String title,
      @StringNullEmptyConverter() String? notes,
      @JsonKey(name: 'bird') @StringNullEmptyConverter() String? birdId,
      @UtcDateTimeConverter() DateTime? date,
      double amount});
}

/// @nodoc
class _$FinanceDtoCopyWithImpl<$Res, $Val extends FinanceDto>
    implements $FinanceDtoCopyWith<$Res> {
  _$FinanceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinanceDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? categoryId = null,
    Object? title = null,
    Object? notes = freezed,
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
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$FinanceDtoImplCopyWith<$Res>
    implements $FinanceDtoCopyWith<$Res> {
  factory _$$FinanceDtoImplCopyWith(
          _$FinanceDtoImpl value, $Res Function(_$FinanceDtoImpl) then) =
      __$$FinanceDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated,
      @JsonKey(name: 'category') String categoryId,
      String title,
      @StringNullEmptyConverter() String? notes,
      @JsonKey(name: 'bird') @StringNullEmptyConverter() String? birdId,
      @UtcDateTimeConverter() DateTime? date,
      double amount});
}

/// @nodoc
class __$$FinanceDtoImplCopyWithImpl<$Res>
    extends _$FinanceDtoCopyWithImpl<$Res, _$FinanceDtoImpl>
    implements _$$FinanceDtoImplCopyWith<$Res> {
  __$$FinanceDtoImplCopyWithImpl(
      _$FinanceDtoImpl _value, $Res Function(_$FinanceDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FinanceDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? categoryId = null,
    Object? title = null,
    Object? notes = freezed,
    Object? birdId = freezed,
    Object? date = freezed,
    Object? amount = null,
  }) {
    return _then(_$FinanceDtoImpl(
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
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$FinanceDtoImpl implements _FinanceDto {
  const _$FinanceDtoImpl(
      {required this.id,
      this.collectionId,
      this.collectionName,
      this.created,
      this.updated,
      @JsonKey(name: 'category') required this.categoryId,
      required this.title,
      @StringNullEmptyConverter() this.notes,
      @JsonKey(name: 'bird') @StringNullEmptyConverter() this.birdId,
      @UtcDateTimeConverter() this.date,
      required this.amount});

  factory _$FinanceDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinanceDtoImplFromJson(json);

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
  @JsonKey(name: 'category')
  final String categoryId;
  @override
  final String title;
  @override
  @StringNullEmptyConverter()
  final String? notes;
  @override
  @JsonKey(name: 'bird')
  @StringNullEmptyConverter()
  final String? birdId;
  @override
  @UtcDateTimeConverter()
  final DateTime? date;
  @override
  final double amount;

  @override
  String toString() {
    return 'FinanceDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, categoryId: $categoryId, title: $title, notes: $notes, birdId: $birdId, date: $date, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.birdId, birdId) || other.birdId == birdId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, categoryId, title, notes, birdId, date, amount);

  /// Create a copy of FinanceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceDtoImplCopyWith<_$FinanceDtoImpl> get copyWith =>
      __$$FinanceDtoImplCopyWithImpl<_$FinanceDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinanceDtoImplToJson(
      this,
    );
  }
}

abstract class _FinanceDto implements FinanceDto {
  const factory _FinanceDto(
      {required final String id,
      final String? collectionId,
      final String? collectionName,
      final DateTime? created,
      final DateTime? updated,
      @JsonKey(name: 'category') required final String categoryId,
      required final String title,
      @StringNullEmptyConverter() final String? notes,
      @JsonKey(name: 'bird') @StringNullEmptyConverter() final String? birdId,
      @UtcDateTimeConverter() final DateTime? date,
      required final double amount}) = _$FinanceDtoImpl;

  factory _FinanceDto.fromJson(Map<String, dynamic> json) =
      _$FinanceDtoImpl.fromJson;

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
  @JsonKey(name: 'category')
  String get categoryId;
  @override
  String get title;
  @override
  @StringNullEmptyConverter()
  String? get notes;
  @override
  @JsonKey(name: 'bird')
  @StringNullEmptyConverter()
  String? get birdId;
  @override
  @UtcDateTimeConverter()
  DateTime? get date;
  @override
  double get amount;

  /// Create a copy of FinanceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinanceDtoImplCopyWith<_$FinanceDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
