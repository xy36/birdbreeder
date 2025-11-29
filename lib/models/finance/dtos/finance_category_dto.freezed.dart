// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FinanceCategoryDto {
  String get id;
  String get name;
  String get color;
  FinanceCategoryKind get kind;
  String? get collectionId;
  String? get collectionName;
  DateTime? get created;
  DateTime? get updated;

  /// Create a copy of FinanceCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FinanceCategoryDtoCopyWith<FinanceCategoryDto> get copyWith =>
      _$FinanceCategoryDtoCopyWithImpl<FinanceCategoryDto>(
          this as FinanceCategoryDto, _$identity);

  /// Serializes this FinanceCategoryDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FinanceCategoryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color, kind,
      collectionId, collectionName, created, updated);

  @override
  String toString() {
    return 'FinanceCategoryDto(id: $id, name: $name, color: $color, kind: $kind, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated)';
  }
}

/// @nodoc
abstract mixin class $FinanceCategoryDtoCopyWith<$Res> {
  factory $FinanceCategoryDtoCopyWith(
          FinanceCategoryDto value, $Res Function(FinanceCategoryDto) _then) =
      _$FinanceCategoryDtoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String color,
      FinanceCategoryKind kind,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated});
}

/// @nodoc
class _$FinanceCategoryDtoCopyWithImpl<$Res>
    implements $FinanceCategoryDtoCopyWith<$Res> {
  _$FinanceCategoryDtoCopyWithImpl(this._self, this._then);

  final FinanceCategoryDto _self;
  final $Res Function(FinanceCategoryDto) _then;

  /// Create a copy of FinanceCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? kind = null,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? updated = freezed,
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
      collectionId: freezed == collectionId
          ? _self.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _self.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _self.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [FinanceCategoryDto].
extension FinanceCategoryDtoPatterns on FinanceCategoryDto {
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
    TResult Function(_FinanceCategoryDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FinanceCategoryDto() when $default != null:
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
    TResult Function(_FinanceCategoryDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FinanceCategoryDto():
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
    TResult? Function(_FinanceCategoryDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FinanceCategoryDto() when $default != null:
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
            String id,
            String name,
            String color,
            FinanceCategoryKind kind,
            String? collectionId,
            String? collectionName,
            DateTime? created,
            DateTime? updated)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FinanceCategoryDto() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.color,
            _that.kind,
            _that.collectionId,
            _that.collectionName,
            _that.created,
            _that.updated);
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
            String id,
            String name,
            String color,
            FinanceCategoryKind kind,
            String? collectionId,
            String? collectionName,
            DateTime? created,
            DateTime? updated)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FinanceCategoryDto():
        return $default(
            _that.id,
            _that.name,
            _that.color,
            _that.kind,
            _that.collectionId,
            _that.collectionName,
            _that.created,
            _that.updated);
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
            String id,
            String name,
            String color,
            FinanceCategoryKind kind,
            String? collectionId,
            String? collectionName,
            DateTime? created,
            DateTime? updated)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FinanceCategoryDto() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.color,
            _that.kind,
            _that.collectionId,
            _that.collectionName,
            _that.created,
            _that.updated);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FinanceCategoryDto implements FinanceCategoryDto {
  const _FinanceCategoryDto(
      {required this.id,
      required this.name,
      required this.color,
      required this.kind,
      this.collectionId,
      this.collectionName,
      this.created,
      this.updated});
  factory _FinanceCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$FinanceCategoryDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String color;
  @override
  final FinanceCategoryKind kind;
  @override
  final String? collectionId;
  @override
  final String? collectionName;
  @override
  final DateTime? created;
  @override
  final DateTime? updated;

  /// Create a copy of FinanceCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FinanceCategoryDtoCopyWith<_FinanceCategoryDto> get copyWith =>
      __$FinanceCategoryDtoCopyWithImpl<_FinanceCategoryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FinanceCategoryDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FinanceCategoryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, color, kind,
      collectionId, collectionName, created, updated);

  @override
  String toString() {
    return 'FinanceCategoryDto(id: $id, name: $name, color: $color, kind: $kind, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated)';
  }
}

/// @nodoc
abstract mixin class _$FinanceCategoryDtoCopyWith<$Res>
    implements $FinanceCategoryDtoCopyWith<$Res> {
  factory _$FinanceCategoryDtoCopyWith(
          _FinanceCategoryDto value, $Res Function(_FinanceCategoryDto) _then) =
      __$FinanceCategoryDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String color,
      FinanceCategoryKind kind,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated});
}

/// @nodoc
class __$FinanceCategoryDtoCopyWithImpl<$Res>
    implements _$FinanceCategoryDtoCopyWith<$Res> {
  __$FinanceCategoryDtoCopyWithImpl(this._self, this._then);

  final _FinanceCategoryDto _self;
  final $Res Function(_FinanceCategoryDto) _then;

  /// Create a copy of FinanceCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? color = null,
    Object? kind = null,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? updated = freezed,
  }) {
    return _then(_FinanceCategoryDto(
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
      collectionId: freezed == collectionId
          ? _self.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _self.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _self.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
