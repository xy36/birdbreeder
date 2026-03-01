// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'csv_import_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CsvImportResult {
  int get rowIndex;
  String get ringNumber;
  bool get success;
  bool get skipped;
  String? get errorMessage;
  String? get createdBirdId;
  bool get speciesCreated;
  bool get colorCreated;
  bool get cageCreated;

  /// Create a copy of CsvImportResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CsvImportResultCopyWith<CsvImportResult> get copyWith =>
      _$CsvImportResultCopyWithImpl<CsvImportResult>(
          this as CsvImportResult, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CsvImportResult &&
            (identical(other.rowIndex, rowIndex) ||
                other.rowIndex == rowIndex) &&
            (identical(other.ringNumber, ringNumber) ||
                other.ringNumber == ringNumber) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.skipped, skipped) || other.skipped == skipped) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.createdBirdId, createdBirdId) ||
                other.createdBirdId == createdBirdId) &&
            (identical(other.speciesCreated, speciesCreated) ||
                other.speciesCreated == speciesCreated) &&
            (identical(other.colorCreated, colorCreated) ||
                other.colorCreated == colorCreated) &&
            (identical(other.cageCreated, cageCreated) ||
                other.cageCreated == cageCreated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      rowIndex,
      ringNumber,
      success,
      skipped,
      errorMessage,
      createdBirdId,
      speciesCreated,
      colorCreated,
      cageCreated);

  @override
  String toString() {
    return 'CsvImportResult(rowIndex: $rowIndex, ringNumber: $ringNumber, success: $success, skipped: $skipped, errorMessage: $errorMessage, createdBirdId: $createdBirdId, speciesCreated: $speciesCreated, colorCreated: $colorCreated, cageCreated: $cageCreated)';
  }
}

/// @nodoc
abstract mixin class $CsvImportResultCopyWith<$Res> {
  factory $CsvImportResultCopyWith(
          CsvImportResult value, $Res Function(CsvImportResult) _then) =
      _$CsvImportResultCopyWithImpl;
  @useResult
  $Res call(
      {int rowIndex,
      String ringNumber,
      bool success,
      bool skipped,
      String? errorMessage,
      String? createdBirdId,
      bool speciesCreated,
      bool colorCreated,
      bool cageCreated});
}

/// @nodoc
class _$CsvImportResultCopyWithImpl<$Res>
    implements $CsvImportResultCopyWith<$Res> {
  _$CsvImportResultCopyWithImpl(this._self, this._then);

  final CsvImportResult _self;
  final $Res Function(CsvImportResult) _then;

  /// Create a copy of CsvImportResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rowIndex = null,
    Object? ringNumber = null,
    Object? success = null,
    Object? skipped = null,
    Object? errorMessage = freezed,
    Object? createdBirdId = freezed,
    Object? speciesCreated = null,
    Object? colorCreated = null,
    Object? cageCreated = null,
  }) {
    return _then(_self.copyWith(
      rowIndex: null == rowIndex
          ? _self.rowIndex
          : rowIndex // ignore: cast_nullable_to_non_nullable
              as int,
      ringNumber: null == ringNumber
          ? _self.ringNumber
          : ringNumber // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      skipped: null == skipped
          ? _self.skipped
          : skipped // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBirdId: freezed == createdBirdId
          ? _self.createdBirdId
          : createdBirdId // ignore: cast_nullable_to_non_nullable
              as String?,
      speciesCreated: null == speciesCreated
          ? _self.speciesCreated
          : speciesCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      colorCreated: null == colorCreated
          ? _self.colorCreated
          : colorCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      cageCreated: null == cageCreated
          ? _self.cageCreated
          : cageCreated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [CsvImportResult].
extension CsvImportResultPatterns on CsvImportResult {
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
    TResult Function(_CsvImportResult value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CsvImportResult() when $default != null:
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
    TResult Function(_CsvImportResult value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CsvImportResult():
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
    TResult? Function(_CsvImportResult value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CsvImportResult() when $default != null:
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
            String ringNumber,
            bool success,
            bool skipped,
            String? errorMessage,
            String? createdBirdId,
            bool speciesCreated,
            bool colorCreated,
            bool cageCreated)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CsvImportResult() when $default != null:
        return $default(
            _that.rowIndex,
            _that.ringNumber,
            _that.success,
            _that.skipped,
            _that.errorMessage,
            _that.createdBirdId,
            _that.speciesCreated,
            _that.colorCreated,
            _that.cageCreated);
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
            String ringNumber,
            bool success,
            bool skipped,
            String? errorMessage,
            String? createdBirdId,
            bool speciesCreated,
            bool colorCreated,
            bool cageCreated)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CsvImportResult():
        return $default(
            _that.rowIndex,
            _that.ringNumber,
            _that.success,
            _that.skipped,
            _that.errorMessage,
            _that.createdBirdId,
            _that.speciesCreated,
            _that.colorCreated,
            _that.cageCreated);
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
            String ringNumber,
            bool success,
            bool skipped,
            String? errorMessage,
            String? createdBirdId,
            bool speciesCreated,
            bool colorCreated,
            bool cageCreated)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CsvImportResult() when $default != null:
        return $default(
            _that.rowIndex,
            _that.ringNumber,
            _that.success,
            _that.skipped,
            _that.errorMessage,
            _that.createdBirdId,
            _that.speciesCreated,
            _that.colorCreated,
            _that.cageCreated);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CsvImportResult implements CsvImportResult {
  const _CsvImportResult(
      {required this.rowIndex,
      required this.ringNumber,
      this.success = false,
      this.skipped = false,
      this.errorMessage,
      this.createdBirdId,
      this.speciesCreated = false,
      this.colorCreated = false,
      this.cageCreated = false});

  @override
  final int rowIndex;
  @override
  final String ringNumber;
  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final bool skipped;
  @override
  final String? errorMessage;
  @override
  final String? createdBirdId;
  @override
  @JsonKey()
  final bool speciesCreated;
  @override
  @JsonKey()
  final bool colorCreated;
  @override
  @JsonKey()
  final bool cageCreated;

  /// Create a copy of CsvImportResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CsvImportResultCopyWith<_CsvImportResult> get copyWith =>
      __$CsvImportResultCopyWithImpl<_CsvImportResult>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CsvImportResult &&
            (identical(other.rowIndex, rowIndex) ||
                other.rowIndex == rowIndex) &&
            (identical(other.ringNumber, ringNumber) ||
                other.ringNumber == ringNumber) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.skipped, skipped) || other.skipped == skipped) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.createdBirdId, createdBirdId) ||
                other.createdBirdId == createdBirdId) &&
            (identical(other.speciesCreated, speciesCreated) ||
                other.speciesCreated == speciesCreated) &&
            (identical(other.colorCreated, colorCreated) ||
                other.colorCreated == colorCreated) &&
            (identical(other.cageCreated, cageCreated) ||
                other.cageCreated == cageCreated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      rowIndex,
      ringNumber,
      success,
      skipped,
      errorMessage,
      createdBirdId,
      speciesCreated,
      colorCreated,
      cageCreated);

  @override
  String toString() {
    return 'CsvImportResult(rowIndex: $rowIndex, ringNumber: $ringNumber, success: $success, skipped: $skipped, errorMessage: $errorMessage, createdBirdId: $createdBirdId, speciesCreated: $speciesCreated, colorCreated: $colorCreated, cageCreated: $cageCreated)';
  }
}

/// @nodoc
abstract mixin class _$CsvImportResultCopyWith<$Res>
    implements $CsvImportResultCopyWith<$Res> {
  factory _$CsvImportResultCopyWith(
          _CsvImportResult value, $Res Function(_CsvImportResult) _then) =
      __$CsvImportResultCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int rowIndex,
      String ringNumber,
      bool success,
      bool skipped,
      String? errorMessage,
      String? createdBirdId,
      bool speciesCreated,
      bool colorCreated,
      bool cageCreated});
}

/// @nodoc
class __$CsvImportResultCopyWithImpl<$Res>
    implements _$CsvImportResultCopyWith<$Res> {
  __$CsvImportResultCopyWithImpl(this._self, this._then);

  final _CsvImportResult _self;
  final $Res Function(_CsvImportResult) _then;

  /// Create a copy of CsvImportResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rowIndex = null,
    Object? ringNumber = null,
    Object? success = null,
    Object? skipped = null,
    Object? errorMessage = freezed,
    Object? createdBirdId = freezed,
    Object? speciesCreated = null,
    Object? colorCreated = null,
    Object? cageCreated = null,
  }) {
    return _then(_CsvImportResult(
      rowIndex: null == rowIndex
          ? _self.rowIndex
          : rowIndex // ignore: cast_nullable_to_non_nullable
              as int,
      ringNumber: null == ringNumber
          ? _self.ringNumber
          : ringNumber // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      skipped: null == skipped
          ? _self.skipped
          : skipped // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBirdId: freezed == createdBirdId
          ? _self.createdBirdId
          : createdBirdId // ignore: cast_nullable_to_non_nullable
              as String?,
      speciesCreated: null == speciesCreated
          ? _self.speciesCreated
          : speciesCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      colorCreated: null == colorCreated
          ? _self.colorCreated
          : colorCreated // ignore: cast_nullable_to_non_nullable
              as bool,
      cageCreated: null == cageCreated
          ? _self.cageCreated
          : cageCreated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$CsvImportSummary {
  int get totalRows;
  int get successfulImports;
  int get failedImports;
  int get skippedDuplicates;
  int get speciesCreated;
  int get colorsCreated;
  int get cagesCreated;
  List<CsvImportResult> get results;

  /// Create a copy of CsvImportSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CsvImportSummaryCopyWith<CsvImportSummary> get copyWith =>
      _$CsvImportSummaryCopyWithImpl<CsvImportSummary>(
          this as CsvImportSummary, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CsvImportSummary &&
            (identical(other.totalRows, totalRows) ||
                other.totalRows == totalRows) &&
            (identical(other.successfulImports, successfulImports) ||
                other.successfulImports == successfulImports) &&
            (identical(other.failedImports, failedImports) ||
                other.failedImports == failedImports) &&
            (identical(other.skippedDuplicates, skippedDuplicates) ||
                other.skippedDuplicates == skippedDuplicates) &&
            (identical(other.speciesCreated, speciesCreated) ||
                other.speciesCreated == speciesCreated) &&
            (identical(other.colorsCreated, colorsCreated) ||
                other.colorsCreated == colorsCreated) &&
            (identical(other.cagesCreated, cagesCreated) ||
                other.cagesCreated == cagesCreated) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalRows,
      successfulImports,
      failedImports,
      skippedDuplicates,
      speciesCreated,
      colorsCreated,
      cagesCreated,
      const DeepCollectionEquality().hash(results));

  @override
  String toString() {
    return 'CsvImportSummary(totalRows: $totalRows, successfulImports: $successfulImports, failedImports: $failedImports, skippedDuplicates: $skippedDuplicates, speciesCreated: $speciesCreated, colorsCreated: $colorsCreated, cagesCreated: $cagesCreated, results: $results)';
  }
}

/// @nodoc
abstract mixin class $CsvImportSummaryCopyWith<$Res> {
  factory $CsvImportSummaryCopyWith(
          CsvImportSummary value, $Res Function(CsvImportSummary) _then) =
      _$CsvImportSummaryCopyWithImpl;
  @useResult
  $Res call(
      {int totalRows,
      int successfulImports,
      int failedImports,
      int skippedDuplicates,
      int speciesCreated,
      int colorsCreated,
      int cagesCreated,
      List<CsvImportResult> results});
}

/// @nodoc
class _$CsvImportSummaryCopyWithImpl<$Res>
    implements $CsvImportSummaryCopyWith<$Res> {
  _$CsvImportSummaryCopyWithImpl(this._self, this._then);

  final CsvImportSummary _self;
  final $Res Function(CsvImportSummary) _then;

  /// Create a copy of CsvImportSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalRows = null,
    Object? successfulImports = null,
    Object? failedImports = null,
    Object? skippedDuplicates = null,
    Object? speciesCreated = null,
    Object? colorsCreated = null,
    Object? cagesCreated = null,
    Object? results = null,
  }) {
    return _then(_self.copyWith(
      totalRows: null == totalRows
          ? _self.totalRows
          : totalRows // ignore: cast_nullable_to_non_nullable
              as int,
      successfulImports: null == successfulImports
          ? _self.successfulImports
          : successfulImports // ignore: cast_nullable_to_non_nullable
              as int,
      failedImports: null == failedImports
          ? _self.failedImports
          : failedImports // ignore: cast_nullable_to_non_nullable
              as int,
      skippedDuplicates: null == skippedDuplicates
          ? _self.skippedDuplicates
          : skippedDuplicates // ignore: cast_nullable_to_non_nullable
              as int,
      speciesCreated: null == speciesCreated
          ? _self.speciesCreated
          : speciesCreated // ignore: cast_nullable_to_non_nullable
              as int,
      colorsCreated: null == colorsCreated
          ? _self.colorsCreated
          : colorsCreated // ignore: cast_nullable_to_non_nullable
              as int,
      cagesCreated: null == cagesCreated
          ? _self.cagesCreated
          : cagesCreated // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _self.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CsvImportResult>,
    ));
  }
}

/// Adds pattern-matching-related methods to [CsvImportSummary].
extension CsvImportSummaryPatterns on CsvImportSummary {
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
    TResult Function(_CsvImportSummary value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CsvImportSummary() when $default != null:
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
    TResult Function(_CsvImportSummary value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CsvImportSummary():
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
    TResult? Function(_CsvImportSummary value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CsvImportSummary() when $default != null:
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
            int totalRows,
            int successfulImports,
            int failedImports,
            int skippedDuplicates,
            int speciesCreated,
            int colorsCreated,
            int cagesCreated,
            List<CsvImportResult> results)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CsvImportSummary() when $default != null:
        return $default(
            _that.totalRows,
            _that.successfulImports,
            _that.failedImports,
            _that.skippedDuplicates,
            _that.speciesCreated,
            _that.colorsCreated,
            _that.cagesCreated,
            _that.results);
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
            int totalRows,
            int successfulImports,
            int failedImports,
            int skippedDuplicates,
            int speciesCreated,
            int colorsCreated,
            int cagesCreated,
            List<CsvImportResult> results)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CsvImportSummary():
        return $default(
            _that.totalRows,
            _that.successfulImports,
            _that.failedImports,
            _that.skippedDuplicates,
            _that.speciesCreated,
            _that.colorsCreated,
            _that.cagesCreated,
            _that.results);
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
            int totalRows,
            int successfulImports,
            int failedImports,
            int skippedDuplicates,
            int speciesCreated,
            int colorsCreated,
            int cagesCreated,
            List<CsvImportResult> results)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CsvImportSummary() when $default != null:
        return $default(
            _that.totalRows,
            _that.successfulImports,
            _that.failedImports,
            _that.skippedDuplicates,
            _that.speciesCreated,
            _that.colorsCreated,
            _that.cagesCreated,
            _that.results);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CsvImportSummary extends CsvImportSummary {
  const _CsvImportSummary(
      {this.totalRows = 0,
      this.successfulImports = 0,
      this.failedImports = 0,
      this.skippedDuplicates = 0,
      this.speciesCreated = 0,
      this.colorsCreated = 0,
      this.cagesCreated = 0,
      final List<CsvImportResult> results = const []})
      : _results = results,
        super._();

  @override
  @JsonKey()
  final int totalRows;
  @override
  @JsonKey()
  final int successfulImports;
  @override
  @JsonKey()
  final int failedImports;
  @override
  @JsonKey()
  final int skippedDuplicates;
  @override
  @JsonKey()
  final int speciesCreated;
  @override
  @JsonKey()
  final int colorsCreated;
  @override
  @JsonKey()
  final int cagesCreated;
  final List<CsvImportResult> _results;
  @override
  @JsonKey()
  List<CsvImportResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  /// Create a copy of CsvImportSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CsvImportSummaryCopyWith<_CsvImportSummary> get copyWith =>
      __$CsvImportSummaryCopyWithImpl<_CsvImportSummary>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CsvImportSummary &&
            (identical(other.totalRows, totalRows) ||
                other.totalRows == totalRows) &&
            (identical(other.successfulImports, successfulImports) ||
                other.successfulImports == successfulImports) &&
            (identical(other.failedImports, failedImports) ||
                other.failedImports == failedImports) &&
            (identical(other.skippedDuplicates, skippedDuplicates) ||
                other.skippedDuplicates == skippedDuplicates) &&
            (identical(other.speciesCreated, speciesCreated) ||
                other.speciesCreated == speciesCreated) &&
            (identical(other.colorsCreated, colorsCreated) ||
                other.colorsCreated == colorsCreated) &&
            (identical(other.cagesCreated, cagesCreated) ||
                other.cagesCreated == cagesCreated) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalRows,
      successfulImports,
      failedImports,
      skippedDuplicates,
      speciesCreated,
      colorsCreated,
      cagesCreated,
      const DeepCollectionEquality().hash(_results));

  @override
  String toString() {
    return 'CsvImportSummary(totalRows: $totalRows, successfulImports: $successfulImports, failedImports: $failedImports, skippedDuplicates: $skippedDuplicates, speciesCreated: $speciesCreated, colorsCreated: $colorsCreated, cagesCreated: $cagesCreated, results: $results)';
  }
}

/// @nodoc
abstract mixin class _$CsvImportSummaryCopyWith<$Res>
    implements $CsvImportSummaryCopyWith<$Res> {
  factory _$CsvImportSummaryCopyWith(
          _CsvImportSummary value, $Res Function(_CsvImportSummary) _then) =
      __$CsvImportSummaryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int totalRows,
      int successfulImports,
      int failedImports,
      int skippedDuplicates,
      int speciesCreated,
      int colorsCreated,
      int cagesCreated,
      List<CsvImportResult> results});
}

/// @nodoc
class __$CsvImportSummaryCopyWithImpl<$Res>
    implements _$CsvImportSummaryCopyWith<$Res> {
  __$CsvImportSummaryCopyWithImpl(this._self, this._then);

  final _CsvImportSummary _self;
  final $Res Function(_CsvImportSummary) _then;

  /// Create a copy of CsvImportSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? totalRows = null,
    Object? successfulImports = null,
    Object? failedImports = null,
    Object? skippedDuplicates = null,
    Object? speciesCreated = null,
    Object? colorsCreated = null,
    Object? cagesCreated = null,
    Object? results = null,
  }) {
    return _then(_CsvImportSummary(
      totalRows: null == totalRows
          ? _self.totalRows
          : totalRows // ignore: cast_nullable_to_non_nullable
              as int,
      successfulImports: null == successfulImports
          ? _self.successfulImports
          : successfulImports // ignore: cast_nullable_to_non_nullable
              as int,
      failedImports: null == failedImports
          ? _self.failedImports
          : failedImports // ignore: cast_nullable_to_non_nullable
              as int,
      skippedDuplicates: null == skippedDuplicates
          ? _self.skippedDuplicates
          : skippedDuplicates // ignore: cast_nullable_to_non_nullable
              as int,
      speciesCreated: null == speciesCreated
          ? _self.speciesCreated
          : speciesCreated // ignore: cast_nullable_to_non_nullable
              as int,
      colorsCreated: null == colorsCreated
          ? _self.colorsCreated
          : colorsCreated // ignore: cast_nullable_to_non_nullable
              as int,
      cagesCreated: null == cagesCreated
          ? _self.cagesCreated
          : cagesCreated // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _self._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CsvImportResult>,
    ));
  }
}

// dart format on
