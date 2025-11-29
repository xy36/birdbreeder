// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
FinanceCategory _$FinanceCategoryFromJson(Map<String, dynamic> json) {
  return _FinancesCategories.fromJson(json);
}

/// @nodoc
mixin _$FinanceCategory {
  String get id;
  String get name;
  String get color;
  FinanceCategoryKind get kind;

  /// Create a copy of FinanceCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FinanceCategoryCopyWith<FinanceCategory> get copyWith =>
      _$FinanceCategoryCopyWithImpl<FinanceCategory>(
          this as FinanceCategory, _$identity);

  /// Serializes this FinanceCategory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FinanceCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.kind, kind) || other.kind == kind));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color, kind);

  @override
  String toString() {
    return 'FinanceCategory(id: $id, name: $name, color: $color, kind: $kind)';
  }
}

/// @nodoc
abstract mixin class $FinanceCategoryCopyWith<$Res> {
  factory $FinanceCategoryCopyWith(
          FinanceCategory value, $Res Function(FinanceCategory) _then) =
      _$FinanceCategoryCopyWithImpl;
  @useResult
  $Res call({String id, String name, String color, FinanceCategoryKind kind});
}

/// @nodoc
class _$FinanceCategoryCopyWithImpl<$Res>
    implements $FinanceCategoryCopyWith<$Res> {
  _$FinanceCategoryCopyWithImpl(this._self, this._then);

  final FinanceCategory _self;
  final $Res Function(FinanceCategory) _then;

  /// Create a copy of FinanceCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? kind = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as FinanceCategoryKind,
    ));
  }
}

/// Adds pattern-matching-related methods to [FinanceCategory].
extension FinanceCategoryPatterns on FinanceCategory {
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
    TResult Function(_FinancesCategories value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FinancesCategories() when $default != null:
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
    TResult Function(_FinancesCategories value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FinancesCategories():
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
    TResult? Function(_FinancesCategories value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FinancesCategories() when $default != null:
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
            String id, String name, String color, FinanceCategoryKind kind)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FinancesCategories() when $default != null:
        return $default(_that.id, _that.name, _that.color, _that.kind);
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
            String id, String name, String color, FinanceCategoryKind kind)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FinancesCategories():
        return $default(_that.id, _that.name, _that.color, _that.kind);
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
            String id, String name, String color, FinanceCategoryKind kind)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FinancesCategories() when $default != null:
        return $default(_that.id, _that.name, _that.color, _that.kind);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FinancesCategories implements FinanceCategory {
  const _FinancesCategories(
      {required this.id,
      required this.name,
      required this.color,
      required this.kind});
  factory _FinancesCategories.fromJson(Map<String, dynamic> json) =>
      _$FinancesCategoriesFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String color;
  @override
  final FinanceCategoryKind kind;

  /// Create a copy of FinanceCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FinancesCategoriesCopyWith<_FinancesCategories> get copyWith =>
      __$FinancesCategoriesCopyWithImpl<_FinancesCategories>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FinancesCategoriesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FinancesCategories &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.kind, kind) || other.kind == kind));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color, kind);

  @override
  String toString() {
    return 'FinanceCategory(id: $id, name: $name, color: $color, kind: $kind)';
  }
}

/// @nodoc
abstract mixin class _$FinancesCategoriesCopyWith<$Res>
    implements $FinanceCategoryCopyWith<$Res> {
  factory _$FinancesCategoriesCopyWith(
          _FinancesCategories value, $Res Function(_FinancesCategories) _then) =
      __$FinancesCategoriesCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name, String color, FinanceCategoryKind kind});
}

/// @nodoc
class __$FinancesCategoriesCopyWithImpl<$Res>
    implements _$FinancesCategoriesCopyWith<$Res> {
  __$FinancesCategoriesCopyWithImpl(this._self, this._then);

  final _FinancesCategories _self;
  final $Res Function(_FinancesCategories) _then;

  /// Create a copy of FinanceCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? kind = null,
  }) {
    return _then(_FinancesCategories(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _self.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as FinanceCategoryKind,
    ));
  }
}

// dart format on
