// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'egg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Egg {
  String get id;
  String get broodId;
  int get number;
  DateTime get laidAt;
  DateTime? get hatchedAt;
  DateTime? get fledgedAt;
  EggStatus get status;
  String? get ringnumber;
  String? get colorId;
  String? get cageId;
  String? get speciesId;
  String? get birdId;
  String? get notes;

  /// Create a copy of Egg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EggCopyWith<Egg> get copyWith =>
      _$EggCopyWithImpl<Egg>(this as Egg, _$identity);

  /// Serializes this Egg to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Egg &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.broodId, broodId) || other.broodId == broodId) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.laidAt, laidAt) || other.laidAt == laidAt) &&
            (identical(other.hatchedAt, hatchedAt) ||
                other.hatchedAt == hatchedAt) &&
            (identical(other.fledgedAt, fledgedAt) ||
                other.fledgedAt == fledgedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ringnumber, ringnumber) ||
                other.ringnumber == ringnumber) &&
            (identical(other.colorId, colorId) || other.colorId == colorId) &&
            (identical(other.cageId, cageId) || other.cageId == cageId) &&
            (identical(other.speciesId, speciesId) ||
                other.speciesId == speciesId) &&
            (identical(other.birdId, birdId) || other.birdId == birdId) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      broodId,
      number,
      laidAt,
      hatchedAt,
      fledgedAt,
      status,
      ringnumber,
      colorId,
      cageId,
      speciesId,
      birdId,
      notes);

  @override
  String toString() {
    return 'Egg(id: $id, broodId: $broodId, number: $number, laidAt: $laidAt, hatchedAt: $hatchedAt, fledgedAt: $fledgedAt, status: $status, ringnumber: $ringnumber, colorId: $colorId, cageId: $cageId, speciesId: $speciesId, birdId: $birdId, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $EggCopyWith<$Res> {
  factory $EggCopyWith(Egg value, $Res Function(Egg) _then) = _$EggCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String broodId,
      int number,
      DateTime laidAt,
      DateTime? hatchedAt,
      DateTime? fledgedAt,
      EggStatus status,
      String? ringnumber,
      String? colorId,
      String? cageId,
      String? speciesId,
      String? birdId,
      String? notes});
}

/// @nodoc
class _$EggCopyWithImpl<$Res> implements $EggCopyWith<$Res> {
  _$EggCopyWithImpl(this._self, this._then);

  final Egg _self;
  final $Res Function(Egg) _then;

  /// Create a copy of Egg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? broodId = null,
    Object? number = null,
    Object? laidAt = null,
    Object? hatchedAt = freezed,
    Object? fledgedAt = freezed,
    Object? status = null,
    Object? ringnumber = freezed,
    Object? colorId = freezed,
    Object? cageId = freezed,
    Object? speciesId = freezed,
    Object? birdId = freezed,
    Object? notes = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      broodId: null == broodId
          ? _self.broodId
          : broodId // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      laidAt: null == laidAt
          ? _self.laidAt
          : laidAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hatchedAt: freezed == hatchedAt
          ? _self.hatchedAt
          : hatchedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fledgedAt: freezed == fledgedAt
          ? _self.fledgedAt
          : fledgedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as EggStatus,
      ringnumber: freezed == ringnumber
          ? _self.ringnumber
          : ringnumber // ignore: cast_nullable_to_non_nullable
              as String?,
      colorId: freezed == colorId
          ? _self.colorId
          : colorId // ignore: cast_nullable_to_non_nullable
              as String?,
      cageId: freezed == cageId
          ? _self.cageId
          : cageId // ignore: cast_nullable_to_non_nullable
              as String?,
      speciesId: freezed == speciesId
          ? _self.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as String?,
      birdId: freezed == birdId
          ? _self.birdId
          : birdId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Egg].
extension EggPatterns on Egg {
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
    TResult Function(_Egg value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Egg() when $default != null:
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
    TResult Function(_Egg value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Egg():
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
    TResult? Function(_Egg value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Egg() when $default != null:
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
            String broodId,
            int number,
            DateTime laidAt,
            DateTime? hatchedAt,
            DateTime? fledgedAt,
            EggStatus status,
            String? ringnumber,
            String? colorId,
            String? cageId,
            String? speciesId,
            String? birdId,
            String? notes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Egg() when $default != null:
        return $default(
            _that.id,
            _that.broodId,
            _that.number,
            _that.laidAt,
            _that.hatchedAt,
            _that.fledgedAt,
            _that.status,
            _that.ringnumber,
            _that.colorId,
            _that.cageId,
            _that.speciesId,
            _that.birdId,
            _that.notes);
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
            String broodId,
            int number,
            DateTime laidAt,
            DateTime? hatchedAt,
            DateTime? fledgedAt,
            EggStatus status,
            String? ringnumber,
            String? colorId,
            String? cageId,
            String? speciesId,
            String? birdId,
            String? notes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Egg():
        return $default(
            _that.id,
            _that.broodId,
            _that.number,
            _that.laidAt,
            _that.hatchedAt,
            _that.fledgedAt,
            _that.status,
            _that.ringnumber,
            _that.colorId,
            _that.cageId,
            _that.speciesId,
            _that.birdId,
            _that.notes);
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
            String broodId,
            int number,
            DateTime laidAt,
            DateTime? hatchedAt,
            DateTime? fledgedAt,
            EggStatus status,
            String? ringnumber,
            String? colorId,
            String? cageId,
            String? speciesId,
            String? birdId,
            String? notes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Egg() when $default != null:
        return $default(
            _that.id,
            _that.broodId,
            _that.number,
            _that.laidAt,
            _that.hatchedAt,
            _that.fledgedAt,
            _that.status,
            _that.ringnumber,
            _that.colorId,
            _that.cageId,
            _that.speciesId,
            _that.birdId,
            _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Egg implements Egg {
  const _Egg(
      {required this.id,
      required this.broodId,
      required this.number,
      required this.laidAt,
      this.hatchedAt,
      this.fledgedAt,
      this.status = EggStatus.laid,
      this.ringnumber,
      this.colorId,
      this.cageId,
      this.speciesId,
      this.birdId,
      this.notes});
  factory _Egg.fromJson(Map<String, dynamic> json) => _$EggFromJson(json);

  @override
  final String id;
  @override
  final String broodId;
  @override
  final int number;
  @override
  final DateTime laidAt;
  @override
  final DateTime? hatchedAt;
  @override
  final DateTime? fledgedAt;
  @override
  @JsonKey()
  final EggStatus status;
  @override
  final String? ringnumber;
  @override
  final String? colorId;
  @override
  final String? cageId;
  @override
  final String? speciesId;
  @override
  final String? birdId;
  @override
  final String? notes;

  /// Create a copy of Egg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EggCopyWith<_Egg> get copyWith =>
      __$EggCopyWithImpl<_Egg>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EggToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Egg &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.broodId, broodId) || other.broodId == broodId) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.laidAt, laidAt) || other.laidAt == laidAt) &&
            (identical(other.hatchedAt, hatchedAt) ||
                other.hatchedAt == hatchedAt) &&
            (identical(other.fledgedAt, fledgedAt) ||
                other.fledgedAt == fledgedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ringnumber, ringnumber) ||
                other.ringnumber == ringnumber) &&
            (identical(other.colorId, colorId) || other.colorId == colorId) &&
            (identical(other.cageId, cageId) || other.cageId == cageId) &&
            (identical(other.speciesId, speciesId) ||
                other.speciesId == speciesId) &&
            (identical(other.birdId, birdId) || other.birdId == birdId) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      broodId,
      number,
      laidAt,
      hatchedAt,
      fledgedAt,
      status,
      ringnumber,
      colorId,
      cageId,
      speciesId,
      birdId,
      notes);

  @override
  String toString() {
    return 'Egg(id: $id, broodId: $broodId, number: $number, laidAt: $laidAt, hatchedAt: $hatchedAt, fledgedAt: $fledgedAt, status: $status, ringnumber: $ringnumber, colorId: $colorId, cageId: $cageId, speciesId: $speciesId, birdId: $birdId, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$EggCopyWith<$Res> implements $EggCopyWith<$Res> {
  factory _$EggCopyWith(_Egg value, $Res Function(_Egg) _then) =
      __$EggCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String broodId,
      int number,
      DateTime laidAt,
      DateTime? hatchedAt,
      DateTime? fledgedAt,
      EggStatus status,
      String? ringnumber,
      String? colorId,
      String? cageId,
      String? speciesId,
      String? birdId,
      String? notes});
}

/// @nodoc
class __$EggCopyWithImpl<$Res> implements _$EggCopyWith<$Res> {
  __$EggCopyWithImpl(this._self, this._then);

  final _Egg _self;
  final $Res Function(_Egg) _then;

  /// Create a copy of Egg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? broodId = null,
    Object? number = null,
    Object? laidAt = null,
    Object? hatchedAt = freezed,
    Object? fledgedAt = freezed,
    Object? status = null,
    Object? ringnumber = freezed,
    Object? colorId = freezed,
    Object? cageId = freezed,
    Object? speciesId = freezed,
    Object? birdId = freezed,
    Object? notes = freezed,
  }) {
    return _then(_Egg(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      broodId: null == broodId
          ? _self.broodId
          : broodId // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      laidAt: null == laidAt
          ? _self.laidAt
          : laidAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hatchedAt: freezed == hatchedAt
          ? _self.hatchedAt
          : hatchedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fledgedAt: freezed == fledgedAt
          ? _self.fledgedAt
          : fledgedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as EggStatus,
      ringnumber: freezed == ringnumber
          ? _self.ringnumber
          : ringnumber // ignore: cast_nullable_to_non_nullable
              as String?,
      colorId: freezed == colorId
          ? _self.colorId
          : colorId // ignore: cast_nullable_to_non_nullable
              as String?,
      cageId: freezed == cageId
          ? _self.cageId
          : cageId // ignore: cast_nullable_to_non_nullable
              as String?,
      speciesId: freezed == speciesId
          ? _self.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as String?,
      birdId: freezed == birdId
          ? _self.birdId
          : birdId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
