// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Cage {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CageCopyWith<Cage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CageCopyWith<$Res> {
  factory $CageCopyWith(Cage value, $Res Function(Cage) then) =
      _$CageCopyWithImpl<$Res, Cage>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$CageCopyWithImpl<$Res, $Val extends Cage>
    implements $CageCopyWith<$Res> {
  _$CageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CageCopyWith<$Res> implements $CageCopyWith<$Res> {
  factory _$$_CageCopyWith(_$_Cage value, $Res Function(_$_Cage) then) =
      __$$_CageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$_CageCopyWithImpl<$Res> extends _$CageCopyWithImpl<$Res, _$_Cage>
    implements _$$_CageCopyWith<$Res> {
  __$$_CageCopyWithImpl(_$_Cage _value, $Res Function(_$_Cage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Cage(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Cage implements _Cage {
  _$_Cage({required this.id, required this.name});

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Cage(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CageCopyWith<_$_Cage> get copyWith =>
      __$$_CageCopyWithImpl<_$_Cage>(this, _$identity);
}

abstract class _Cage implements Cage {
  factory _Cage({required final String? id, required final String? name}) =
      _$_Cage;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_CageCopyWith<_$_Cage> get copyWith => throw _privateConstructorUsedError;
}
