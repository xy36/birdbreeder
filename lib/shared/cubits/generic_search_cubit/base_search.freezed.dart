// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BaseSearch {
  bool get isActive;
  String get query;

  /// Create a copy of BaseSearch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BaseSearchCopyWith<BaseSearch> get copyWith =>
      _$BaseSearchCopyWithImpl<BaseSearch>(this as BaseSearch, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseSearch &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isActive, query);

  @override
  String toString() {
    return 'BaseSearch(isActive: $isActive, query: $query)';
  }
}

/// @nodoc
abstract mixin class $BaseSearchCopyWith<$Res> {
  factory $BaseSearchCopyWith(
          BaseSearch value, $Res Function(BaseSearch) _then) =
      _$BaseSearchCopyWithImpl;
  @useResult
  $Res call({bool isActive, String query});
}

/// @nodoc
class _$BaseSearchCopyWithImpl<$Res> implements $BaseSearchCopyWith<$Res> {
  _$BaseSearchCopyWithImpl(this._self, this._then);

  final BaseSearch _self;
  final $Res Function(BaseSearch) _then;

  /// Create a copy of BaseSearch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
    Object? query = null,
  }) {
    return _then(_self.copyWith(
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [BaseSearch].
extension BaseSearchPatterns on BaseSearch {
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
    TResult Function(_BaseSearch value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BaseSearch() when $default != null:
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
    TResult Function(_BaseSearch value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BaseSearch():
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
    TResult? Function(_BaseSearch value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BaseSearch() when $default != null:
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
    TResult Function(bool isActive, String query)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BaseSearch() when $default != null:
        return $default(_that.isActive, _that.query);
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
    TResult Function(bool isActive, String query) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BaseSearch():
        return $default(_that.isActive, _that.query);
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
    TResult? Function(bool isActive, String query)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BaseSearch() when $default != null:
        return $default(_that.isActive, _that.query);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BaseSearch implements BaseSearch {
  const _BaseSearch({this.isActive = false, this.query = ''});

  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final String query;

  /// Create a copy of BaseSearch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BaseSearchCopyWith<_BaseSearch> get copyWith =>
      __$BaseSearchCopyWithImpl<_BaseSearch>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BaseSearch &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isActive, query);

  @override
  String toString() {
    return 'BaseSearch(isActive: $isActive, query: $query)';
  }
}

/// @nodoc
abstract mixin class _$BaseSearchCopyWith<$Res>
    implements $BaseSearchCopyWith<$Res> {
  factory _$BaseSearchCopyWith(
          _BaseSearch value, $Res Function(_BaseSearch) _then) =
      __$BaseSearchCopyWithImpl;
  @override
  @useResult
  $Res call({bool isActive, String query});
}

/// @nodoc
class __$BaseSearchCopyWithImpl<$Res> implements _$BaseSearchCopyWith<$Res> {
  __$BaseSearchCopyWithImpl(this._self, this._then);

  final _BaseSearch _self;
  final $Res Function(_BaseSearch) _then;

  /// Create a copy of BaseSearch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isActive = null,
    Object? query = null,
  }) {
    return _then(_BaseSearch(
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
