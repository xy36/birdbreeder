// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bird_color_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BirdColorDto {
  String get id;
  String? get name;
  String? get user;

  /// Create a copy of BirdColorDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BirdColorDtoCopyWith<BirdColorDto> get copyWith =>
      _$BirdColorDtoCopyWithImpl<BirdColorDto>(
          this as BirdColorDto, _$identity);

  /// Serializes this BirdColorDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BirdColorDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, user);

  @override
  String toString() {
    return 'BirdColorDto(id: $id, name: $name, user: $user)';
  }
}

/// @nodoc
abstract mixin class $BirdColorDtoCopyWith<$Res> {
  factory $BirdColorDtoCopyWith(
          BirdColorDto value, $Res Function(BirdColorDto) _then) =
      _$BirdColorDtoCopyWithImpl;
  @useResult
  $Res call({String id, String? name, String? user});
}

/// @nodoc
class _$BirdColorDtoCopyWithImpl<$Res> implements $BirdColorDtoCopyWith<$Res> {
  _$BirdColorDtoCopyWithImpl(this._self, this._then);

  final BirdColorDto _self;
  final $Res Function(BirdColorDto) _then;

  /// Create a copy of BirdColorDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? user = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BirdColorDto].
extension BirdColorDtoPatterns on BirdColorDto {
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
    TResult Function(_BirdColorDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BirdColorDto() when $default != null:
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
    TResult Function(_BirdColorDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdColorDto():
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
    TResult? Function(_BirdColorDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdColorDto() when $default != null:
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
    TResult Function(String id, String? name, String? user)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BirdColorDto() when $default != null:
        return $default(_that.id, _that.name, _that.user);
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
    TResult Function(String id, String? name, String? user) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdColorDto():
        return $default(_that.id, _that.name, _that.user);
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
    TResult? Function(String id, String? name, String? user)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdColorDto() when $default != null:
        return $default(_that.id, _that.name, _that.user);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BirdColorDto implements BirdColorDto {
  _BirdColorDto({required this.id, this.name, this.user});
  factory _BirdColorDto.fromJson(Map<String, dynamic> json) =>
      _$BirdColorDtoFromJson(json);

  @override
  final String id;
  @override
  final String? name;
  @override
  final String? user;

  /// Create a copy of BirdColorDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BirdColorDtoCopyWith<_BirdColorDto> get copyWith =>
      __$BirdColorDtoCopyWithImpl<_BirdColorDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BirdColorDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BirdColorDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, user);

  @override
  String toString() {
    return 'BirdColorDto(id: $id, name: $name, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$BirdColorDtoCopyWith<$Res>
    implements $BirdColorDtoCopyWith<$Res> {
  factory _$BirdColorDtoCopyWith(
          _BirdColorDto value, $Res Function(_BirdColorDto) _then) =
      __$BirdColorDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String? name, String? user});
}

/// @nodoc
class __$BirdColorDtoCopyWithImpl<$Res>
    implements _$BirdColorDtoCopyWith<$Res> {
  __$BirdColorDtoCopyWithImpl(this._self, this._then);

  final _BirdColorDto _self;
  final $Res Function(_BirdColorDto) _then;

  /// Create a copy of BirdColorDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? user = freezed,
  }) {
    return _then(_BirdColorDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
