// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'csv_contact_row.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CsvContactRow {
  int get rowIndex;
  String? get number;
  String? get firstName;
  String? get lastName;
  String? get title;
  String? get phone;
  String? get cellPhoneNumber;
  String? get email;
  String? get address;
  String? get city;
  String? get postalCode;
  String? get country;
  String? get website;
  bool get hasError;
  String? get errorMessage;

  /// Create a copy of CsvContactRow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CsvContactRowCopyWith<CsvContactRow> get copyWith =>
      _$CsvContactRowCopyWithImpl<CsvContactRow>(
          this as CsvContactRow, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CsvContactRow &&
            (identical(other.rowIndex, rowIndex) ||
                other.rowIndex == rowIndex) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.cellPhoneNumber, cellPhoneNumber) ||
                other.cellPhoneNumber == cellPhoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      rowIndex,
      number,
      firstName,
      lastName,
      title,
      phone,
      cellPhoneNumber,
      email,
      address,
      city,
      postalCode,
      country,
      website,
      hasError,
      errorMessage);

  @override
  String toString() {
    return 'CsvContactRow(rowIndex: $rowIndex, number: $number, firstName: $firstName, lastName: $lastName, title: $title, phone: $phone, cellPhoneNumber: $cellPhoneNumber, email: $email, address: $address, city: $city, postalCode: $postalCode, country: $country, website: $website, hasError: $hasError, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $CsvContactRowCopyWith<$Res> {
  factory $CsvContactRowCopyWith(
          CsvContactRow value, $Res Function(CsvContactRow) _then) =
      _$CsvContactRowCopyWithImpl;
  @useResult
  $Res call(
      {int rowIndex,
      String? number,
      String? firstName,
      String? lastName,
      String? title,
      String? phone,
      String? cellPhoneNumber,
      String? email,
      String? address,
      String? city,
      String? postalCode,
      String? country,
      String? website,
      bool hasError,
      String? errorMessage});
}

/// @nodoc
class _$CsvContactRowCopyWithImpl<$Res>
    implements $CsvContactRowCopyWith<$Res> {
  _$CsvContactRowCopyWithImpl(this._self, this._then);

  final CsvContactRow _self;
  final $Res Function(CsvContactRow) _then;

  /// Create a copy of CsvContactRow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rowIndex = null,
    Object? number = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? title = freezed,
    Object? phone = freezed,
    Object? cellPhoneNumber = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? postalCode = freezed,
    Object? country = freezed,
    Object? website = freezed,
    Object? hasError = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      rowIndex: null == rowIndex
          ? _self.rowIndex
          : rowIndex // ignore: cast_nullable_to_non_nullable
              as int,
      number: freezed == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      cellPhoneNumber: freezed == cellPhoneNumber
          ? _self.cellPhoneNumber
          : cellPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _self.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _self.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      hasError: null == hasError
          ? _self.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CsvContactRow].
extension CsvContactRowPatterns on CsvContactRow {
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
    TResult Function(_CsvContactRow value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CsvContactRow() when $default != null:
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
    TResult Function(_CsvContactRow value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CsvContactRow():
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
    TResult? Function(_CsvContactRow value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CsvContactRow() when $default != null:
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
            int rowIndex,
            String? number,
            String? firstName,
            String? lastName,
            String? title,
            String? phone,
            String? cellPhoneNumber,
            String? email,
            String? address,
            String? city,
            String? postalCode,
            String? country,
            String? website,
            bool hasError,
            String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CsvContactRow() when $default != null:
        return $default(
            _that.rowIndex,
            _that.number,
            _that.firstName,
            _that.lastName,
            _that.title,
            _that.phone,
            _that.cellPhoneNumber,
            _that.email,
            _that.address,
            _that.city,
            _that.postalCode,
            _that.country,
            _that.website,
            _that.hasError,
            _that.errorMessage);
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
            int rowIndex,
            String? number,
            String? firstName,
            String? lastName,
            String? title,
            String? phone,
            String? cellPhoneNumber,
            String? email,
            String? address,
            String? city,
            String? postalCode,
            String? country,
            String? website,
            bool hasError,
            String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CsvContactRow():
        return $default(
            _that.rowIndex,
            _that.number,
            _that.firstName,
            _that.lastName,
            _that.title,
            _that.phone,
            _that.cellPhoneNumber,
            _that.email,
            _that.address,
            _that.city,
            _that.postalCode,
            _that.country,
            _that.website,
            _that.hasError,
            _that.errorMessage);
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
            int rowIndex,
            String? number,
            String? firstName,
            String? lastName,
            String? title,
            String? phone,
            String? cellPhoneNumber,
            String? email,
            String? address,
            String? city,
            String? postalCode,
            String? country,
            String? website,
            bool hasError,
            String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CsvContactRow() when $default != null:
        return $default(
            _that.rowIndex,
            _that.number,
            _that.firstName,
            _that.lastName,
            _that.title,
            _that.phone,
            _that.cellPhoneNumber,
            _that.email,
            _that.address,
            _that.city,
            _that.postalCode,
            _that.country,
            _that.website,
            _that.hasError,
            _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _CsvContactRow extends CsvContactRow {
  const _CsvContactRow(
      {required this.rowIndex,
      this.number,
      this.firstName,
      this.lastName,
      this.title,
      this.phone,
      this.cellPhoneNumber,
      this.email,
      this.address,
      this.city,
      this.postalCode,
      this.country,
      this.website,
      this.hasError = false,
      this.errorMessage})
      : super._();

  @override
  final int rowIndex;
  @override
  final String? number;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? title;
  @override
  final String? phone;
  @override
  final String? cellPhoneNumber;
  @override
  final String? email;
  @override
  final String? address;
  @override
  final String? city;
  @override
  final String? postalCode;
  @override
  final String? country;
  @override
  final String? website;
  @override
  @JsonKey()
  final bool hasError;
  @override
  final String? errorMessage;

  /// Create a copy of CsvContactRow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CsvContactRowCopyWith<_CsvContactRow> get copyWith =>
      __$CsvContactRowCopyWithImpl<_CsvContactRow>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CsvContactRow &&
            (identical(other.rowIndex, rowIndex) ||
                other.rowIndex == rowIndex) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.cellPhoneNumber, cellPhoneNumber) ||
                other.cellPhoneNumber == cellPhoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      rowIndex,
      number,
      firstName,
      lastName,
      title,
      phone,
      cellPhoneNumber,
      email,
      address,
      city,
      postalCode,
      country,
      website,
      hasError,
      errorMessage);

  @override
  String toString() {
    return 'CsvContactRow(rowIndex: $rowIndex, number: $number, firstName: $firstName, lastName: $lastName, title: $title, phone: $phone, cellPhoneNumber: $cellPhoneNumber, email: $email, address: $address, city: $city, postalCode: $postalCode, country: $country, website: $website, hasError: $hasError, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$CsvContactRowCopyWith<$Res>
    implements $CsvContactRowCopyWith<$Res> {
  factory _$CsvContactRowCopyWith(
          _CsvContactRow value, $Res Function(_CsvContactRow) _then) =
      __$CsvContactRowCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int rowIndex,
      String? number,
      String? firstName,
      String? lastName,
      String? title,
      String? phone,
      String? cellPhoneNumber,
      String? email,
      String? address,
      String? city,
      String? postalCode,
      String? country,
      String? website,
      bool hasError,
      String? errorMessage});
}

/// @nodoc
class __$CsvContactRowCopyWithImpl<$Res>
    implements _$CsvContactRowCopyWith<$Res> {
  __$CsvContactRowCopyWithImpl(this._self, this._then);

  final _CsvContactRow _self;
  final $Res Function(_CsvContactRow) _then;

  /// Create a copy of CsvContactRow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rowIndex = null,
    Object? number = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? title = freezed,
    Object? phone = freezed,
    Object? cellPhoneNumber = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? postalCode = freezed,
    Object? country = freezed,
    Object? website = freezed,
    Object? hasError = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_CsvContactRow(
      rowIndex: null == rowIndex
          ? _self.rowIndex
          : rowIndex // ignore: cast_nullable_to_non_nullable
              as int,
      number: freezed == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      cellPhoneNumber: freezed == cellPhoneNumber
          ? _self.cellPhoneNumber
          : cellPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _self.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _self.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      hasError: null == hasError
          ? _self.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
