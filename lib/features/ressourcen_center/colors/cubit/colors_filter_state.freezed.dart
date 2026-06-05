// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'colors_filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ColorsFilterState {
  String get query;
  ColorSortField get sortField;
  bool get sortAsc;

  /// Create a copy of ColorsFilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ColorsFilterStateCopyWith<ColorsFilterState> get copyWith =>
      _$ColorsFilterStateCopyWithImpl<ColorsFilterState>(
          this as ColorsFilterState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ColorsFilterState &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.sortField, sortField) ||
                other.sortField == sortField) &&
            (identical(other.sortAsc, sortAsc) || other.sortAsc == sortAsc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, sortField, sortAsc);

  @override
  String toString() {
    return 'ColorsFilterState(query: $query, sortField: $sortField, sortAsc: $sortAsc)';
  }
}

/// @nodoc
abstract mixin class $ColorsFilterStateCopyWith<$Res> {
  factory $ColorsFilterStateCopyWith(
          ColorsFilterState value, $Res Function(ColorsFilterState) _then) =
      _$ColorsFilterStateCopyWithImpl;
  @useResult
  $Res call({String query, ColorSortField sortField, bool sortAsc});
}

/// @nodoc
class _$ColorsFilterStateCopyWithImpl<$Res>
    implements $ColorsFilterStateCopyWith<$Res> {
  _$ColorsFilterStateCopyWithImpl(this._self, this._then);

  final ColorsFilterState _self;
  final $Res Function(ColorsFilterState) _then;

  /// Create a copy of ColorsFilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? sortField = null,
    Object? sortAsc = null,
  }) {
    return _then(_self.copyWith(
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      sortField: null == sortField
          ? _self.sortField
          : sortField // ignore: cast_nullable_to_non_nullable
              as ColorSortField,
      sortAsc: null == sortAsc
          ? _self.sortAsc
          : sortAsc // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [ColorsFilterState].
extension ColorsFilterStatePatterns on ColorsFilterState {
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
    TResult Function(_ColorsFilterState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ColorsFilterState() when $default != null:
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
    TResult Function(_ColorsFilterState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColorsFilterState():
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
    TResult? Function(_ColorsFilterState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColorsFilterState() when $default != null:
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
    TResult Function(String query, ColorSortField sortField, bool sortAsc)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ColorsFilterState() when $default != null:
        return $default(_that.query, _that.sortField, _that.sortAsc);
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
    TResult Function(String query, ColorSortField sortField, bool sortAsc)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColorsFilterState():
        return $default(_that.query, _that.sortField, _that.sortAsc);
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
    TResult? Function(String query, ColorSortField sortField, bool sortAsc)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ColorsFilterState() when $default != null:
        return $default(_that.query, _that.sortField, _that.sortAsc);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ColorsFilterState implements ColorsFilterState {
  const _ColorsFilterState(
      {this.query = '',
      this.sortField = ColorSortField.name,
      this.sortAsc = true});

  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final ColorSortField sortField;
  @override
  @JsonKey()
  final bool sortAsc;

  /// Create a copy of ColorsFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ColorsFilterStateCopyWith<_ColorsFilterState> get copyWith =>
      __$ColorsFilterStateCopyWithImpl<_ColorsFilterState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ColorsFilterState &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.sortField, sortField) ||
                other.sortField == sortField) &&
            (identical(other.sortAsc, sortAsc) || other.sortAsc == sortAsc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, sortField, sortAsc);

  @override
  String toString() {
    return 'ColorsFilterState(query: $query, sortField: $sortField, sortAsc: $sortAsc)';
  }
}

/// @nodoc
abstract mixin class _$ColorsFilterStateCopyWith<$Res>
    implements $ColorsFilterStateCopyWith<$Res> {
  factory _$ColorsFilterStateCopyWith(
          _ColorsFilterState value, $Res Function(_ColorsFilterState) _then) =
      __$ColorsFilterStateCopyWithImpl;
  @override
  @useResult
  $Res call({String query, ColorSortField sortField, bool sortAsc});
}

/// @nodoc
class __$ColorsFilterStateCopyWithImpl<$Res>
    implements _$ColorsFilterStateCopyWith<$Res> {
  __$ColorsFilterStateCopyWithImpl(this._self, this._then);

  final _ColorsFilterState _self;
  final $Res Function(_ColorsFilterState) _then;

  /// Create a copy of ColorsFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? query = null,
    Object? sortField = null,
    Object? sortAsc = null,
  }) {
    return _then(_ColorsFilterState(
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      sortField: null == sortField
          ? _self.sortField
          : sortField // ignore: cast_nullable_to_non_nullable
              as ColorSortField,
      sortAsc: null == sortAsc
          ? _self.sortAsc
          : sortAsc // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
