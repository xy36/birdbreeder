// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContactSearch {
  bool get isActive => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;

  /// Create a copy of ContactSearch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactSearchCopyWith<ContactSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactSearchCopyWith<$Res> {
  factory $ContactSearchCopyWith(
          ContactSearch value, $Res Function(ContactSearch) then) =
      _$ContactSearchCopyWithImpl<$Res, ContactSearch>;
  @useResult
  $Res call({bool isActive, String query});
}

/// @nodoc
class _$ContactSearchCopyWithImpl<$Res, $Val extends ContactSearch>
    implements $ContactSearchCopyWith<$Res> {
  _$ContactSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactSearch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactSearchImplCopyWith<$Res>
    implements $ContactSearchCopyWith<$Res> {
  factory _$$ContactSearchImplCopyWith(
          _$ContactSearchImpl value, $Res Function(_$ContactSearchImpl) then) =
      __$$ContactSearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isActive, String query});
}

/// @nodoc
class __$$ContactSearchImplCopyWithImpl<$Res>
    extends _$ContactSearchCopyWithImpl<$Res, _$ContactSearchImpl>
    implements _$$ContactSearchImplCopyWith<$Res> {
  __$$ContactSearchImplCopyWithImpl(
      _$ContactSearchImpl _value, $Res Function(_$ContactSearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactSearch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
    Object? query = null,
  }) {
    return _then(_$ContactSearchImpl(
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContactSearchImpl implements _ContactSearch {
  const _$ContactSearchImpl({this.isActive = false, this.query = ''});

  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final String query;

  @override
  String toString() {
    return 'ContactSearch(isActive: $isActive, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactSearchImpl &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isActive, query);

  /// Create a copy of ContactSearch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactSearchImplCopyWith<_$ContactSearchImpl> get copyWith =>
      __$$ContactSearchImplCopyWithImpl<_$ContactSearchImpl>(this, _$identity);
}

abstract class _ContactSearch implements ContactSearch {
  const factory _ContactSearch({final bool isActive, final String query}) =
      _$ContactSearchImpl;

  @override
  bool get isActive;
  @override
  String get query;

  /// Create a copy of ContactSearch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactSearchImplCopyWith<_$ContactSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
