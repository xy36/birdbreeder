// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Finance _$FinanceFromJson(Map<String, dynamic> json) {
  return _Finance.fromJson(json);
}

/// @nodoc
mixin _$Finance {
  String get id => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String? get birdId => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this Finance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Finance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinanceCopyWith<Finance> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinanceCopyWith<$Res> {
  factory $FinanceCopyWith(Finance value, $Res Function(Finance) then) =
      _$FinanceCopyWithImpl<$Res, Finance>;
  @useResult
  $Res call(
      {String id,
      String categoryId,
      String? birdId,
      DateTime? date,
      double amount,
      String title,
      String? notes});
}

/// @nodoc
class _$FinanceCopyWithImpl<$Res, $Val extends Finance>
    implements $FinanceCopyWith<$Res> {
  _$FinanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Finance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? birdId = freezed,
    Object? date = freezed,
    Object? amount = null,
    Object? title = null,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinanceImplCopyWith<$Res> implements $FinanceCopyWith<$Res> {
  factory _$$FinanceImplCopyWith(
          _$FinanceImpl value, $Res Function(_$FinanceImpl) then) =
      __$$FinanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String categoryId,
      String? birdId,
      DateTime? date,
      double amount,
      String title,
      String? notes});
}

/// @nodoc
class __$$FinanceImplCopyWithImpl<$Res>
    extends _$FinanceCopyWithImpl<$Res, _$FinanceImpl>
    implements _$$FinanceImplCopyWith<$Res> {
  __$$FinanceImplCopyWithImpl(
      _$FinanceImpl _value, $Res Function(_$FinanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Finance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? birdId = freezed,
    Object? date = freezed,
    Object? amount = null,
    Object? title = null,
    Object? notes = freezed,
  }) {
    return _then(_$FinanceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinanceImpl implements _Finance {
  const _$FinanceImpl(
      {required this.id,
      required this.categoryId,
      this.birdId,
      this.date,
      required this.amount,
      required this.title,
      this.notes});

  factory _$FinanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinanceImplFromJson(json);

  @override
  final String id;
  @override
  final String categoryId;
  @override
  final String? birdId;
  @override
  final DateTime? date;
  @override
  final double amount;
  @override
  final String title;
  @override
  final String? notes;

  @override
  String toString() {
    return 'Finance(id: $id, categoryId: $categoryId, birdId: $birdId, date: $date, amount: $amount, title: $title, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinanceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.birdId, birdId) || other.birdId == birdId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, categoryId, birdId, date, amount, title, notes);

  /// Create a copy of Finance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinanceImplCopyWith<_$FinanceImpl> get copyWith =>
      __$$FinanceImplCopyWithImpl<_$FinanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinanceImplToJson(
      this,
    );
  }
}

abstract class _Finance implements Finance {
  const factory _Finance(
      {required final String id,
      required final String categoryId,
      final String? birdId,
      final DateTime? date,
      required final double amount,
      required final String title,
      final String? notes}) = _$FinanceImpl;

  factory _Finance.fromJson(Map<String, dynamic> json) = _$FinanceImpl.fromJson;

  @override
  String get id;
  @override
  String get categoryId;
  @override
  String? get birdId;
  @override
  DateTime? get date;
  @override
  double get amount;
  @override
  String get title;
  @override
  String? get notes;

  /// Create a copy of Finance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinanceImplCopyWith<_$FinanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
