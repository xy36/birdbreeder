// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'csv_bird_import_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CsvBirdImportState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CsvBirdImportState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CsvBirdImportState()';
  }
}

/// @nodoc
class $CsvBirdImportStateCopyWith<$Res> {
  $CsvBirdImportStateCopyWith(
      CsvBirdImportState _, $Res Function(CsvBirdImportState) __);
}

/// Adds pattern-matching-related methods to [CsvBirdImportState].
extension CsvBirdImportStatePatterns on CsvBirdImportState {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CsvBirdImportInitial value)? initial,
    TResult Function(CsvBirdImportParsing value)? parsing,
    TResult Function(CsvBirdImportPreview value)? preview,
    TResult Function(CsvBirdImportImporting value)? importing,
    TResult Function(CsvBirdImportCompleted value)? completed,
    TResult Function(CsvBirdImportError value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CsvBirdImportInitial() when initial != null:
        return initial(_that);
      case CsvBirdImportParsing() when parsing != null:
        return parsing(_that);
      case CsvBirdImportPreview() when preview != null:
        return preview(_that);
      case CsvBirdImportImporting() when importing != null:
        return importing(_that);
      case CsvBirdImportCompleted() when completed != null:
        return completed(_that);
      case CsvBirdImportError() when error != null:
        return error(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(CsvBirdImportInitial value) initial,
    required TResult Function(CsvBirdImportParsing value) parsing,
    required TResult Function(CsvBirdImportPreview value) preview,
    required TResult Function(CsvBirdImportImporting value) importing,
    required TResult Function(CsvBirdImportCompleted value) completed,
    required TResult Function(CsvBirdImportError value) error,
  }) {
    final _that = this;
    switch (_that) {
      case CsvBirdImportInitial():
        return initial(_that);
      case CsvBirdImportParsing():
        return parsing(_that);
      case CsvBirdImportPreview():
        return preview(_that);
      case CsvBirdImportImporting():
        return importing(_that);
      case CsvBirdImportCompleted():
        return completed(_that);
      case CsvBirdImportError():
        return error(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CsvBirdImportInitial value)? initial,
    TResult? Function(CsvBirdImportParsing value)? parsing,
    TResult? Function(CsvBirdImportPreview value)? preview,
    TResult? Function(CsvBirdImportImporting value)? importing,
    TResult? Function(CsvBirdImportCompleted value)? completed,
    TResult? Function(CsvBirdImportError value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case CsvBirdImportInitial() when initial != null:
        return initial(_that);
      case CsvBirdImportParsing() when parsing != null:
        return parsing(_that);
      case CsvBirdImportPreview() when preview != null:
        return preview(_that);
      case CsvBirdImportImporting() when importing != null:
        return importing(_that);
      case CsvBirdImportCompleted() when completed != null:
        return completed(_that);
      case CsvBirdImportError() when error != null:
        return error(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String fileName)? parsing,
    TResult Function(String fileName, List<CsvBirdRow> rows, int validRows,
            int invalidRows)?
        preview,
    TResult Function(String fileName, List<CsvBirdRow> rows, int currentIndex,
            int totalRows, List<CsvImportResult> results)?
        importing,
    TResult Function(CsvImportSummary summary)? completed,
    TResult Function(String message, String? details)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CsvBirdImportInitial() when initial != null:
        return initial();
      case CsvBirdImportParsing() when parsing != null:
        return parsing(_that.fileName);
      case CsvBirdImportPreview() when preview != null:
        return preview(
            _that.fileName, _that.rows, _that.validRows, _that.invalidRows);
      case CsvBirdImportImporting() when importing != null:
        return importing(_that.fileName, _that.rows, _that.currentIndex,
            _that.totalRows, _that.results);
      case CsvBirdImportCompleted() when completed != null:
        return completed(_that.summary);
      case CsvBirdImportError() when error != null:
        return error(_that.message, _that.details);
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String fileName) parsing,
    required TResult Function(String fileName, List<CsvBirdRow> rows,
            int validRows, int invalidRows)
        preview,
    required TResult Function(String fileName, List<CsvBirdRow> rows,
            int currentIndex, int totalRows, List<CsvImportResult> results)
        importing,
    required TResult Function(CsvImportSummary summary) completed,
    required TResult Function(String message, String? details) error,
  }) {
    final _that = this;
    switch (_that) {
      case CsvBirdImportInitial():
        return initial();
      case CsvBirdImportParsing():
        return parsing(_that.fileName);
      case CsvBirdImportPreview():
        return preview(
            _that.fileName, _that.rows, _that.validRows, _that.invalidRows);
      case CsvBirdImportImporting():
        return importing(_that.fileName, _that.rows, _that.currentIndex,
            _that.totalRows, _that.results);
      case CsvBirdImportCompleted():
        return completed(_that.summary);
      case CsvBirdImportError():
        return error(_that.message, _that.details);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String fileName)? parsing,
    TResult? Function(String fileName, List<CsvBirdRow> rows, int validRows,
            int invalidRows)?
        preview,
    TResult? Function(String fileName, List<CsvBirdRow> rows, int currentIndex,
            int totalRows, List<CsvImportResult> results)?
        importing,
    TResult? Function(CsvImportSummary summary)? completed,
    TResult? Function(String message, String? details)? error,
  }) {
    final _that = this;
    switch (_that) {
      case CsvBirdImportInitial() when initial != null:
        return initial();
      case CsvBirdImportParsing() when parsing != null:
        return parsing(_that.fileName);
      case CsvBirdImportPreview() when preview != null:
        return preview(
            _that.fileName, _that.rows, _that.validRows, _that.invalidRows);
      case CsvBirdImportImporting() when importing != null:
        return importing(_that.fileName, _that.rows, _that.currentIndex,
            _that.totalRows, _that.results);
      case CsvBirdImportCompleted() when completed != null:
        return completed(_that.summary);
      case CsvBirdImportError() when error != null:
        return error(_that.message, _that.details);
      case _:
        return null;
    }
  }
}

/// @nodoc

class CsvBirdImportInitial implements CsvBirdImportState {
  const CsvBirdImportInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CsvBirdImportInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CsvBirdImportState.initial()';
  }
}

/// @nodoc

class CsvBirdImportParsing implements CsvBirdImportState {
  const CsvBirdImportParsing({required this.fileName});

  final String fileName;

  /// Create a copy of CsvBirdImportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CsvBirdImportParsingCopyWith<CsvBirdImportParsing> get copyWith =>
      _$CsvBirdImportParsingCopyWithImpl<CsvBirdImportParsing>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CsvBirdImportParsing &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileName);

  @override
  String toString() {
    return 'CsvBirdImportState.parsing(fileName: $fileName)';
  }
}

/// @nodoc
abstract mixin class $CsvBirdImportParsingCopyWith<$Res>
    implements $CsvBirdImportStateCopyWith<$Res> {
  factory $CsvBirdImportParsingCopyWith(CsvBirdImportParsing value,
          $Res Function(CsvBirdImportParsing) _then) =
      _$CsvBirdImportParsingCopyWithImpl;
  @useResult
  $Res call({String fileName});
}

/// @nodoc
class _$CsvBirdImportParsingCopyWithImpl<$Res>
    implements $CsvBirdImportParsingCopyWith<$Res> {
  _$CsvBirdImportParsingCopyWithImpl(this._self, this._then);

  final CsvBirdImportParsing _self;
  final $Res Function(CsvBirdImportParsing) _then;

  /// Create a copy of CsvBirdImportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fileName = null,
  }) {
    return _then(CsvBirdImportParsing(
      fileName: null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class CsvBirdImportPreview implements CsvBirdImportState {
  const CsvBirdImportPreview(
      {required this.fileName,
      required final List<CsvBirdRow> rows,
      required this.validRows,
      required this.invalidRows})
      : _rows = rows;

  final String fileName;
  final List<CsvBirdRow> _rows;
  List<CsvBirdRow> get rows {
    if (_rows is EqualUnmodifiableListView) return _rows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rows);
  }

  final int validRows;
  final int invalidRows;

  /// Create a copy of CsvBirdImportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CsvBirdImportPreviewCopyWith<CsvBirdImportPreview> get copyWith =>
      _$CsvBirdImportPreviewCopyWithImpl<CsvBirdImportPreview>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CsvBirdImportPreview &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            const DeepCollectionEquality().equals(other._rows, _rows) &&
            (identical(other.validRows, validRows) ||
                other.validRows == validRows) &&
            (identical(other.invalidRows, invalidRows) ||
                other.invalidRows == invalidRows));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileName,
      const DeepCollectionEquality().hash(_rows), validRows, invalidRows);

  @override
  String toString() {
    return 'CsvBirdImportState.preview(fileName: $fileName, rows: $rows, validRows: $validRows, invalidRows: $invalidRows)';
  }
}

/// @nodoc
abstract mixin class $CsvBirdImportPreviewCopyWith<$Res>
    implements $CsvBirdImportStateCopyWith<$Res> {
  factory $CsvBirdImportPreviewCopyWith(CsvBirdImportPreview value,
          $Res Function(CsvBirdImportPreview) _then) =
      _$CsvBirdImportPreviewCopyWithImpl;
  @useResult
  $Res call(
      {String fileName, List<CsvBirdRow> rows, int validRows, int invalidRows});
}

/// @nodoc
class _$CsvBirdImportPreviewCopyWithImpl<$Res>
    implements $CsvBirdImportPreviewCopyWith<$Res> {
  _$CsvBirdImportPreviewCopyWithImpl(this._self, this._then);

  final CsvBirdImportPreview _self;
  final $Res Function(CsvBirdImportPreview) _then;

  /// Create a copy of CsvBirdImportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fileName = null,
    Object? rows = null,
    Object? validRows = null,
    Object? invalidRows = null,
  }) {
    return _then(CsvBirdImportPreview(
      fileName: null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      rows: null == rows
          ? _self._rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<CsvBirdRow>,
      validRows: null == validRows
          ? _self.validRows
          : validRows // ignore: cast_nullable_to_non_nullable
              as int,
      invalidRows: null == invalidRows
          ? _self.invalidRows
          : invalidRows // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class CsvBirdImportImporting implements CsvBirdImportState {
  const CsvBirdImportImporting(
      {required this.fileName,
      required final List<CsvBirdRow> rows,
      required this.currentIndex,
      required this.totalRows,
      final List<CsvImportResult> results = const []})
      : _rows = rows,
        _results = results;

  final String fileName;
  final List<CsvBirdRow> _rows;
  List<CsvBirdRow> get rows {
    if (_rows is EqualUnmodifiableListView) return _rows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rows);
  }

  final int currentIndex;
  final int totalRows;
  final List<CsvImportResult> _results;
  @JsonKey()
  List<CsvImportResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  /// Create a copy of CsvBirdImportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CsvBirdImportImportingCopyWith<CsvBirdImportImporting> get copyWith =>
      _$CsvBirdImportImportingCopyWithImpl<CsvBirdImportImporting>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CsvBirdImportImporting &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            const DeepCollectionEquality().equals(other._rows, _rows) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.totalRows, totalRows) ||
                other.totalRows == totalRows) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      fileName,
      const DeepCollectionEquality().hash(_rows),
      currentIndex,
      totalRows,
      const DeepCollectionEquality().hash(_results));

  @override
  String toString() {
    return 'CsvBirdImportState.importing(fileName: $fileName, rows: $rows, currentIndex: $currentIndex, totalRows: $totalRows, results: $results)';
  }
}

/// @nodoc
abstract mixin class $CsvBirdImportImportingCopyWith<$Res>
    implements $CsvBirdImportStateCopyWith<$Res> {
  factory $CsvBirdImportImportingCopyWith(CsvBirdImportImporting value,
          $Res Function(CsvBirdImportImporting) _then) =
      _$CsvBirdImportImportingCopyWithImpl;
  @useResult
  $Res call(
      {String fileName,
      List<CsvBirdRow> rows,
      int currentIndex,
      int totalRows,
      List<CsvImportResult> results});
}

/// @nodoc
class _$CsvBirdImportImportingCopyWithImpl<$Res>
    implements $CsvBirdImportImportingCopyWith<$Res> {
  _$CsvBirdImportImportingCopyWithImpl(this._self, this._then);

  final CsvBirdImportImporting _self;
  final $Res Function(CsvBirdImportImporting) _then;

  /// Create a copy of CsvBirdImportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fileName = null,
    Object? rows = null,
    Object? currentIndex = null,
    Object? totalRows = null,
    Object? results = null,
  }) {
    return _then(CsvBirdImportImporting(
      fileName: null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      rows: null == rows
          ? _self._rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<CsvBirdRow>,
      currentIndex: null == currentIndex
          ? _self.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      totalRows: null == totalRows
          ? _self.totalRows
          : totalRows // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _self._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CsvImportResult>,
    ));
  }
}

/// @nodoc

class CsvBirdImportCompleted implements CsvBirdImportState {
  const CsvBirdImportCompleted({required this.summary});

  final CsvImportSummary summary;

  /// Create a copy of CsvBirdImportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CsvBirdImportCompletedCopyWith<CsvBirdImportCompleted> get copyWith =>
      _$CsvBirdImportCompletedCopyWithImpl<CsvBirdImportCompleted>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CsvBirdImportCompleted &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, summary);

  @override
  String toString() {
    return 'CsvBirdImportState.completed(summary: $summary)';
  }
}

/// @nodoc
abstract mixin class $CsvBirdImportCompletedCopyWith<$Res>
    implements $CsvBirdImportStateCopyWith<$Res> {
  factory $CsvBirdImportCompletedCopyWith(CsvBirdImportCompleted value,
          $Res Function(CsvBirdImportCompleted) _then) =
      _$CsvBirdImportCompletedCopyWithImpl;
  @useResult
  $Res call({CsvImportSummary summary});

  $CsvImportSummaryCopyWith<$Res> get summary;
}

/// @nodoc
class _$CsvBirdImportCompletedCopyWithImpl<$Res>
    implements $CsvBirdImportCompletedCopyWith<$Res> {
  _$CsvBirdImportCompletedCopyWithImpl(this._self, this._then);

  final CsvBirdImportCompleted _self;
  final $Res Function(CsvBirdImportCompleted) _then;

  /// Create a copy of CsvBirdImportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? summary = null,
  }) {
    return _then(CsvBirdImportCompleted(
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as CsvImportSummary,
    ));
  }

  /// Create a copy of CsvBirdImportState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CsvImportSummaryCopyWith<$Res> get summary {
    return $CsvImportSummaryCopyWith<$Res>(_self.summary, (value) {
      return _then(_self.copyWith(summary: value));
    });
  }
}

/// @nodoc

class CsvBirdImportError implements CsvBirdImportState {
  const CsvBirdImportError({required this.message, this.details});

  final String message;
  final String? details;

  /// Create a copy of CsvBirdImportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CsvBirdImportErrorCopyWith<CsvBirdImportError> get copyWith =>
      _$CsvBirdImportErrorCopyWithImpl<CsvBirdImportError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CsvBirdImportError &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.details, details) || other.details == details));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, details);

  @override
  String toString() {
    return 'CsvBirdImportState.error(message: $message, details: $details)';
  }
}

/// @nodoc
abstract mixin class $CsvBirdImportErrorCopyWith<$Res>
    implements $CsvBirdImportStateCopyWith<$Res> {
  factory $CsvBirdImportErrorCopyWith(
          CsvBirdImportError value, $Res Function(CsvBirdImportError) _then) =
      _$CsvBirdImportErrorCopyWithImpl;
  @useResult
  $Res call({String message, String? details});
}

/// @nodoc
class _$CsvBirdImportErrorCopyWithImpl<$Res>
    implements $CsvBirdImportErrorCopyWith<$Res> {
  _$CsvBirdImportErrorCopyWithImpl(this._self, this._then);

  final CsvBirdImportError _self;
  final $Res Function(CsvBirdImportError) _then;

  /// Create a copy of CsvBirdImportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? details = freezed,
  }) {
    return _then(CsvBirdImportError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: freezed == details
          ? _self.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
