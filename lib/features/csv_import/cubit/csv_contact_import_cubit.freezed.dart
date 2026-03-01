// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'csv_contact_import_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CsvContactImportState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CsvContactImportState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CsvContactImportState()';
  }
}

/// @nodoc
class $CsvContactImportStateCopyWith<$Res> {
  $CsvContactImportStateCopyWith(
      CsvContactImportState _, $Res Function(CsvContactImportState) __);
}

/// Adds pattern-matching-related methods to [CsvContactImportState].
extension CsvContactImportStatePatterns on CsvContactImportState {
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
    TResult Function(CsvContactImportInitial value)? initial,
    TResult Function(CsvContactImportParsing value)? parsing,
    TResult Function(CsvContactImportPreview value)? preview,
    TResult Function(CsvContactImportImporting value)? importing,
    TResult Function(CsvContactImportCompleted value)? completed,
    TResult Function(CsvContactImportError value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CsvContactImportInitial() when initial != null:
        return initial(_that);
      case CsvContactImportParsing() when parsing != null:
        return parsing(_that);
      case CsvContactImportPreview() when preview != null:
        return preview(_that);
      case CsvContactImportImporting() when importing != null:
        return importing(_that);
      case CsvContactImportCompleted() when completed != null:
        return completed(_that);
      case CsvContactImportError() when error != null:
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
    required TResult Function(CsvContactImportInitial value) initial,
    required TResult Function(CsvContactImportParsing value) parsing,
    required TResult Function(CsvContactImportPreview value) preview,
    required TResult Function(CsvContactImportImporting value) importing,
    required TResult Function(CsvContactImportCompleted value) completed,
    required TResult Function(CsvContactImportError value) error,
  }) {
    final _that = this;
    switch (_that) {
      case CsvContactImportInitial():
        return initial(_that);
      case CsvContactImportParsing():
        return parsing(_that);
      case CsvContactImportPreview():
        return preview(_that);
      case CsvContactImportImporting():
        return importing(_that);
      case CsvContactImportCompleted():
        return completed(_that);
      case CsvContactImportError():
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
    TResult? Function(CsvContactImportInitial value)? initial,
    TResult? Function(CsvContactImportParsing value)? parsing,
    TResult? Function(CsvContactImportPreview value)? preview,
    TResult? Function(CsvContactImportImporting value)? importing,
    TResult? Function(CsvContactImportCompleted value)? completed,
    TResult? Function(CsvContactImportError value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case CsvContactImportInitial() when initial != null:
        return initial(_that);
      case CsvContactImportParsing() when parsing != null:
        return parsing(_that);
      case CsvContactImportPreview() when preview != null:
        return preview(_that);
      case CsvContactImportImporting() when importing != null:
        return importing(_that);
      case CsvContactImportCompleted() when completed != null:
        return completed(_that);
      case CsvContactImportError() when error != null:
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
    TResult Function(String fileName, List<CsvContactRow> rows, int validRows,
            int invalidRows)?
        preview,
    TResult Function(String fileName, List<CsvContactRow> rows,
            int currentIndex, int totalRows, List<CsvImportResult> results)?
        importing,
    TResult Function(CsvImportSummary summary)? completed,
    TResult Function(String message, String? details)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CsvContactImportInitial() when initial != null:
        return initial();
      case CsvContactImportParsing() when parsing != null:
        return parsing(_that.fileName);
      case CsvContactImportPreview() when preview != null:
        return preview(
            _that.fileName, _that.rows, _that.validRows, _that.invalidRows);
      case CsvContactImportImporting() when importing != null:
        return importing(_that.fileName, _that.rows, _that.currentIndex,
            _that.totalRows, _that.results);
      case CsvContactImportCompleted() when completed != null:
        return completed(_that.summary);
      case CsvContactImportError() when error != null:
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
    required TResult Function(String fileName, List<CsvContactRow> rows,
            int validRows, int invalidRows)
        preview,
    required TResult Function(String fileName, List<CsvContactRow> rows,
            int currentIndex, int totalRows, List<CsvImportResult> results)
        importing,
    required TResult Function(CsvImportSummary summary) completed,
    required TResult Function(String message, String? details) error,
  }) {
    final _that = this;
    switch (_that) {
      case CsvContactImportInitial():
        return initial();
      case CsvContactImportParsing():
        return parsing(_that.fileName);
      case CsvContactImportPreview():
        return preview(
            _that.fileName, _that.rows, _that.validRows, _that.invalidRows);
      case CsvContactImportImporting():
        return importing(_that.fileName, _that.rows, _that.currentIndex,
            _that.totalRows, _that.results);
      case CsvContactImportCompleted():
        return completed(_that.summary);
      case CsvContactImportError():
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
    TResult? Function(String fileName, List<CsvContactRow> rows, int validRows,
            int invalidRows)?
        preview,
    TResult? Function(String fileName, List<CsvContactRow> rows,
            int currentIndex, int totalRows, List<CsvImportResult> results)?
        importing,
    TResult? Function(CsvImportSummary summary)? completed,
    TResult? Function(String message, String? details)? error,
  }) {
    final _that = this;
    switch (_that) {
      case CsvContactImportInitial() when initial != null:
        return initial();
      case CsvContactImportParsing() when parsing != null:
        return parsing(_that.fileName);
      case CsvContactImportPreview() when preview != null:
        return preview(
            _that.fileName, _that.rows, _that.validRows, _that.invalidRows);
      case CsvContactImportImporting() when importing != null:
        return importing(_that.fileName, _that.rows, _that.currentIndex,
            _that.totalRows, _that.results);
      case CsvContactImportCompleted() when completed != null:
        return completed(_that.summary);
      case CsvContactImportError() when error != null:
        return error(_that.message, _that.details);
      case _:
        return null;
    }
  }
}

/// @nodoc

class CsvContactImportInitial implements CsvContactImportState {
  const CsvContactImportInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CsvContactImportInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CsvContactImportState.initial()';
  }
}

/// @nodoc

class CsvContactImportParsing implements CsvContactImportState {
  const CsvContactImportParsing({required this.fileName});

  final String fileName;

  /// Create a copy of CsvContactImportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CsvContactImportParsingCopyWith<CsvContactImportParsing> get copyWith =>
      _$CsvContactImportParsingCopyWithImpl<CsvContactImportParsing>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CsvContactImportParsing &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileName);

  @override
  String toString() {
    return 'CsvContactImportState.parsing(fileName: $fileName)';
  }
}

/// @nodoc
abstract mixin class $CsvContactImportParsingCopyWith<$Res>
    implements $CsvContactImportStateCopyWith<$Res> {
  factory $CsvContactImportParsingCopyWith(CsvContactImportParsing value,
          $Res Function(CsvContactImportParsing) _then) =
      _$CsvContactImportParsingCopyWithImpl;
  @useResult
  $Res call({String fileName});
}

/// @nodoc
class _$CsvContactImportParsingCopyWithImpl<$Res>
    implements $CsvContactImportParsingCopyWith<$Res> {
  _$CsvContactImportParsingCopyWithImpl(this._self, this._then);

  final CsvContactImportParsing _self;
  final $Res Function(CsvContactImportParsing) _then;

  /// Create a copy of CsvContactImportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fileName = null,
  }) {
    return _then(CsvContactImportParsing(
      fileName: null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class CsvContactImportPreview implements CsvContactImportState {
  const CsvContactImportPreview(
      {required this.fileName,
      required final List<CsvContactRow> rows,
      required this.validRows,
      required this.invalidRows})
      : _rows = rows;

  final String fileName;
  final List<CsvContactRow> _rows;
  List<CsvContactRow> get rows {
    if (_rows is EqualUnmodifiableListView) return _rows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rows);
  }

  final int validRows;
  final int invalidRows;

  /// Create a copy of CsvContactImportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CsvContactImportPreviewCopyWith<CsvContactImportPreview> get copyWith =>
      _$CsvContactImportPreviewCopyWithImpl<CsvContactImportPreview>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CsvContactImportPreview &&
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
    return 'CsvContactImportState.preview(fileName: $fileName, rows: $rows, validRows: $validRows, invalidRows: $invalidRows)';
  }
}

/// @nodoc
abstract mixin class $CsvContactImportPreviewCopyWith<$Res>
    implements $CsvContactImportStateCopyWith<$Res> {
  factory $CsvContactImportPreviewCopyWith(CsvContactImportPreview value,
          $Res Function(CsvContactImportPreview) _then) =
      _$CsvContactImportPreviewCopyWithImpl;
  @useResult
  $Res call(
      {String fileName,
      List<CsvContactRow> rows,
      int validRows,
      int invalidRows});
}

/// @nodoc
class _$CsvContactImportPreviewCopyWithImpl<$Res>
    implements $CsvContactImportPreviewCopyWith<$Res> {
  _$CsvContactImportPreviewCopyWithImpl(this._self, this._then);

  final CsvContactImportPreview _self;
  final $Res Function(CsvContactImportPreview) _then;

  /// Create a copy of CsvContactImportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fileName = null,
    Object? rows = null,
    Object? validRows = null,
    Object? invalidRows = null,
  }) {
    return _then(CsvContactImportPreview(
      fileName: null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      rows: null == rows
          ? _self._rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<CsvContactRow>,
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

class CsvContactImportImporting implements CsvContactImportState {
  const CsvContactImportImporting(
      {required this.fileName,
      required final List<CsvContactRow> rows,
      required this.currentIndex,
      required this.totalRows,
      final List<CsvImportResult> results = const []})
      : _rows = rows,
        _results = results;

  final String fileName;
  final List<CsvContactRow> _rows;
  List<CsvContactRow> get rows {
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

  /// Create a copy of CsvContactImportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CsvContactImportImportingCopyWith<CsvContactImportImporting> get copyWith =>
      _$CsvContactImportImportingCopyWithImpl<CsvContactImportImporting>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CsvContactImportImporting &&
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
    return 'CsvContactImportState.importing(fileName: $fileName, rows: $rows, currentIndex: $currentIndex, totalRows: $totalRows, results: $results)';
  }
}

/// @nodoc
abstract mixin class $CsvContactImportImportingCopyWith<$Res>
    implements $CsvContactImportStateCopyWith<$Res> {
  factory $CsvContactImportImportingCopyWith(CsvContactImportImporting value,
          $Res Function(CsvContactImportImporting) _then) =
      _$CsvContactImportImportingCopyWithImpl;
  @useResult
  $Res call(
      {String fileName,
      List<CsvContactRow> rows,
      int currentIndex,
      int totalRows,
      List<CsvImportResult> results});
}

/// @nodoc
class _$CsvContactImportImportingCopyWithImpl<$Res>
    implements $CsvContactImportImportingCopyWith<$Res> {
  _$CsvContactImportImportingCopyWithImpl(this._self, this._then);

  final CsvContactImportImporting _self;
  final $Res Function(CsvContactImportImporting) _then;

  /// Create a copy of CsvContactImportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fileName = null,
    Object? rows = null,
    Object? currentIndex = null,
    Object? totalRows = null,
    Object? results = null,
  }) {
    return _then(CsvContactImportImporting(
      fileName: null == fileName
          ? _self.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      rows: null == rows
          ? _self._rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<CsvContactRow>,
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

class CsvContactImportCompleted implements CsvContactImportState {
  const CsvContactImportCompleted({required this.summary});

  final CsvImportSummary summary;

  /// Create a copy of CsvContactImportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CsvContactImportCompletedCopyWith<CsvContactImportCompleted> get copyWith =>
      _$CsvContactImportCompletedCopyWithImpl<CsvContactImportCompleted>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CsvContactImportCompleted &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, summary);

  @override
  String toString() {
    return 'CsvContactImportState.completed(summary: $summary)';
  }
}

/// @nodoc
abstract mixin class $CsvContactImportCompletedCopyWith<$Res>
    implements $CsvContactImportStateCopyWith<$Res> {
  factory $CsvContactImportCompletedCopyWith(CsvContactImportCompleted value,
          $Res Function(CsvContactImportCompleted) _then) =
      _$CsvContactImportCompletedCopyWithImpl;
  @useResult
  $Res call({CsvImportSummary summary});

  $CsvImportSummaryCopyWith<$Res> get summary;
}

/// @nodoc
class _$CsvContactImportCompletedCopyWithImpl<$Res>
    implements $CsvContactImportCompletedCopyWith<$Res> {
  _$CsvContactImportCompletedCopyWithImpl(this._self, this._then);

  final CsvContactImportCompleted _self;
  final $Res Function(CsvContactImportCompleted) _then;

  /// Create a copy of CsvContactImportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? summary = null,
  }) {
    return _then(CsvContactImportCompleted(
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as CsvImportSummary,
    ));
  }

  /// Create a copy of CsvContactImportState
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

class CsvContactImportError implements CsvContactImportState {
  const CsvContactImportError({required this.message, this.details});

  final String message;
  final String? details;

  /// Create a copy of CsvContactImportState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CsvContactImportErrorCopyWith<CsvContactImportError> get copyWith =>
      _$CsvContactImportErrorCopyWithImpl<CsvContactImportError>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CsvContactImportError &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.details, details) || other.details == details));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, details);

  @override
  String toString() {
    return 'CsvContactImportState.error(message: $message, details: $details)';
  }
}

/// @nodoc
abstract mixin class $CsvContactImportErrorCopyWith<$Res>
    implements $CsvContactImportStateCopyWith<$Res> {
  factory $CsvContactImportErrorCopyWith(CsvContactImportError value,
          $Res Function(CsvContactImportError) _then) =
      _$CsvContactImportErrorCopyWithImpl;
  @useResult
  $Res call({String message, String? details});
}

/// @nodoc
class _$CsvContactImportErrorCopyWithImpl<$Res>
    implements $CsvContactImportErrorCopyWith<$Res> {
  _$CsvContactImportErrorCopyWithImpl(this._self, this._then);

  final CsvContactImportError _self;
  final $Res Function(CsvContactImportError) _then;

  /// Create a copy of CsvContactImportState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? details = freezed,
  }) {
    return _then(CsvContactImportError(
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
