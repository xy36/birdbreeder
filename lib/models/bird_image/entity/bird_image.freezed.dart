// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bird_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BirdImage {
  String get id;
  BirdId get birdId;
  String get hash;
  int get position;
  DateTime? get created;
  DateTime? get updated;

  /// Create a copy of BirdImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BirdImageCopyWith<BirdImage> get copyWith =>
      _$BirdImageCopyWithImpl<BirdImage>(this as BirdImage, _$identity);

  /// Serializes this BirdImage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BirdImage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.birdId, birdId) || other.birdId == birdId) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, birdId, hash, position, created, updated);

  @override
  String toString() {
    return 'BirdImage(id: $id, birdId: $birdId, hash: $hash, position: $position, created: $created, updated: $updated)';
  }
}

/// @nodoc
abstract mixin class $BirdImageCopyWith<$Res> {
  factory $BirdImageCopyWith(BirdImage value, $Res Function(BirdImage) _then) =
      _$BirdImageCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      BirdId birdId,
      String hash,
      int position,
      DateTime? created,
      DateTime? updated});
}

/// @nodoc
class _$BirdImageCopyWithImpl<$Res> implements $BirdImageCopyWith<$Res> {
  _$BirdImageCopyWithImpl(this._self, this._then);

  final BirdImage _self;
  final $Res Function(BirdImage) _then;

  /// Create a copy of BirdImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? birdId = null,
    Object? hash = null,
    Object? position = null,
    Object? created = freezed,
    Object? updated = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      birdId: null == birdId
          ? _self.birdId
          : birdId // ignore: cast_nullable_to_non_nullable
              as BirdId,
      hash: null == hash
          ? _self.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
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

/// Adds pattern-matching-related methods to [BirdImage].
extension BirdImagePatterns on BirdImage {
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
    TResult Function(_BirdImage value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BirdImage() when $default != null:
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
    TResult Function(_BirdImage value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdImage():
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
    TResult? Function(_BirdImage value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdImage() when $default != null:
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
    TResult Function(String id, BirdId birdId, String hash, int position,
            DateTime? created, DateTime? updated)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BirdImage() when $default != null:
        return $default(_that.id, _that.birdId, _that.hash, _that.position,
            _that.created, _that.updated);
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
    TResult Function(String id, BirdId birdId, String hash, int position,
            DateTime? created, DateTime? updated)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdImage():
        return $default(_that.id, _that.birdId, _that.hash, _that.position,
            _that.created, _that.updated);
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
    TResult? Function(String id, BirdId birdId, String hash, int position,
            DateTime? created, DateTime? updated)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdImage() when $default != null:
        return $default(_that.id, _that.birdId, _that.hash, _that.position,
            _that.created, _that.updated);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BirdImage implements BirdImage {
  const _BirdImage(
      {required this.id,
      required this.birdId,
      required this.hash,
      this.position = 0,
      this.created,
      this.updated});
  factory _BirdImage.fromJson(Map<String, dynamic> json) =>
      _$BirdImageFromJson(json);

  @override
  final String id;
  @override
  final BirdId birdId;
  @override
  final String hash;
  @override
  @JsonKey()
  final int position;
  @override
  final DateTime? created;
  @override
  final DateTime? updated;

  /// Create a copy of BirdImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BirdImageCopyWith<_BirdImage> get copyWith =>
      __$BirdImageCopyWithImpl<_BirdImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BirdImageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BirdImage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.birdId, birdId) || other.birdId == birdId) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, birdId, hash, position, created, updated);

  @override
  String toString() {
    return 'BirdImage(id: $id, birdId: $birdId, hash: $hash, position: $position, created: $created, updated: $updated)';
  }
}

/// @nodoc
abstract mixin class _$BirdImageCopyWith<$Res>
    implements $BirdImageCopyWith<$Res> {
  factory _$BirdImageCopyWith(
          _BirdImage value, $Res Function(_BirdImage) _then) =
      __$BirdImageCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      BirdId birdId,
      String hash,
      int position,
      DateTime? created,
      DateTime? updated});
}

/// @nodoc
class __$BirdImageCopyWithImpl<$Res> implements _$BirdImageCopyWith<$Res> {
  __$BirdImageCopyWithImpl(this._self, this._then);

  final _BirdImage _self;
  final $Res Function(_BirdImage) _then;

  /// Create a copy of BirdImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? birdId = null,
    Object? hash = null,
    Object? position = null,
    Object? created = freezed,
    Object? updated = freezed,
  }) {
    return _then(_BirdImage(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      birdId: null == birdId
          ? _self.birdId
          : birdId // ignore: cast_nullable_to_non_nullable
              as BirdId,
      hash: null == hash
          ? _self.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _self.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
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
