// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'csv_bird_row.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CsvBirdRow {
  int get rowIndex;
  String? get ringNumber;
  String? get speciesName;
  String? get colorName;
  String? get cageName;
  Sex get sex;
  DateTime? get bornAt;
  DateTime? get diedAt;
  DateTime? get boughtAt;
  double? get boughtPrice;
  String? get fatherRingNumber;
  String? get motherRingNumber;
  String? get breederNumber;
  String? get ownerNumber;
  String? get notes;
  bool get hasError;
  String? get errorMessage;

  /// Create a copy of CsvBirdRow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CsvBirdRowCopyWith<CsvBirdRow> get copyWith =>
      _$CsvBirdRowCopyWithImpl<CsvBirdRow>(this as CsvBirdRow, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CsvBirdRow &&
            (identical(other.rowIndex, rowIndex) ||
                other.rowIndex == rowIndex) &&
            (identical(other.ringNumber, ringNumber) ||
                other.ringNumber == ringNumber) &&
            (identical(other.speciesName, speciesName) ||
                other.speciesName == speciesName) &&
            (identical(other.colorName, colorName) ||
                other.colorName == colorName) &&
            (identical(other.cageName, cageName) ||
                other.cageName == cageName) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.bornAt, bornAt) || other.bornAt == bornAt) &&
            (identical(other.diedAt, diedAt) || other.diedAt == diedAt) &&
            (identical(other.boughtAt, boughtAt) ||
                other.boughtAt == boughtAt) &&
            (identical(other.boughtPrice, boughtPrice) ||
                other.boughtPrice == boughtPrice) &&
            (identical(other.fatherRingNumber, fatherRingNumber) ||
                other.fatherRingNumber == fatherRingNumber) &&
            (identical(other.motherRingNumber, motherRingNumber) ||
                other.motherRingNumber == motherRingNumber) &&
            (identical(other.breederNumber, breederNumber) ||
                other.breederNumber == breederNumber) &&
            (identical(other.ownerNumber, ownerNumber) ||
                other.ownerNumber == ownerNumber) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      rowIndex,
      ringNumber,
      speciesName,
      colorName,
      cageName,
      sex,
      bornAt,
      diedAt,
      boughtAt,
      boughtPrice,
      fatherRingNumber,
      motherRingNumber,
      breederNumber,
      ownerNumber,
      notes,
      hasError,
      errorMessage);

  @override
  String toString() {
    return 'CsvBirdRow(rowIndex: $rowIndex, ringNumber: $ringNumber, speciesName: $speciesName, colorName: $colorName, cageName: $cageName, sex: $sex, bornAt: $bornAt, diedAt: $diedAt, boughtAt: $boughtAt, boughtPrice: $boughtPrice, fatherRingNumber: $fatherRingNumber, motherRingNumber: $motherRingNumber, breederNumber: $breederNumber, ownerNumber: $ownerNumber, notes: $notes, hasError: $hasError, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $CsvBirdRowCopyWith<$Res> {
  factory $CsvBirdRowCopyWith(
          CsvBirdRow value, $Res Function(CsvBirdRow) _then) =
      _$CsvBirdRowCopyWithImpl;
  @useResult
  $Res call(
      {int rowIndex,
      String? ringNumber,
      String? speciesName,
      String? colorName,
      String? cageName,
      Sex sex,
      DateTime? bornAt,
      DateTime? diedAt,
      DateTime? boughtAt,
      double? boughtPrice,
      String? fatherRingNumber,
      String? motherRingNumber,
      String? breederNumber,
      String? ownerNumber,
      String? notes,
      bool hasError,
      String? errorMessage});
}

/// @nodoc
class _$CsvBirdRowCopyWithImpl<$Res> implements $CsvBirdRowCopyWith<$Res> {
  _$CsvBirdRowCopyWithImpl(this._self, this._then);

  final CsvBirdRow _self;
  final $Res Function(CsvBirdRow) _then;

  /// Create a copy of CsvBirdRow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rowIndex = null,
    Object? ringNumber = freezed,
    Object? speciesName = freezed,
    Object? colorName = freezed,
    Object? cageName = freezed,
    Object? sex = null,
    Object? bornAt = freezed,
    Object? diedAt = freezed,
    Object? boughtAt = freezed,
    Object? boughtPrice = freezed,
    Object? fatherRingNumber = freezed,
    Object? motherRingNumber = freezed,
    Object? breederNumber = freezed,
    Object? ownerNumber = freezed,
    Object? notes = freezed,
    Object? hasError = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      rowIndex: null == rowIndex
          ? _self.rowIndex
          : rowIndex // ignore: cast_nullable_to_non_nullable
              as int,
      ringNumber: freezed == ringNumber
          ? _self.ringNumber
          : ringNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      speciesName: freezed == speciesName
          ? _self.speciesName
          : speciesName // ignore: cast_nullable_to_non_nullable
              as String?,
      colorName: freezed == colorName
          ? _self.colorName
          : colorName // ignore: cast_nullable_to_non_nullable
              as String?,
      cageName: freezed == cageName
          ? _self.cageName
          : cageName // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      bornAt: freezed == bornAt
          ? _self.bornAt
          : bornAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      diedAt: freezed == diedAt
          ? _self.diedAt
          : diedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      boughtAt: freezed == boughtAt
          ? _self.boughtAt
          : boughtAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      boughtPrice: freezed == boughtPrice
          ? _self.boughtPrice
          : boughtPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      fatherRingNumber: freezed == fatherRingNumber
          ? _self.fatherRingNumber
          : fatherRingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      motherRingNumber: freezed == motherRingNumber
          ? _self.motherRingNumber
          : motherRingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      breederNumber: freezed == breederNumber
          ? _self.breederNumber
          : breederNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerNumber: freezed == ownerNumber
          ? _self.ownerNumber
          : ownerNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      hasError: null == hasError
          ? _self.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CsvBirdRow].
extension CsvBirdRowPatterns on CsvBirdRow {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CsvBirdRow value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CsvBirdRow() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CsvBirdRow value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CsvBirdRow():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CsvBirdRow value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CsvBirdRow() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int rowIndex,
            String? ringNumber,
            String? speciesName,
            String? colorName,
            String? cageName,
            Sex sex,
            DateTime? bornAt,
            DateTime? diedAt,
            DateTime? boughtAt,
            double? boughtPrice,
            String? fatherRingNumber,
            String? motherRingNumber,
            String? breederNumber,
            String? ownerNumber,
            String? notes,
            bool hasError,
            String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CsvBirdRow() when $default != null:
        return $default(
            _that.rowIndex,
            _that.ringNumber,
            _that.speciesName,
            _that.colorName,
            _that.cageName,
            _that.sex,
            _that.bornAt,
            _that.diedAt,
            _that.boughtAt,
            _that.boughtPrice,
            _that.fatherRingNumber,
            _that.motherRingNumber,
            _that.breederNumber,
            _that.ownerNumber,
            _that.notes,
            _that.hasError,
            _that.errorMessage);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int rowIndex,
            String? ringNumber,
            String? speciesName,
            String? colorName,
            String? cageName,
            Sex sex,
            DateTime? bornAt,
            DateTime? diedAt,
            DateTime? boughtAt,
            double? boughtPrice,
            String? fatherRingNumber,
            String? motherRingNumber,
            String? breederNumber,
            String? ownerNumber,
            String? notes,
            bool hasError,
            String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CsvBirdRow():
        return $default(
            _that.rowIndex,
            _that.ringNumber,
            _that.speciesName,
            _that.colorName,
            _that.cageName,
            _that.sex,
            _that.bornAt,
            _that.diedAt,
            _that.boughtAt,
            _that.boughtPrice,
            _that.fatherRingNumber,
            _that.motherRingNumber,
            _that.breederNumber,
            _that.ownerNumber,
            _that.notes,
            _that.hasError,
            _that.errorMessage);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int rowIndex,
            String? ringNumber,
            String? speciesName,
            String? colorName,
            String? cageName,
            Sex sex,
            DateTime? bornAt,
            DateTime? diedAt,
            DateTime? boughtAt,
            double? boughtPrice,
            String? fatherRingNumber,
            String? motherRingNumber,
            String? breederNumber,
            String? ownerNumber,
            String? notes,
            bool hasError,
            String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CsvBirdRow() when $default != null:
        return $default(
            _that.rowIndex,
            _that.ringNumber,
            _that.speciesName,
            _that.colorName,
            _that.cageName,
            _that.sex,
            _that.bornAt,
            _that.diedAt,
            _that.boughtAt,
            _that.boughtPrice,
            _that.fatherRingNumber,
            _that.motherRingNumber,
            _that.breederNumber,
            _that.ownerNumber,
            _that.notes,
            _that.hasError,
            _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CsvBirdRow extends CsvBirdRow {
  const _CsvBirdRow(
      {required this.rowIndex,
      this.ringNumber,
      this.speciesName,
      this.colorName,
      this.cageName,
      this.sex = Sex.unknown,
      this.bornAt,
      this.diedAt,
      this.boughtAt,
      this.boughtPrice,
      this.fatherRingNumber,
      this.motherRingNumber,
      this.breederNumber,
      this.ownerNumber,
      this.notes,
      this.hasError = false,
      this.errorMessage})
      : super._();

  @override
  final int rowIndex;
  @override
  final String? ringNumber;
  @override
  final String? speciesName;
  @override
  final String? colorName;
  @override
  final String? cageName;
  @override
  @JsonKey()
  final Sex sex;
  @override
  final DateTime? bornAt;
  @override
  final DateTime? diedAt;
  @override
  final DateTime? boughtAt;
  @override
  final double? boughtPrice;
  @override
  final String? fatherRingNumber;
  @override
  final String? motherRingNumber;
  @override
  final String? breederNumber;
  @override
  final String? ownerNumber;
  @override
  final String? notes;
  @override
  @JsonKey()
  final bool hasError;
  @override
  final String? errorMessage;

  /// Create a copy of CsvBirdRow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CsvBirdRowCopyWith<_CsvBirdRow> get copyWith =>
      __$CsvBirdRowCopyWithImpl<_CsvBirdRow>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CsvBirdRow &&
            (identical(other.rowIndex, rowIndex) ||
                other.rowIndex == rowIndex) &&
            (identical(other.ringNumber, ringNumber) ||
                other.ringNumber == ringNumber) &&
            (identical(other.speciesName, speciesName) ||
                other.speciesName == speciesName) &&
            (identical(other.colorName, colorName) ||
                other.colorName == colorName) &&
            (identical(other.cageName, cageName) ||
                other.cageName == cageName) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.bornAt, bornAt) || other.bornAt == bornAt) &&
            (identical(other.diedAt, diedAt) || other.diedAt == diedAt) &&
            (identical(other.boughtAt, boughtAt) ||
                other.boughtAt == boughtAt) &&
            (identical(other.boughtPrice, boughtPrice) ||
                other.boughtPrice == boughtPrice) &&
            (identical(other.fatherRingNumber, fatherRingNumber) ||
                other.fatherRingNumber == fatherRingNumber) &&
            (identical(other.motherRingNumber, motherRingNumber) ||
                other.motherRingNumber == motherRingNumber) &&
            (identical(other.breederNumber, breederNumber) ||
                other.breederNumber == breederNumber) &&
            (identical(other.ownerNumber, ownerNumber) ||
                other.ownerNumber == ownerNumber) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      rowIndex,
      ringNumber,
      speciesName,
      colorName,
      cageName,
      sex,
      bornAt,
      diedAt,
      boughtAt,
      boughtPrice,
      fatherRingNumber,
      motherRingNumber,
      breederNumber,
      ownerNumber,
      notes,
      hasError,
      errorMessage);

  @override
  String toString() {
    return 'CsvBirdRow(rowIndex: $rowIndex, ringNumber: $ringNumber, speciesName: $speciesName, colorName: $colorName, cageName: $cageName, sex: $sex, bornAt: $bornAt, diedAt: $diedAt, boughtAt: $boughtAt, boughtPrice: $boughtPrice, fatherRingNumber: $fatherRingNumber, motherRingNumber: $motherRingNumber, breederNumber: $breederNumber, ownerNumber: $ownerNumber, notes: $notes, hasError: $hasError, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$CsvBirdRowCopyWith<$Res>
    implements $CsvBirdRowCopyWith<$Res> {
  factory _$CsvBirdRowCopyWith(
          _CsvBirdRow value, $Res Function(_CsvBirdRow) _then) =
      __$CsvBirdRowCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int rowIndex,
      String? ringNumber,
      String? speciesName,
      String? colorName,
      String? cageName,
      Sex sex,
      DateTime? bornAt,
      DateTime? diedAt,
      DateTime? boughtAt,
      double? boughtPrice,
      String? fatherRingNumber,
      String? motherRingNumber,
      String? breederNumber,
      String? ownerNumber,
      String? notes,
      bool hasError,
      String? errorMessage});
}

/// @nodoc
class __$CsvBirdRowCopyWithImpl<$Res> implements _$CsvBirdRowCopyWith<$Res> {
  __$CsvBirdRowCopyWithImpl(this._self, this._then);

  final _CsvBirdRow _self;
  final $Res Function(_CsvBirdRow) _then;

  /// Create a copy of CsvBirdRow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rowIndex = null,
    Object? ringNumber = freezed,
    Object? speciesName = freezed,
    Object? colorName = freezed,
    Object? cageName = freezed,
    Object? sex = null,
    Object? bornAt = freezed,
    Object? diedAt = freezed,
    Object? boughtAt = freezed,
    Object? boughtPrice = freezed,
    Object? fatherRingNumber = freezed,
    Object? motherRingNumber = freezed,
    Object? breederNumber = freezed,
    Object? ownerNumber = freezed,
    Object? notes = freezed,
    Object? hasError = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_CsvBirdRow(
      rowIndex: null == rowIndex
          ? _self.rowIndex
          : rowIndex // ignore: cast_nullable_to_non_nullable
              as int,
      ringNumber: freezed == ringNumber
          ? _self.ringNumber
          : ringNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      speciesName: freezed == speciesName
          ? _self.speciesName
          : speciesName // ignore: cast_nullable_to_non_nullable
              as String?,
      colorName: freezed == colorName
          ? _self.colorName
          : colorName // ignore: cast_nullable_to_non_nullable
              as String?,
      cageName: freezed == cageName
          ? _self.cageName
          : cageName // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      bornAt: freezed == bornAt
          ? _self.bornAt
          : bornAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      diedAt: freezed == diedAt
          ? _self.diedAt
          : diedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      boughtAt: freezed == boughtAt
          ? _self.boughtAt
          : boughtAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      boughtPrice: freezed == boughtPrice
          ? _self.boughtPrice
          : boughtPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      fatherRingNumber: freezed == fatherRingNumber
          ? _self.fatherRingNumber
          : fatherRingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      motherRingNumber: freezed == motherRingNumber
          ? _self.motherRingNumber
          : motherRingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      breederNumber: freezed == breederNumber
          ? _self.breederNumber
          : breederNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerNumber: freezed == ownerNumber
          ? _self.ownerNumber
          : ownerNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      hasError: null == hasError
          ? _self.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
