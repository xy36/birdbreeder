// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brood_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BroodDto _$BroodDtoFromJson(Map<String, dynamic> json) {
  return _BroodDto.fromJson(json);
}

/// @nodoc
mixin _$BroodDto {
  String get id => throw _privateConstructorUsedError;
  String? get collectionId => throw _privateConstructorUsedError;
  String? get collectionName => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;
  DateTime? get updated => throw _privateConstructorUsedError;
  @DateTimeNullEmptyConverter()
  DateTime? get start => throw _privateConstructorUsedError;
  @DateTimeNullEmptyConverter()
  DateTime? get end => throw _privateConstructorUsedError;
  @StringNullEmptyConverter()
  String? get notes => throw _privateConstructorUsedError;
  @StringNullEmptyConverter()
  String? get cage => throw _privateConstructorUsedError;
  List<String>? get children => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;

  /// Serializes this BroodDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BroodDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BroodDtoCopyWith<BroodDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroodDtoCopyWith<$Res> {
  factory $BroodDtoCopyWith(BroodDto value, $Res Function(BroodDto) then) =
      _$BroodDtoCopyWithImpl<$Res, BroodDto>;
  @useResult
  $Res call(
      {String id,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated,
      @DateTimeNullEmptyConverter() DateTime? start,
      @DateTimeNullEmptyConverter() DateTime? end,
      @StringNullEmptyConverter() String? notes,
      @StringNullEmptyConverter() String? cage,
      List<String>? children,
      String? user});
}

/// @nodoc
class _$BroodDtoCopyWithImpl<$Res, $Val extends BroodDto>
    implements $BroodDtoCopyWith<$Res> {
  _$BroodDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BroodDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? notes = freezed,
    Object? cage = freezed,
    Object? children = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      cage: freezed == cage
          ? _value.cage
          : cage // ignore: cast_nullable_to_non_nullable
              as String?,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BroodDtoImplCopyWith<$Res>
    implements $BroodDtoCopyWith<$Res> {
  factory _$$BroodDtoImplCopyWith(
          _$BroodDtoImpl value, $Res Function(_$BroodDtoImpl) then) =
      __$$BroodDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated,
      @DateTimeNullEmptyConverter() DateTime? start,
      @DateTimeNullEmptyConverter() DateTime? end,
      @StringNullEmptyConverter() String? notes,
      @StringNullEmptyConverter() String? cage,
      List<String>? children,
      String? user});
}

/// @nodoc
class __$$BroodDtoImplCopyWithImpl<$Res>
    extends _$BroodDtoCopyWithImpl<$Res, _$BroodDtoImpl>
    implements _$$BroodDtoImplCopyWith<$Res> {
  __$$BroodDtoImplCopyWithImpl(
      _$BroodDtoImpl _value, $Res Function(_$BroodDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BroodDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? notes = freezed,
    Object? cage = freezed,
    Object? children = freezed,
    Object? user = freezed,
  }) {
    return _then(_$BroodDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      cage: freezed == cage
          ? _value.cage
          : cage // ignore: cast_nullable_to_non_nullable
              as String?,
      children: freezed == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BroodDtoImpl implements _BroodDto {
  _$BroodDtoImpl(
      {required this.id,
      this.collectionId,
      this.collectionName,
      this.created,
      this.updated,
      @DateTimeNullEmptyConverter() this.start,
      @DateTimeNullEmptyConverter() this.end,
      @StringNullEmptyConverter() this.notes,
      @StringNullEmptyConverter() this.cage,
      final List<String>? children,
      this.user})
      : _children = children;

  factory _$BroodDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BroodDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String? collectionId;
  @override
  final String? collectionName;
  @override
  final DateTime? created;
  @override
  final DateTime? updated;
  @override
  @DateTimeNullEmptyConverter()
  final DateTime? start;
  @override
  @DateTimeNullEmptyConverter()
  final DateTime? end;
  @override
  @StringNullEmptyConverter()
  final String? notes;
  @override
  @StringNullEmptyConverter()
  final String? cage;
  final List<String>? _children;
  @override
  List<String>? get children {
    final value = _children;
    if (value == null) return null;
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? user;

  @override
  String toString() {
    return 'BroodDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, start: $start, end: $end, notes: $notes, cage: $cage, children: $children, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BroodDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.cage, cage) || other.cage == cage) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      collectionId,
      collectionName,
      created,
      updated,
      start,
      end,
      notes,
      cage,
      const DeepCollectionEquality().hash(_children),
      user);

  /// Create a copy of BroodDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BroodDtoImplCopyWith<_$BroodDtoImpl> get copyWith =>
      __$$BroodDtoImplCopyWithImpl<_$BroodDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BroodDtoImplToJson(
      this,
    );
  }
}

abstract class _BroodDto implements BroodDto {
  factory _BroodDto(
      {required final String id,
      final String? collectionId,
      final String? collectionName,
      final DateTime? created,
      final DateTime? updated,
      @DateTimeNullEmptyConverter() final DateTime? start,
      @DateTimeNullEmptyConverter() final DateTime? end,
      @StringNullEmptyConverter() final String? notes,
      @StringNullEmptyConverter() final String? cage,
      final List<String>? children,
      final String? user}) = _$BroodDtoImpl;

  factory _BroodDto.fromJson(Map<String, dynamic> json) =
      _$BroodDtoImpl.fromJson;

  @override
  String get id;
  @override
  String? get collectionId;
  @override
  String? get collectionName;
  @override
  DateTime? get created;
  @override
  DateTime? get updated;
  @override
  @DateTimeNullEmptyConverter()
  DateTime? get start;
  @override
  @DateTimeNullEmptyConverter()
  DateTime? get end;
  @override
  @StringNullEmptyConverter()
  String? get notes;
  @override
  @StringNullEmptyConverter()
  String? get cage;
  @override
  List<String>? get children;
  @override
  String? get user;

  /// Create a copy of BroodDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BroodDtoImplCopyWith<_$BroodDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
