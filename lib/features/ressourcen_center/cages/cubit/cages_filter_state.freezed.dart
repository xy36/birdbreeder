// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cages_filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CagesFilterState {
  CageTypeFilter get typeFilter;
  String get query;
  CageSortField get sortField;
  bool get sortAsc;

  /// Create a copy of CagesFilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CagesFilterStateCopyWith<CagesFilterState> get copyWith =>
      _$CagesFilterStateCopyWithImpl<CagesFilterState>(
          this as CagesFilterState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CagesFilterState &&
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
    return 'CagesFilterState(typeFilter: $typeFilter, query: $query, sortField: $sortField, sortAsc: $sortAsc)';
  }
}

/// @nodoc
abstract mixin class $CagesFilterStateCopyWith<$Res> {
  factory $CagesFilterStateCopyWith(
          CagesFilterState value, $Res Function(CagesFilterState) _then) =
      _$CagesFilterStateCopyWithImpl;
  @useResult
  $Res call(
      {CageTypeFilter typeFilter,
      String query,
      CageSortField sortField,
      bool sortAsc});
}

/// @nodoc
class _$CagesFilterStateCopyWithImpl<$Res>
    implements $CagesFilterStateCopyWith<$Res> {
  _$CagesFilterStateCopyWithImpl(this._self, this._then);

  final CagesFilterState _self;
  final $Res Function(CagesFilterState) _then;

  /// Create a copy of CagesFilterState
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
              as CageTypeFilter,
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      sortField: null == sortField
          ? _self.sortField
          : sortField // ignore: cast_nullable_to_non_nullable
              as CageSortField,
      sortAsc: null == sortAsc
          ? _self.sortAsc
          : sortAsc // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [CagesFilterState].
extension CagesFilterStatePatterns on CagesFilterState {
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
    TResult Function(_CagesFilterState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CagesFilterState() when $default != null:
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
    TResult Function(_CagesFilterState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CagesFilterState():
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
    TResult? Function(_CagesFilterState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CagesFilterState() when $default != null:
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
    TResult Function(CageTypeFilter typeFilter, String query,
            CageSortField sortField, bool sortAsc)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CagesFilterState() when $default != null:
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
    TResult Function(CageTypeFilter typeFilter, String query,
            CageSortField sortField, bool sortAsc)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CagesFilterState():
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
    TResult? Function(CageTypeFilter typeFilter, String query,
            CageSortField sortField, bool sortAsc)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CagesFilterState() when $default != null:
        return $default(
            _that.typeFilter, _that.query, _that.sortField, _that.sortAsc);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CagesFilterState implements CagesFilterState {
  const _CagesFilterState(
      {this.typeFilter = CageTypeFilter.all,
      this.query = '',
      this.sortField = CageSortField.name,
      this.sortAsc = true});

  @override
  @JsonKey()
  final CageTypeFilter typeFilter;
  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final CageSortField sortField;
  @override
  @JsonKey()
  final bool sortAsc;

  /// Create a copy of CagesFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CagesFilterStateCopyWith<_CagesFilterState> get copyWith =>
      __$CagesFilterStateCopyWithImpl<_CagesFilterState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CagesFilterState &&
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
    return 'CagesFilterState(typeFilter: $typeFilter, query: $query, sortField: $sortField, sortAsc: $sortAsc)';
  }
}

/// @nodoc
abstract mixin class _$CagesFilterStateCopyWith<$Res>
    implements $CagesFilterStateCopyWith<$Res> {
  factory _$CagesFilterStateCopyWith(
          _CagesFilterState value, $Res Function(_CagesFilterState) _then) =
      __$CagesFilterStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {CageTypeFilter typeFilter,
      String query,
      CageSortField sortField,
      bool sortAsc});
}

/// @nodoc
class __$CagesFilterStateCopyWithImpl<$Res>
    implements _$CagesFilterStateCopyWith<$Res> {
  __$CagesFilterStateCopyWithImpl(this._self, this._then);

  final _CagesFilterState _self;
  final $Res Function(_CagesFilterState) _then;

  /// Create a copy of CagesFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? typeFilter = null,
    Object? query = null,
    Object? sortField = null,
    Object? sortAsc = null,
  }) {
    return _then(_CagesFilterState(
      typeFilter: null == typeFilter
          ? _self.typeFilter
          : typeFilter // ignore: cast_nullable_to_non_nullable
              as CageTypeFilter,
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      sortField: null == sortField
          ? _self.sortField
          : sortField // ignore: cast_nullable_to_non_nullable
              as CageSortField,
      sortAsc: null == sortAsc
          ? _self.sortAsc
          : sortAsc // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
