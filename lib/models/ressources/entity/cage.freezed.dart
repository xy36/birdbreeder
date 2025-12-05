// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Cage {
  CageId get id;
  String? get name;
  String? get description;
  int? get width;
  int? get height;
  int? get depth;
  DateTime? get created;
  DateTime? get updated;

  /// Create a copy of Cage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CageCopyWith<Cage> get copyWith =>
      _$CageCopyWithImpl<Cage>(this as Cage, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Cage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, width,
      height, depth, created, updated);

  @override
  String toString() {
    return 'Cage(id: $id, name: $name, description: $description, width: $width, height: $height, depth: $depth, created: $created, updated: $updated)';
  }
}

/// @nodoc
abstract mixin class $CageCopyWith<$Res> {
  factory $CageCopyWith(Cage value, $Res Function(Cage) _then) =
      _$CageCopyWithImpl;
  @useResult
  $Res call(
      {CageId id,
      String? name,
      String? description,
      int? width,
      int? height,
      int? depth,
      DateTime? created,
      DateTime? updated});
}

/// @nodoc
class _$CageCopyWithImpl<$Res> implements $CageCopyWith<$Res> {
  _$CageCopyWithImpl(this._self, this._then);

  final Cage _self;
  final $Res Function(Cage) _then;

  /// Create a copy of Cage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? depth = freezed,
    Object? created = freezed,
    Object? updated = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as CageId,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      depth: freezed == depth
          ? _self.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
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

/// Adds pattern-matching-related methods to [Cage].
extension CagePatterns on Cage {
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
    TResult Function(_Cage value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Cage() when $default != null:
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
    TResult Function(_Cage value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Cage():
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
    TResult? Function(_Cage value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Cage() when $default != null:
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
    TResult Function(CageId id, String? name, String? description, int? width,
            int? height, int? depth, DateTime? created, DateTime? updated)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Cage() when $default != null:
        return $default(_that.id, _that.name, _that.description, _that.width,
            _that.height, _that.depth, _that.created, _that.updated);
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
    TResult Function(CageId id, String? name, String? description, int? width,
            int? height, int? depth, DateTime? created, DateTime? updated)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Cage():
        return $default(_that.id, _that.name, _that.description, _that.width,
            _that.height, _that.depth, _that.created, _that.updated);
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
    TResult? Function(CageId id, String? name, String? description, int? width,
            int? height, int? depth, DateTime? created, DateTime? updated)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Cage() when $default != null:
        return $default(_that.id, _that.name, _that.description, _that.width,
            _that.height, _that.depth, _that.created, _that.updated);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Cage implements Cage {
  _Cage(
      {required this.id,
      required this.name,
      required this.description,
      required this.width,
      required this.height,
      required this.depth,
      this.created,
      this.updated});

  @override
  final CageId id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final int? depth;
  @override
  final DateTime? created;
  @override
  final DateTime? updated;

  /// Create a copy of Cage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CageCopyWith<_Cage> get copyWith =>
      __$CageCopyWithImpl<_Cage>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Cage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, width,
      height, depth, created, updated);

  @override
  String toString() {
    return 'Cage(id: $id, name: $name, description: $description, width: $width, height: $height, depth: $depth, created: $created, updated: $updated)';
  }
}

/// @nodoc
abstract mixin class _$CageCopyWith<$Res> implements $CageCopyWith<$Res> {
  factory _$CageCopyWith(_Cage value, $Res Function(_Cage) _then) =
      __$CageCopyWithImpl;
  @override
  @useResult
  $Res call(
      {CageId id,
      String? name,
      String? description,
      int? width,
      int? height,
      int? depth,
      DateTime? created,
      DateTime? updated});
}

/// @nodoc
class __$CageCopyWithImpl<$Res> implements _$CageCopyWith<$Res> {
  __$CageCopyWithImpl(this._self, this._then);

  final _Cage _self;
  final $Res Function(_Cage) _then;

  /// Create a copy of Cage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? depth = freezed,
    Object? created = freezed,
    Object? updated = freezed,
  }) {
    return _then(_Cage(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as CageId,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      depth: freezed == depth
          ? _self.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
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
