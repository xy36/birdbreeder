// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BaseSearch {
  bool get isActive => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;

  /// Create a copy of BaseSearch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseSearchCopyWith<BaseSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseSearchCopyWith<$Res> {
  factory $BaseSearchCopyWith(
          BaseSearch value, $Res Function(BaseSearch) then) =
      _$BaseSearchCopyWithImpl<$Res, BaseSearch>;
  @useResult
  $Res call({bool isActive, String query});
}

/// @nodoc
class _$BaseSearchCopyWithImpl<$Res, $Val extends BaseSearch>
    implements $BaseSearchCopyWith<$Res> {
  _$BaseSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseSearch
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
abstract class _$$BaseSearchImplCopyWith<$Res>
    implements $BaseSearchCopyWith<$Res> {
  factory _$$BaseSearchImplCopyWith(
          _$BaseSearchImpl value, $Res Function(_$BaseSearchImpl) then) =
      __$$BaseSearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isActive, String query});
}

/// @nodoc
class __$$BaseSearchImplCopyWithImpl<$Res>
    extends _$BaseSearchCopyWithImpl<$Res, _$BaseSearchImpl>
    implements _$$BaseSearchImplCopyWith<$Res> {
  __$$BaseSearchImplCopyWithImpl(
      _$BaseSearchImpl _value, $Res Function(_$BaseSearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseSearch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
    Object? query = null,
  }) {
    return _then(_$BaseSearchImpl(
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

class _$BaseSearchImpl implements _BaseSearch {
  const _$BaseSearchImpl({this.isActive = false, this.query = ''});

  @override
  @JsonKey()
  final bool isActive;
  @override
  @JsonKey()
  final String query;

  @override
  String toString() {
    return 'BaseSearch(isActive: $isActive, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseSearchImpl &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isActive, query);

  /// Create a copy of BaseSearch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseSearchImplCopyWith<_$BaseSearchImpl> get copyWith =>
      __$$BaseSearchImplCopyWithImpl<_$BaseSearchImpl>(this, _$identity);
}

abstract class _BaseSearch implements BaseSearch {
  const factory _BaseSearch({final bool isActive, final String query}) =
      _$BaseSearchImpl;

  @override
  bool get isActive;
  @override
  String get query;

  /// Create a copy of BaseSearch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseSearchImplCopyWith<_$BaseSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
