// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FinanceFilter {
  List<String> get categoryIds;
  List<FinanceCategoryKind> get kinds;
  List<String> get birdIds;
  DateTime? get fromDate;
  DateTime? get toDate;
  double? get minAmount;
  double? get maxAmount;
  FinanceSort get sort;

  /// Create a copy of FinanceFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FinanceFilterCopyWith<FinanceFilter> get copyWith =>
      _$FinanceFilterCopyWithImpl<FinanceFilter>(
          this as FinanceFilter, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FinanceFilter &&
            const DeepCollectionEquality()
                .equals(other.categoryIds, categoryIds) &&
            const DeepCollectionEquality().equals(other.kinds, kinds) &&
            const DeepCollectionEquality().equals(other.birdIds, birdIds) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.minAmount, minAmount) ||
                other.minAmount == minAmount) &&
            (identical(other.maxAmount, maxAmount) ||
                other.maxAmount == maxAmount) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(categoryIds),
      const DeepCollectionEquality().hash(kinds),
      const DeepCollectionEquality().hash(birdIds),
      fromDate,
      toDate,
      minAmount,
      maxAmount,
      sort);

  @override
  String toString() {
    return 'FinanceFilter(categoryIds: $categoryIds, kinds: $kinds, birdIds: $birdIds, fromDate: $fromDate, toDate: $toDate, minAmount: $minAmount, maxAmount: $maxAmount, sort: $sort)';
  }
}

/// @nodoc
abstract mixin class $FinanceFilterCopyWith<$Res> {
  factory $FinanceFilterCopyWith(
          FinanceFilter value, $Res Function(FinanceFilter) _then) =
      _$FinanceFilterCopyWithImpl;
  @useResult
  $Res call(
      {List<String> categoryIds,
      List<FinanceCategoryKind> kinds,
      List<String> birdIds,
      DateTime? fromDate,
      DateTime? toDate,
      double? minAmount,
      double? maxAmount,
      FinanceSort sort});
}

/// @nodoc
class _$FinanceFilterCopyWithImpl<$Res>
    implements $FinanceFilterCopyWith<$Res> {
  _$FinanceFilterCopyWithImpl(this._self, this._then);

  final FinanceFilter _self;
  final $Res Function(FinanceFilter) _then;

  /// Create a copy of FinanceFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryIds = null,
    Object? kinds = null,
    Object? birdIds = null,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? minAmount = freezed,
    Object? maxAmount = freezed,
    Object? sort = null,
  }) {
    return _then(_self.copyWith(
      categoryIds: null == categoryIds
          ? _self.categoryIds
          : categoryIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      kinds: null == kinds
          ? _self.kinds
          : kinds // ignore: cast_nullable_to_non_nullable
              as List<FinanceCategoryKind>,
      birdIds: null == birdIds
          ? _self.birdIds
          : birdIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fromDate: freezed == fromDate
          ? _self.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toDate: freezed == toDate
          ? _self.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      minAmount: freezed == minAmount
          ? _self.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      maxAmount: freezed == maxAmount
          ? _self.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sort: null == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as FinanceSort,
    ));
  }
}

/// Adds pattern-matching-related methods to [FinanceFilter].
extension FinanceFilterPatterns on FinanceFilter {
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
    TResult Function(_FinanceFilter value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FinanceFilter() when $default != null:
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
    TResult Function(_FinanceFilter value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FinanceFilter():
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
    TResult? Function(_FinanceFilter value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FinanceFilter() when $default != null:
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
            List<String> categoryIds,
            List<FinanceCategoryKind> kinds,
            List<String> birdIds,
            DateTime? fromDate,
            DateTime? toDate,
            double? minAmount,
            double? maxAmount,
            FinanceSort sort)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FinanceFilter() when $default != null:
        return $default(
            _that.categoryIds,
            _that.kinds,
            _that.birdIds,
            _that.fromDate,
            _that.toDate,
            _that.minAmount,
            _that.maxAmount,
            _that.sort);
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
            List<String> categoryIds,
            List<FinanceCategoryKind> kinds,
            List<String> birdIds,
            DateTime? fromDate,
            DateTime? toDate,
            double? minAmount,
            double? maxAmount,
            FinanceSort sort)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FinanceFilter():
        return $default(
            _that.categoryIds,
            _that.kinds,
            _that.birdIds,
            _that.fromDate,
            _that.toDate,
            _that.minAmount,
            _that.maxAmount,
            _that.sort);
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
            List<String> categoryIds,
            List<FinanceCategoryKind> kinds,
            List<String> birdIds,
            DateTime? fromDate,
            DateTime? toDate,
            double? minAmount,
            double? maxAmount,
            FinanceSort sort)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FinanceFilter() when $default != null:
        return $default(
            _that.categoryIds,
            _that.kinds,
            _that.birdIds,
            _that.fromDate,
            _that.toDate,
            _that.minAmount,
            _that.maxAmount,
            _that.sort);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FinanceFilter implements FinanceFilter {
  const _FinanceFilter(
      {final List<String> categoryIds = const [],
      final List<FinanceCategoryKind> kinds = const [],
      final List<String> birdIds = const [],
      this.fromDate,
      this.toDate,
      this.minAmount,
      this.maxAmount,
      this.sort = FinanceSort.dateDesc})
      : _categoryIds = categoryIds,
        _kinds = kinds,
        _birdIds = birdIds;

  final List<String> _categoryIds;
  @override
  @JsonKey()
  List<String> get categoryIds {
    if (_categoryIds is EqualUnmodifiableListView) return _categoryIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryIds);
  }

  final List<FinanceCategoryKind> _kinds;
  @override
  @JsonKey()
  List<FinanceCategoryKind> get kinds {
    if (_kinds is EqualUnmodifiableListView) return _kinds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_kinds);
  }

  final List<String> _birdIds;
  @override
  @JsonKey()
  List<String> get birdIds {
    if (_birdIds is EqualUnmodifiableListView) return _birdIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_birdIds);
  }

  @override
  final DateTime? fromDate;
  @override
  final DateTime? toDate;
  @override
  final double? minAmount;
  @override
  final double? maxAmount;
  @override
  @JsonKey()
  final FinanceSort sort;

  /// Create a copy of FinanceFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FinanceFilterCopyWith<_FinanceFilter> get copyWith =>
      __$FinanceFilterCopyWithImpl<_FinanceFilter>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FinanceFilter &&
            const DeepCollectionEquality()
                .equals(other._categoryIds, _categoryIds) &&
            const DeepCollectionEquality().equals(other._kinds, _kinds) &&
            const DeepCollectionEquality().equals(other._birdIds, _birdIds) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.minAmount, minAmount) ||
                other.minAmount == minAmount) &&
            (identical(other.maxAmount, maxAmount) ||
                other.maxAmount == maxAmount) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categoryIds),
      const DeepCollectionEquality().hash(_kinds),
      const DeepCollectionEquality().hash(_birdIds),
      fromDate,
      toDate,
      minAmount,
      maxAmount,
      sort);

  @override
  String toString() {
    return 'FinanceFilter(categoryIds: $categoryIds, kinds: $kinds, birdIds: $birdIds, fromDate: $fromDate, toDate: $toDate, minAmount: $minAmount, maxAmount: $maxAmount, sort: $sort)';
  }
}

/// @nodoc
abstract mixin class _$FinanceFilterCopyWith<$Res>
    implements $FinanceFilterCopyWith<$Res> {
  factory _$FinanceFilterCopyWith(
          _FinanceFilter value, $Res Function(_FinanceFilter) _then) =
      __$FinanceFilterCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<String> categoryIds,
      List<FinanceCategoryKind> kinds,
      List<String> birdIds,
      DateTime? fromDate,
      DateTime? toDate,
      double? minAmount,
      double? maxAmount,
      FinanceSort sort});
}

/// @nodoc
class __$FinanceFilterCopyWithImpl<$Res>
    implements _$FinanceFilterCopyWith<$Res> {
  __$FinanceFilterCopyWithImpl(this._self, this._then);

  final _FinanceFilter _self;
  final $Res Function(_FinanceFilter) _then;

  /// Create a copy of FinanceFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? categoryIds = null,
    Object? kinds = null,
    Object? birdIds = null,
    Object? fromDate = freezed,
    Object? toDate = freezed,
    Object? minAmount = freezed,
    Object? maxAmount = freezed,
    Object? sort = null,
  }) {
    return _then(_FinanceFilter(
      categoryIds: null == categoryIds
          ? _self._categoryIds
          : categoryIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      kinds: null == kinds
          ? _self._kinds
          : kinds // ignore: cast_nullable_to_non_nullable
              as List<FinanceCategoryKind>,
      birdIds: null == birdIds
          ? _self._birdIds
          : birdIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fromDate: freezed == fromDate
          ? _self.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      toDate: freezed == toDate
          ? _self.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      minAmount: freezed == minAmount
          ? _self.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      maxAmount: freezed == maxAmount
          ? _self.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      sort: null == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as FinanceSort,
    ));
  }
}

// dart format on
