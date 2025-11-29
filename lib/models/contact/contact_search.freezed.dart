// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactSearch {
  bool get isActive;
  String get query;

  /// Create a copy of ContactSearch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContactSearchCopyWith<ContactSearch> get copyWith =>
      _$ContactSearchCopyWithImpl<ContactSearch>(
          this as ContactSearch, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContactSearch &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isActive, query);

  @override
  String toString() {
    return 'ContactSearch(isActive: $isActive, query: $query)';
  }
}

/// @nodoc
abstract mixin class $ContactSearchCopyWith<$Res> {
  factory $ContactSearchCopyWith(
          ContactSearch value, $Res Function(ContactSearch) _then) =
      _$ContactSearchCopyWithImpl;
  @useResult
  $Res call({bool isActive, String query});
}

/// @nodoc
class _$ContactSearchCopyWithImpl<$Res>
    implements $ContactSearchCopyWith<$Res> {
  _$ContactSearchCopyWithImpl(this._self, this._then);

  final ContactSearch _self;
  final $Res Function(ContactSearch) _then;

  /// Create a copy of ContactSearch
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

/// Adds pattern-matching-related methods to [ContactSearch].
extension ContactSearchPatterns on ContactSearch {
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
    TResult Function(_ContactSearch value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ContactSearch() when $default != null:
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
    TResult Function(_ContactSearch value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactSearch():
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
    TResult? Function(_ContactSearch value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactSearch() when $default != null:
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
      case _ContactSearch() when $default != null:
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
      case _ContactSearch():
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
      case _ContactSearch() when $default != null:
        return $default(_that.isActive, _that.query);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ContactSearch implements ContactSearch {
  const _ContactSearch({this.isActive = false, this.query = ''});

  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final String query;

  /// Create a copy of ContactSearch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ContactSearchCopyWith<_ContactSearch> get copyWith =>
      __$ContactSearchCopyWithImpl<_ContactSearch>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactSearch &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isActive, query);

  @override
  String toString() {
    return 'ContactSearch(isActive: $isActive, query: $query)';
  }
}

/// @nodoc
abstract mixin class _$ContactSearchCopyWith<$Res>
    implements $ContactSearchCopyWith<$Res> {
  factory _$ContactSearchCopyWith(
          _ContactSearch value, $Res Function(_ContactSearch) _then) =
      __$ContactSearchCopyWithImpl;
  @override
  @useResult
  $Res call({bool isActive, String query});
}

/// @nodoc
class __$ContactSearchCopyWithImpl<$Res>
    implements _$ContactSearchCopyWith<$Res> {
  __$ContactSearchCopyWithImpl(this._self, this._then);

  final _ContactSearch _self;
  final $Res Function(_ContactSearch) _then;

  /// Create a copy of ContactSearch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isActive = null,
    Object? query = null,
  }) {
    return _then(_ContactSearch(
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
