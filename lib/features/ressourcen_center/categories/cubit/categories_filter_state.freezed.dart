// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoriesFilterState {
  FinCategoryFilter get typeFilter;
  String get query;
  CategorySortField get sortField;
  bool get sortAsc;

  /// Create a copy of CategoriesFilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoriesFilterStateCopyWith<CategoriesFilterState> get copyWith =>
      _$CategoriesFilterStateCopyWithImpl<CategoriesFilterState>(
          this as CategoriesFilterState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoriesFilterState &&
            (identical(other.typeFilter, typeFilter) ||
                other.typeFilter == typeFilter) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.sortField, sortField) ||
                other.sortField == sortField) &&
            (identical(other.sortAsc, sortAsc) || other.sortAsc == sortAsc));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, typeFilter, query, sortField, sortAsc);

  @override
  String toString() {
    return 'CategoriesFilterState(typeFilter: $typeFilter, query: $query, sortField: $sortField, sortAsc: $sortAsc)';
  }
}

/// @nodoc
abstract mixin class $CategoriesFilterStateCopyWith<$Res> {
  factory $CategoriesFilterStateCopyWith(CategoriesFilterState value,
          $Res Function(CategoriesFilterState) _then) =
      _$CategoriesFilterStateCopyWithImpl;
  @useResult
  $Res call(
      {FinCategoryFilter typeFilter,
      String query,
      CategorySortField sortField,
      bool sortAsc});
}

/// @nodoc
class _$CategoriesFilterStateCopyWithImpl<$Res>
    implements $CategoriesFilterStateCopyWith<$Res> {
  _$CategoriesFilterStateCopyWithImpl(this._self, this._then);

  final CategoriesFilterState _self;
  final $Res Function(CategoriesFilterState) _then;

  /// Create a copy of CategoriesFilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeFilter = null,
    Object? query = null,
    Object? sortField = null,
    Object? sortAsc = null,
  }) {
    return _then(_self.copyWith(
      typeFilter: null == typeFilter
          ? _self.typeFilter
          : typeFilter // ignore: cast_nullable_to_non_nullable
              as FinCategoryFilter,
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      sortField: null == sortField
          ? _self.sortField
          : sortField // ignore: cast_nullable_to_non_nullable
              as CategorySortField,
      sortAsc: null == sortAsc
          ? _self.sortAsc
          : sortAsc // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [CategoriesFilterState].
extension CategoriesFilterStatePatterns on CategoriesFilterState {
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
    TResult Function(_CategoriesFilterState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoriesFilterState() when $default != null:
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
    TResult Function(_CategoriesFilterState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoriesFilterState():
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
    TResult? Function(_CategoriesFilterState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoriesFilterState() when $default != null:
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
    TResult Function(FinCategoryFilter typeFilter, String query,
            CategorySortField sortField, bool sortAsc)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoriesFilterState() when $default != null:
        return $default(
            _that.typeFilter, _that.query, _that.sortField, _that.sortAsc);
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
    TResult Function(FinCategoryFilter typeFilter, String query,
            CategorySortField sortField, bool sortAsc)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoriesFilterState():
        return $default(
            _that.typeFilter, _that.query, _that.sortField, _that.sortAsc);
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
    TResult? Function(FinCategoryFilter typeFilter, String query,
            CategorySortField sortField, bool sortAsc)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoriesFilterState() when $default != null:
        return $default(
            _that.typeFilter, _that.query, _that.sortField, _that.sortAsc);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CategoriesFilterState implements CategoriesFilterState {
  const _CategoriesFilterState(
      {this.typeFilter = FinCategoryFilter.all,
      this.query = '',
      this.sortField = CategorySortField.name,
      this.sortAsc = true});

  @override
  @JsonKey()
  final FinCategoryFilter typeFilter;
  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final CategorySortField sortField;
  @override
  @JsonKey()
  final bool sortAsc;

  /// Create a copy of CategoriesFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoriesFilterStateCopyWith<_CategoriesFilterState> get copyWith =>
      __$CategoriesFilterStateCopyWithImpl<_CategoriesFilterState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoriesFilterState &&
            (identical(other.typeFilter, typeFilter) ||
                other.typeFilter == typeFilter) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.sortField, sortField) ||
                other.sortField == sortField) &&
            (identical(other.sortAsc, sortAsc) || other.sortAsc == sortAsc));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, typeFilter, query, sortField, sortAsc);

  @override
  String toString() {
    return 'CategoriesFilterState(typeFilter: $typeFilter, query: $query, sortField: $sortField, sortAsc: $sortAsc)';
  }
}

/// @nodoc
abstract mixin class _$CategoriesFilterStateCopyWith<$Res>
    implements $CategoriesFilterStateCopyWith<$Res> {
  factory _$CategoriesFilterStateCopyWith(_CategoriesFilterState value,
          $Res Function(_CategoriesFilterState) _then) =
      __$CategoriesFilterStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {FinCategoryFilter typeFilter,
      String query,
      CategorySortField sortField,
      bool sortAsc});
}

/// @nodoc
class __$CategoriesFilterStateCopyWithImpl<$Res>
    implements _$CategoriesFilterStateCopyWith<$Res> {
  __$CategoriesFilterStateCopyWithImpl(this._self, this._then);

  final _CategoriesFilterState _self;
  final $Res Function(_CategoriesFilterState) _then;

  /// Create a copy of CategoriesFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? typeFilter = null,
    Object? query = null,
    Object? sortField = null,
    Object? sortAsc = null,
  }) {
    return _then(_CategoriesFilterState(
      typeFilter: null == typeFilter
          ? _self.typeFilter
          : typeFilter // ignore: cast_nullable_to_non_nullable
              as FinCategoryFilter,
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      sortField: null == sortField
          ? _self.sortField
          : sortField // ignore: cast_nullable_to_non_nullable
              as CategorySortField,
      sortAsc: null == sortAsc
          ? _self.sortAsc
          : sortAsc // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
