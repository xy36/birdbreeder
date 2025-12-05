// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Finance {
  String get id;
  String get categoryId;
  double get amount;
  String get title;
  String? get birdId;
  DateTime? get date;
  String? get notes;
  DateTime? get created;
  DateTime? get updated;

  /// Create a copy of Finance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FinanceCopyWith<Finance> get copyWith =>
      _$FinanceCopyWithImpl<Finance>(this as Finance, _$identity);

  /// Serializes this Finance to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Finance &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.birdId, birdId) || other.birdId == birdId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, categoryId, amount, title,
      birdId, date, notes, created, updated);

  @override
  String toString() {
    return 'Finance(id: $id, categoryId: $categoryId, amount: $amount, title: $title, birdId: $birdId, date: $date, notes: $notes, created: $created, updated: $updated)';
  }
}

/// @nodoc
abstract mixin class $FinanceCopyWith<$Res> {
  factory $FinanceCopyWith(Finance value, $Res Function(Finance) _then) =
      _$FinanceCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String categoryId,
      double amount,
      String title,
      String? birdId,
      DateTime? date,
      String? notes,
      DateTime? created,
      DateTime? updated});
}

/// @nodoc
class _$FinanceCopyWithImpl<$Res> implements $FinanceCopyWith<$Res> {
  _$FinanceCopyWithImpl(this._self, this._then);

  final Finance _self;
  final $Res Function(Finance) _then;

  /// Create a copy of Finance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? amount = null,
    Object? title = null,
    Object? birdId = freezed,
    Object? date = freezed,
    Object? notes = freezed,
    Object? created = freezed,
    Object? updated = freezed,
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
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      birdId: freezed == birdId
          ? _self.birdId
          : birdId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [Finance].
extension FinancePatterns on Finance {
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
    TResult Function(_Finance value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Finance() when $default != null:
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
    TResult Function(_Finance value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Finance():
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
    TResult? Function(_Finance value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Finance() when $default != null:
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
            String categoryId,
            double amount,
            String title,
            String? birdId,
            DateTime? date,
            String? notes,
            DateTime? created,
            DateTime? updated)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Finance() when $default != null:
        return $default(
            _that.id,
            _that.categoryId,
            _that.amount,
            _that.title,
            _that.birdId,
            _that.date,
            _that.notes,
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
            String categoryId,
            double amount,
            String title,
            String? birdId,
            DateTime? date,
            String? notes,
            DateTime? created,
            DateTime? updated)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Finance():
        return $default(
            _that.id,
            _that.categoryId,
            _that.amount,
            _that.title,
            _that.birdId,
            _that.date,
            _that.notes,
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
            String categoryId,
            double amount,
            String title,
            String? birdId,
            DateTime? date,
            String? notes,
            DateTime? created,
            DateTime? updated)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Finance() when $default != null:
        return $default(
            _that.id,
            _that.categoryId,
            _that.amount,
            _that.title,
            _that.birdId,
            _that.date,
            _that.notes,
            _that.created,
            _that.updated);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Finance implements Finance {
  const _Finance(
      {required this.id,
      required this.categoryId,
      required this.amount,
      required this.title,
      this.birdId,
      this.date,
      this.notes,
      this.created,
      this.updated});
  factory _Finance.fromJson(Map<String, dynamic> json) =>
      _$FinanceFromJson(json);

  @override
  final String id;
  @override
  final String categoryId;
  @override
  final double amount;
  @override
  final String title;
  @override
  final String? birdId;
  @override
  final DateTime? date;
  @override
  final String? notes;
  @override
  final DateTime? created;
  @override
  final DateTime? updated;

  /// Create a copy of Finance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FinanceCopyWith<_Finance> get copyWith =>
      __$FinanceCopyWithImpl<_Finance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FinanceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Finance &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.birdId, birdId) || other.birdId == birdId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, categoryId, amount, title,
      birdId, date, notes, created, updated);

  @override
  String toString() {
    return 'Finance(id: $id, categoryId: $categoryId, amount: $amount, title: $title, birdId: $birdId, date: $date, notes: $notes, created: $created, updated: $updated)';
  }
}

/// @nodoc
abstract mixin class _$FinanceCopyWith<$Res> implements $FinanceCopyWith<$Res> {
  factory _$FinanceCopyWith(_Finance value, $Res Function(_Finance) _then) =
      __$FinanceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String categoryId,
      double amount,
      String title,
      String? birdId,
      DateTime? date,
      String? notes,
      DateTime? created,
      DateTime? updated});
}

/// @nodoc
class __$FinanceCopyWithImpl<$Res> implements _$FinanceCopyWith<$Res> {
  __$FinanceCopyWithImpl(this._self, this._then);

  final _Finance _self;
  final $Res Function(_Finance) _then;

  /// Create a copy of Finance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? amount = null,
    Object? title = null,
    Object? birdId = freezed,
    Object? date = freezed,
    Object? notes = freezed,
    Object? created = freezed,
    Object? updated = freezed,
  }) {
    return _then(_Finance(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      birdId: freezed == birdId
          ? _self.birdId
          : birdId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
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
