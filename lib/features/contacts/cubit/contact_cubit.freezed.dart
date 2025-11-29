// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactState {
  Contact get contact;
  ContactMode get mode;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContactStateCopyWith<ContactState> get copyWith =>
      _$ContactStateCopyWithImpl<ContactState>(
          this as ContactState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContactState &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact, mode);

  @override
  String toString() {
    return 'ContactState(contact: $contact, mode: $mode)';
  }
}

/// @nodoc
abstract mixin class $ContactStateCopyWith<$Res> {
  factory $ContactStateCopyWith(
          ContactState value, $Res Function(ContactState) _then) =
      _$ContactStateCopyWithImpl;
  @useResult
  $Res call({Contact contact, ContactMode mode});

  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class _$ContactStateCopyWithImpl<$Res> implements $ContactStateCopyWith<$Res> {
  _$ContactStateCopyWithImpl(this._self, this._then);

  final ContactState _self;
  final $Res Function(ContactState) _then;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
    Object? mode = null,
  }) {
    return _then(_self.copyWith(
      contact: null == contact
          ? _self.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
      mode: null == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ContactMode,
    ));
  }

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_self.contact, (value) {
      return _then(_self.copyWith(contact: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ContactState].
extension ContactStatePatterns on ContactState {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactLoading value)? loading,
    TResult Function(ContactLoaded value)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ContactLoading() when loading != null:
        return loading(_that);
      case ContactLoaded() when loaded != null:
        return loaded(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(ContactLoading value) loading,
    required TResult Function(ContactLoaded value) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case ContactLoading():
        return loading(_that);
      case ContactLoaded():
        return loaded(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContactLoading value)? loading,
    TResult? Function(ContactLoaded value)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case ContactLoading() when loading != null:
        return loading(_that);
      case ContactLoaded() when loaded != null:
        return loaded(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact, ContactMode mode)? loading,
    TResult Function(Contact contact, ContactMode mode)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ContactLoading() when loading != null:
        return loading(_that.contact, _that.mode);
      case ContactLoaded() when loaded != null:
        return loaded(_that.contact, _that.mode);
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
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact, ContactMode mode) loading,
    required TResult Function(Contact contact, ContactMode mode) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case ContactLoading():
        return loading(_that.contact, _that.mode);
      case ContactLoaded():
        return loaded(_that.contact, _that.mode);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact, ContactMode mode)? loading,
    TResult? Function(Contact contact, ContactMode mode)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case ContactLoading() when loading != null:
        return loading(_that.contact, _that.mode);
      case ContactLoaded() when loaded != null:
        return loaded(_that.contact, _that.mode);
      case _:
        return null;
    }
  }
}

/// @nodoc

class ContactLoading implements ContactState {
  const ContactLoading({required this.contact, required this.mode});

  @override
  final Contact contact;
  @override
  final ContactMode mode;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContactLoadingCopyWith<ContactLoading> get copyWith =>
      _$ContactLoadingCopyWithImpl<ContactLoading>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContactLoading &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact, mode);

  @override
  String toString() {
    return 'ContactState.loading(contact: $contact, mode: $mode)';
  }
}

/// @nodoc
abstract mixin class $ContactLoadingCopyWith<$Res>
    implements $ContactStateCopyWith<$Res> {
  factory $ContactLoadingCopyWith(
          ContactLoading value, $Res Function(ContactLoading) _then) =
      _$ContactLoadingCopyWithImpl;
  @override
  @useResult
  $Res call({Contact contact, ContactMode mode});

  @override
  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class _$ContactLoadingCopyWithImpl<$Res>
    implements $ContactLoadingCopyWith<$Res> {
  _$ContactLoadingCopyWithImpl(this._self, this._then);

  final ContactLoading _self;
  final $Res Function(ContactLoading) _then;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? contact = null,
    Object? mode = null,
  }) {
    return _then(ContactLoading(
      contact: null == contact
          ? _self.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
      mode: null == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ContactMode,
    ));
  }

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_self.contact, (value) {
      return _then(_self.copyWith(contact: value));
    });
  }
}

/// @nodoc

class ContactLoaded implements ContactState {
  const ContactLoaded({required this.contact, required this.mode});

  @override
  final Contact contact;
  @override
  final ContactMode mode;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContactLoadedCopyWith<ContactLoaded> get copyWith =>
      _$ContactLoadedCopyWithImpl<ContactLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContactLoaded &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact, mode);

  @override
  String toString() {
    return 'ContactState.loaded(contact: $contact, mode: $mode)';
  }
}

/// @nodoc
abstract mixin class $ContactLoadedCopyWith<$Res>
    implements $ContactStateCopyWith<$Res> {
  factory $ContactLoadedCopyWith(
          ContactLoaded value, $Res Function(ContactLoaded) _then) =
      _$ContactLoadedCopyWithImpl;
  @override
  @useResult
  $Res call({Contact contact, ContactMode mode});

  @override
  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class _$ContactLoadedCopyWithImpl<$Res>
    implements $ContactLoadedCopyWith<$Res> {
  _$ContactLoadedCopyWithImpl(this._self, this._then);

  final ContactLoaded _self;
  final $Res Function(ContactLoaded) _then;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? contact = null,
    Object? mode = null,
  }) {
    return _then(ContactLoaded(
      contact: null == contact
          ? _self.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
      mode: null == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ContactMode,
    ));
  }

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_self.contact, (value) {
      return _then(_self.copyWith(contact: value));
    });
  }
}

// dart format on
