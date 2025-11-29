// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactDto {
  String get id;
  String? get number;
  String? get phone;
  String? get firstName;
  String? get name;
  String? get email;
  String? get address;
  String? get city;
  String? get country;
  String? get postalCode;
  String? get website;
  String? get user;

  /// Create a copy of ContactDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContactDtoCopyWith<ContactDto> get copyWith =>
      _$ContactDtoCopyWithImpl<ContactDto>(this as ContactDto, _$identity);

  /// Serializes this ContactDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContactDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, number, phone, firstName,
      name, email, address, city, country, postalCode, website, user);

  @override
  String toString() {
    return 'ContactDto(id: $id, number: $number, phone: $phone, firstName: $firstName, name: $name, email: $email, address: $address, city: $city, country: $country, postalCode: $postalCode, website: $website, user: $user)';
  }
}

/// @nodoc
abstract mixin class $ContactDtoCopyWith<$Res> {
  factory $ContactDtoCopyWith(
          ContactDto value, $Res Function(ContactDto) _then) =
      _$ContactDtoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String? number,
      String? phone,
      String? firstName,
      String? name,
      String? email,
      String? address,
      String? city,
      String? country,
      String? postalCode,
      String? website,
      String? user});
}

/// @nodoc
class _$ContactDtoCopyWithImpl<$Res> implements $ContactDtoCopyWith<$Res> {
  _$ContactDtoCopyWithImpl(this._self, this._then);

  final ContactDto _self;
  final $Res Function(ContactDto) _then;

  /// Create a copy of ContactDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = freezed,
    Object? phone = freezed,
    Object? firstName = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? postalCode = freezed,
    Object? website = freezed,
    Object? user = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: freezed == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
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
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _self.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _self.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ContactDto].
extension ContactDtoPatterns on ContactDto {
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
    TResult Function(_ContactDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ContactDto() when $default != null:
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
    TResult Function(_ContactDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactDto():
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
    TResult? Function(_ContactDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactDto() when $default != null:
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
            String? number,
            String? phone,
            String? firstName,
            String? name,
            String? email,
            String? address,
            String? city,
            String? country,
            String? postalCode,
            String? website,
            String? user)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ContactDto() when $default != null:
        return $default(
            _that.id,
            _that.number,
            _that.phone,
            _that.firstName,
            _that.name,
            _that.email,
            _that.address,
            _that.city,
            _that.country,
            _that.postalCode,
            _that.website,
            _that.user);
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
            String? number,
            String? phone,
            String? firstName,
            String? name,
            String? email,
            String? address,
            String? city,
            String? country,
            String? postalCode,
            String? website,
            String? user)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactDto():
        return $default(
            _that.id,
            _that.number,
            _that.phone,
            _that.firstName,
            _that.name,
            _that.email,
            _that.address,
            _that.city,
            _that.country,
            _that.postalCode,
            _that.website,
            _that.user);
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
            String? number,
            String? phone,
            String? firstName,
            String? name,
            String? email,
            String? address,
            String? city,
            String? country,
            String? postalCode,
            String? website,
            String? user)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactDto() when $default != null:
        return $default(
            _that.id,
            _that.number,
            _that.phone,
            _that.firstName,
            _that.name,
            _that.email,
            _that.address,
            _that.city,
            _that.country,
            _that.postalCode,
            _that.website,
            _that.user);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ContactDto implements ContactDto {
  _ContactDto(
      {required this.id,
      this.number,
      this.phone,
      this.firstName,
      this.name,
      this.email,
      this.address,
      this.city,
      this.country,
      this.postalCode,
      this.website,
      this.user});
  factory _ContactDto.fromJson(Map<String, dynamic> json) =>
      _$ContactDtoFromJson(json);

  @override
  final String id;
  @override
  final String? number;
  @override
  final String? phone;
  @override
  final String? firstName;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? address;
  @override
  final String? city;
  @override
  final String? country;
  @override
  final String? postalCode;
  @override
  final String? website;
  @override
  final String? user;

  /// Create a copy of ContactDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ContactDtoCopyWith<_ContactDto> get copyWith =>
      __$ContactDtoCopyWithImpl<_ContactDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ContactDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, number, phone, firstName,
      name, email, address, city, country, postalCode, website, user);

  @override
  String toString() {
    return 'ContactDto(id: $id, number: $number, phone: $phone, firstName: $firstName, name: $name, email: $email, address: $address, city: $city, country: $country, postalCode: $postalCode, website: $website, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$ContactDtoCopyWith<$Res>
    implements $ContactDtoCopyWith<$Res> {
  factory _$ContactDtoCopyWith(
          _ContactDto value, $Res Function(_ContactDto) _then) =
      __$ContactDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String? number,
      String? phone,
      String? firstName,
      String? name,
      String? email,
      String? address,
      String? city,
      String? country,
      String? postalCode,
      String? website,
      String? user});
}

/// @nodoc
class __$ContactDtoCopyWithImpl<$Res> implements _$ContactDtoCopyWith<$Res> {
  __$ContactDtoCopyWithImpl(this._self, this._then);

  final _ContactDto _self;
  final $Res Function(_ContactDto) _then;

  /// Create a copy of ContactDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? number = freezed,
    Object? phone = freezed,
    Object? firstName = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? postalCode = freezed,
    Object? website = freezed,
    Object? user = freezed,
  }) {
    return _then(_ContactDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      number: freezed == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
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
      country: freezed == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _self.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _self.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
