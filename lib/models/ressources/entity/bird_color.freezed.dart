// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bird_color.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BirdColor {
  String get id;
  String? get name;
  DateTime? get created;
  DateTime? get updated;

  /// Create a copy of BirdColor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BirdColorCopyWith<BirdColor> get copyWith =>
      _$BirdColorCopyWithImpl<BirdColor>(this as BirdColor, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BirdColor &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, created, updated);

  @override
  String toString() {
    return 'BirdColor(id: $id, name: $name, created: $created, updated: $updated)';
  }
}

/// @nodoc
abstract mixin class $BirdColorCopyWith<$Res> {
  factory $BirdColorCopyWith(BirdColor value, $Res Function(BirdColor) _then) =
      _$BirdColorCopyWithImpl;
  @useResult
  $Res call({String id, String? name, DateTime? created, DateTime? updated});
}

/// @nodoc
class _$BirdColorCopyWithImpl<$Res> implements $BirdColorCopyWith<$Res> {
  _$BirdColorCopyWithImpl(this._self, this._then);

  final BirdColor _self;
  final $Res Function(BirdColor) _then;

  /// Create a copy of BirdColor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? created = freezed,
    Object? updated = freezed,
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

/// Adds pattern-matching-related methods to [BirdColor].
extension BirdColorPatterns on BirdColor {
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
    TResult Function(_BirdColor value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BirdColor() when $default != null:
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
    TResult Function(_BirdColor value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdColor():
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
    TResult? Function(_BirdColor value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdColor() when $default != null:
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
            String id, String? name, DateTime? created, DateTime? updated)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BirdColor() when $default != null:
        return $default(_that.id, _that.name, _that.created, _that.updated);
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
            String id, String? name, DateTime? created, DateTime? updated)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdColor():
        return $default(_that.id, _that.name, _that.created, _that.updated);
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
            String id, String? name, DateTime? created, DateTime? updated)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdColor() when $default != null:
        return $default(_that.id, _that.name, _that.created, _that.updated);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BirdColor extends BirdColor {
  _BirdColor({required this.id, required this.name, this.created, this.updated})
      : super._();

  @override
  final String id;
  @override
  final String? name;
  @override
  final DateTime? created;
  @override
  final DateTime? updated;

  /// Create a copy of BirdColor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BirdColorCopyWith<_BirdColor> get copyWith =>
      __$BirdColorCopyWithImpl<_BirdColor>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BirdColor &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, created, updated);

  @override
  String toString() {
    return 'BirdColor(id: $id, name: $name, created: $created, updated: $updated)';
  }
}

/// @nodoc
abstract mixin class _$BirdColorCopyWith<$Res>
    implements $BirdColorCopyWith<$Res> {
  factory _$BirdColorCopyWith(
          _BirdColor value, $Res Function(_BirdColor) _then) =
      __$BirdColorCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String? name, DateTime? created, DateTime? updated});
}

/// @nodoc
class __$BirdColorCopyWithImpl<$Res> implements _$BirdColorCopyWith<$Res> {
  __$BirdColorCopyWithImpl(this._self, this._then);

  final _BirdColor _self;
  final $Res Function(_BirdColor) _then;

  /// Create a copy of BirdColor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? created = freezed,
    Object? updated = freezed,
  }) {
    return _then(_BirdColor(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
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
