// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FinanceDto {
  String get id;
  @JsonKey(name: 'category')
  String get categoryId;
  String get title;
  double get amount;
  String? get collectionId;
  String? get collectionName;
  DateTime? get created;
  DateTime? get updated;
  @StringNullEmptyConverter()
  String? get notes;
  @JsonKey(name: 'bird')
  @StringNullEmptyConverter()
  String? get birdId;
  @UtcDateTimeConverter()
  DateTime? get date;

  /// Create a copy of FinanceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FinanceDtoCopyWith<FinanceDto> get copyWith =>
      _$FinanceDtoCopyWithImpl<FinanceDto>(this as FinanceDto, _$identity);

  /// Serializes this FinanceDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FinanceDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.birdId, birdId) || other.birdId == birdId) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, categoryId, title, amount,
      collectionId, collectionName, created, updated, notes, birdId, date);

  @override
  String toString() {
    return 'FinanceDto(id: $id, categoryId: $categoryId, title: $title, amount: $amount, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, notes: $notes, birdId: $birdId, date: $date)';
  }
}

/// @nodoc
abstract mixin class $FinanceDtoCopyWith<$Res> {
  factory $FinanceDtoCopyWith(
          FinanceDto value, $Res Function(FinanceDto) _then) =
      _$FinanceDtoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'category') String categoryId,
      String title,
      double amount,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated,
      @StringNullEmptyConverter() String? notes,
      @JsonKey(name: 'bird') @StringNullEmptyConverter() String? birdId,
      @UtcDateTimeConverter() DateTime? date});
}

/// @nodoc
class _$FinanceDtoCopyWithImpl<$Res> implements $FinanceDtoCopyWith<$Res> {
  _$FinanceDtoCopyWithImpl(this._self, this._then);

  final FinanceDto _self;
  final $Res Function(FinanceDto) _then;

  /// Create a copy of FinanceDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? title = null,
    Object? amount = null,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? notes = freezed,
    Object? birdId = freezed,
    Object? date = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
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
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      birdId: freezed == birdId
          ? _self.birdId
          : birdId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [FinanceDto].
extension FinanceDtoPatterns on FinanceDto {
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
    TResult Function(_FinanceDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FinanceDto() when $default != null:
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
    TResult Function(_FinanceDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FinanceDto():
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
    TResult? Function(_FinanceDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FinanceDto() when $default != null:
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
            @JsonKey(name: 'category') String categoryId,
            String title,
            double amount,
            String? collectionId,
            String? collectionName,
            DateTime? created,
            DateTime? updated,
            @StringNullEmptyConverter() String? notes,
            @JsonKey(name: 'bird') @StringNullEmptyConverter() String? birdId,
            @UtcDateTimeConverter() DateTime? date)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FinanceDto() when $default != null:
        return $default(
            _that.id,
            _that.categoryId,
            _that.title,
            _that.amount,
            _that.collectionId,
            _that.collectionName,
            _that.created,
            _that.updated,
            _that.notes,
            _that.birdId,
            _that.date);
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
            @JsonKey(name: 'category') String categoryId,
            String title,
            double amount,
            String? collectionId,
            String? collectionName,
            DateTime? created,
            DateTime? updated,
            @StringNullEmptyConverter() String? notes,
            @JsonKey(name: 'bird') @StringNullEmptyConverter() String? birdId,
            @UtcDateTimeConverter() DateTime? date)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FinanceDto():
        return $default(
            _that.id,
            _that.categoryId,
            _that.title,
            _that.amount,
            _that.collectionId,
            _that.collectionName,
            _that.created,
            _that.updated,
            _that.notes,
            _that.birdId,
            _that.date);
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
            @JsonKey(name: 'category') String categoryId,
            String title,
            double amount,
            String? collectionId,
            String? collectionName,
            DateTime? created,
            DateTime? updated,
            @StringNullEmptyConverter() String? notes,
            @JsonKey(name: 'bird') @StringNullEmptyConverter() String? birdId,
            @UtcDateTimeConverter() DateTime? date)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FinanceDto() when $default != null:
        return $default(
            _that.id,
            _that.categoryId,
            _that.title,
            _that.amount,
            _that.collectionId,
            _that.collectionName,
            _that.created,
            _that.updated,
            _that.notes,
            _that.birdId,
            _that.date);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FinanceDto implements FinanceDto {
  const _FinanceDto(
      {required this.id,
      @JsonKey(name: 'category') required this.categoryId,
      required this.title,
      required this.amount,
      this.collectionId,
      this.collectionName,
      this.created,
      this.updated,
      @StringNullEmptyConverter() this.notes,
      @JsonKey(name: 'bird') @StringNullEmptyConverter() this.birdId,
      @UtcDateTimeConverter() this.date});
  factory _FinanceDto.fromJson(Map<String, dynamic> json) =>
      _$FinanceDtoFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'category')
  final String categoryId;
  @override
  final String title;
  @override
  final double amount;
  @override
  final String? collectionId;
  @override
  final String? collectionName;
  @override
  final DateTime? created;
  @override
  final DateTime? updated;
  @override
  @StringNullEmptyConverter()
  final String? notes;
  @override
  @JsonKey(name: 'bird')
  @StringNullEmptyConverter()
  final String? birdId;
  @override
  @UtcDateTimeConverter()
  final DateTime? date;

  /// Create a copy of FinanceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FinanceDtoCopyWith<_FinanceDto> get copyWith =>
      __$FinanceDtoCopyWithImpl<_FinanceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FinanceDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FinanceDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.birdId, birdId) || other.birdId == birdId) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, categoryId, title, amount,
      collectionId, collectionName, created, updated, notes, birdId, date);

  @override
  String toString() {
    return 'FinanceDto(id: $id, categoryId: $categoryId, title: $title, amount: $amount, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, notes: $notes, birdId: $birdId, date: $date)';
  }
}

/// @nodoc
abstract mixin class _$FinanceDtoCopyWith<$Res>
    implements $FinanceDtoCopyWith<$Res> {
  factory _$FinanceDtoCopyWith(
          _FinanceDto value, $Res Function(_FinanceDto) _then) =
      __$FinanceDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'category') String categoryId,
      String title,
      double amount,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated,
      @StringNullEmptyConverter() String? notes,
      @JsonKey(name: 'bird') @StringNullEmptyConverter() String? birdId,
      @UtcDateTimeConverter() DateTime? date});
}

/// @nodoc
class __$FinanceDtoCopyWithImpl<$Res> implements _$FinanceDtoCopyWith<$Res> {
  __$FinanceDtoCopyWithImpl(this._self, this._then);

  final _FinanceDto _self;
  final $Res Function(_FinanceDto) _then;

  /// Create a copy of FinanceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? title = null,
    Object? amount = null,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? notes = freezed,
    Object? birdId = freezed,
    Object? date = freezed,
  }) {
    return _then(_FinanceDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
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
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      birdId: freezed == birdId
          ? _self.birdId
          : birdId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
