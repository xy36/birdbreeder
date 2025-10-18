// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finances.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Finances _$FinancesFromJson(Map<String, dynamic> json) {
  return _Finances.fromJson(json);
}

/// @nodoc
mixin _$Finances {
  String get id => throw _privateConstructorUsedError;
  String get financesCategoriesId => throw _privateConstructorUsedError;
  String? get birdId => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  /// Serializes this Finances to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Finances
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinancesCopyWith<Finances> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancesCopyWith<$Res> {
  factory $FinancesCopyWith(Finances value, $Res Function(Finances) then) =
      _$FinancesCopyWithImpl<$Res, Finances>;
  @useResult
  $Res call(
      {String id,
      String financesCategoriesId,
      String? birdId,
      DateTime? date,
      double amount});
}

/// @nodoc
class _$FinancesCopyWithImpl<$Res, $Val extends Finances>
    implements $FinancesCopyWith<$Res> {
  _$FinancesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Finances
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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
abstract class _$$FinancesImplCopyWith<$Res>
    implements $FinancesCopyWith<$Res> {
  factory _$$FinancesImplCopyWith(
          _$FinancesImpl value, $Res Function(_$FinancesImpl) then) =
      __$$FinancesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String financesCategoriesId,
      String? birdId,
      DateTime? date,
      double amount});
}

/// @nodoc
class __$$FinancesImplCopyWithImpl<$Res>
    extends _$FinancesCopyWithImpl<$Res, _$FinancesImpl>
    implements _$$FinancesImplCopyWith<$Res> {
  __$$FinancesImplCopyWithImpl(
      _$FinancesImpl _value, $Res Function(_$FinancesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Finances
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? financesCategoriesId = null,
    Object? birdId = freezed,
    Object? date = freezed,
    Object? amount = null,
  }) {
    return _then(_$FinancesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$FinancesImpl implements _Finances {
  const _$FinancesImpl(
      {required this.id,
      required this.financesCategoriesId,
      this.birdId,
      this.date,
      required this.amount});

  factory _$FinancesImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinancesImplFromJson(json);

  @override
  final String id;
  @override
  final String financesCategoriesId;
  @override
  final String? birdId;
  @override
  final DateTime? date;
  @override
  final double amount;

  @override
  String toString() {
    return 'Finances(id: $id, financesCategoriesId: $financesCategoriesId, birdId: $birdId, date: $date, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinancesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.financesCategoriesId, financesCategoriesId) ||
                other.financesCategoriesId == financesCategoriesId) &&
            (identical(other.birdId, birdId) || other.birdId == birdId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, financesCategoriesId, birdId, date, amount);

  /// Create a copy of Finances
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinancesImplCopyWith<_$FinancesImpl> get copyWith =>
      __$$FinancesImplCopyWithImpl<_$FinancesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinancesImplToJson(
      this,
    );
  }
}

abstract class _Finances implements Finances {
  const factory _Finances(
      {required final String id,
      required final String financesCategoriesId,
      final String? birdId,
      final DateTime? date,
      required final double amount}) = _$FinancesImpl;

  factory _Finances.fromJson(Map<String, dynamic> json) =
      _$FinancesImpl.fromJson;

  @override
  String get id;
  @override
  String get financesCategoriesId;
  @override
  String? get birdId;
  @override
  DateTime? get date;
  @override
  double get amount;

  /// Create a copy of Finances
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinancesImplCopyWith<_$FinancesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
