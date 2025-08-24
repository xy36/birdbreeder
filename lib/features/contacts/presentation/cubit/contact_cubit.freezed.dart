// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContactState {
  Contact get contact => throw _privateConstructorUsedError;
  ContactMode get mode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact, ContactMode mode) loading,
    required TResult Function(Contact contact, ContactMode mode) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact, ContactMode mode)? loading,
    TResult? Function(Contact contact, ContactMode mode)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact, ContactMode mode)? loading,
    TResult Function(Contact contact, ContactMode mode)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContactLoading value) loading,
    required TResult Function(ContactLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContactLoading value)? loading,
    TResult? Function(ContactLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactLoading value)? loading,
    TResult Function(ContactLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactStateCopyWith<ContactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactStateCopyWith<$Res> {
  factory $ContactStateCopyWith(
          ContactState value, $Res Function(ContactState) then) =
      _$ContactStateCopyWithImpl<$Res, ContactState>;
  @useResult
  $Res call({Contact contact, ContactMode mode});

  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class _$ContactStateCopyWithImpl<$Res, $Val extends ContactState>
    implements $ContactStateCopyWith<$Res> {
  _$ContactStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
    Object? mode = null,
  }) {
    return _then(_value.copyWith(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ContactMode,
    ) as $Val);
  }

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContactLoadingImplCopyWith<$Res>
    implements $ContactStateCopyWith<$Res> {
  factory _$$ContactLoadingImplCopyWith(_$ContactLoadingImpl value,
          $Res Function(_$ContactLoadingImpl) then) =
      __$$ContactLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Contact contact, ContactMode mode});

  @override
  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class __$$ContactLoadingImplCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res, _$ContactLoadingImpl>
    implements _$$ContactLoadingImplCopyWith<$Res> {
  __$$ContactLoadingImplCopyWithImpl(
      _$ContactLoadingImpl _value, $Res Function(_$ContactLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
    Object? mode = null,
  }) {
    return _then(_$ContactLoadingImpl(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ContactMode,
    ));
  }
}

/// @nodoc

class _$ContactLoadingImpl implements ContactLoading {
  const _$ContactLoadingImpl({required this.contact, required this.mode});

  @override
  final Contact contact;
  @override
  final ContactMode mode;

  @override
  String toString() {
    return 'ContactState.loading(contact: $contact, mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactLoadingImpl &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact, mode);

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactLoadingImplCopyWith<_$ContactLoadingImpl> get copyWith =>
      __$$ContactLoadingImplCopyWithImpl<_$ContactLoadingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact, ContactMode mode) loading,
    required TResult Function(Contact contact, ContactMode mode) loaded,
  }) {
    return loading(contact, mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact, ContactMode mode)? loading,
    TResult? Function(Contact contact, ContactMode mode)? loaded,
  }) {
    return loading?.call(contact, mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact, ContactMode mode)? loading,
    TResult Function(Contact contact, ContactMode mode)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(contact, mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContactLoading value) loading,
    required TResult Function(ContactLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContactLoading value)? loading,
    TResult? Function(ContactLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactLoading value)? loading,
    TResult Function(ContactLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ContactLoading implements ContactState {
  const factory ContactLoading(
      {required final Contact contact,
      required final ContactMode mode}) = _$ContactLoadingImpl;

  @override
  Contact get contact;
  @override
  ContactMode get mode;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactLoadingImplCopyWith<_$ContactLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContactLoadedImplCopyWith<$Res>
    implements $ContactStateCopyWith<$Res> {
  factory _$$ContactLoadedImplCopyWith(
          _$ContactLoadedImpl value, $Res Function(_$ContactLoadedImpl) then) =
      __$$ContactLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Contact contact, ContactMode mode});

  @override
  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class __$$ContactLoadedImplCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res, _$ContactLoadedImpl>
    implements _$$ContactLoadedImplCopyWith<$Res> {
  __$$ContactLoadedImplCopyWithImpl(
      _$ContactLoadedImpl _value, $Res Function(_$ContactLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact = null,
    Object? mode = null,
  }) {
    return _then(_$ContactLoadedImpl(
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ContactMode,
    ));
  }
}

/// @nodoc

class _$ContactLoadedImpl implements ContactLoaded {
  const _$ContactLoadedImpl({required this.contact, required this.mode});

  @override
  final Contact contact;
  @override
  final ContactMode mode;

  @override
  String toString() {
    return 'ContactState.loaded(contact: $contact, mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactLoadedImpl &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact, mode);

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactLoadedImplCopyWith<_$ContactLoadedImpl> get copyWith =>
      __$$ContactLoadedImplCopyWithImpl<_$ContactLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Contact contact, ContactMode mode) loading,
    required TResult Function(Contact contact, ContactMode mode) loaded,
  }) {
    return loaded(contact, mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Contact contact, ContactMode mode)? loading,
    TResult? Function(Contact contact, ContactMode mode)? loaded,
  }) {
    return loaded?.call(contact, mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Contact contact, ContactMode mode)? loading,
    TResult Function(Contact contact, ContactMode mode)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(contact, mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContactLoading value) loading,
    required TResult Function(ContactLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContactLoading value)? loading,
    TResult? Function(ContactLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactLoading value)? loading,
    TResult Function(ContactLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ContactLoaded implements ContactState {
  const factory ContactLoaded(
      {required final Contact contact,
      required final ContactMode mode}) = _$ContactLoadedImpl;

  @override
  Contact get contact;
  @override
  ContactMode get mode;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactLoadedImplCopyWith<_$ContactLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
