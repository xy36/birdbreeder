// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bird.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Bird {
  String? get id => throw _privateConstructorUsedError;
  String? get ringnumber => throw _privateConstructorUsedError;
  Species? get species => throw _privateConstructorUsedError;
  BirdColor? get color => throw _privateConstructorUsedError;
  String? get cageId => throw _privateConstructorUsedError;
  Sex? get sex => throw _privateConstructorUsedError;
  Origin? get origin => throw _privateConstructorUsedError;
  DateTime? get bornDate => throw _privateConstructorUsedError;
  DateTime? get diedDate => throw _privateConstructorUsedError;
  DateTime? get boughtDate => throw _privateConstructorUsedError;
  DateTime? get sellDate => throw _privateConstructorUsedError;
  double? get boughtPrice => throw _privateConstructorUsedError;
  double? get sellPriceOffer => throw _privateConstructorUsedError;
  double? get sellPriceReal => throw _privateConstructorUsedError;
  String? get fatherRingnumber => throw _privateConstructorUsedError;
  String? get motherRingnumber => throw _privateConstructorUsedError;
  String? get partnerRingnumber => throw _privateConstructorUsedError;
  bool? get isForSale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BirdCopyWith<Bird> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirdCopyWith<$Res> {
  factory $BirdCopyWith(Bird value, $Res Function(Bird) then) =
      _$BirdCopyWithImpl<$Res, Bird>;
  @useResult
  $Res call(
      {String? id,
      String? ringnumber,
      Species? species,
      BirdColor? color,
      String? cageId,
      Sex? sex,
      Origin? origin,
      DateTime? bornDate,
      DateTime? diedDate,
      DateTime? boughtDate,
      DateTime? sellDate,
      double? boughtPrice,
      double? sellPriceOffer,
      double? sellPriceReal,
      String? fatherRingnumber,
      String? motherRingnumber,
      String? partnerRingnumber,
      bool? isForSale});

  $SpeciesCopyWith<$Res>? get species;
  $BirdColorCopyWith<$Res>? get color;
}

/// @nodoc
class _$BirdCopyWithImpl<$Res, $Val extends Bird>
    implements $BirdCopyWith<$Res> {
  _$BirdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ringnumber = freezed,
    Object? species = freezed,
    Object? color = freezed,
    Object? cageId = freezed,
    Object? sex = freezed,
    Object? origin = freezed,
    Object? bornDate = freezed,
    Object? diedDate = freezed,
    Object? boughtDate = freezed,
    Object? sellDate = freezed,
    Object? boughtPrice = freezed,
    Object? sellPriceOffer = freezed,
    Object? sellPriceReal = freezed,
    Object? fatherRingnumber = freezed,
    Object? motherRingnumber = freezed,
    Object? partnerRingnumber = freezed,
    Object? isForSale = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      ringnumber: freezed == ringnumber
          ? _value.ringnumber
          : ringnumber // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Species?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as BirdColor?,
      cageId: freezed == cageId
          ? _value.cageId
          : cageId // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Origin?,
      bornDate: freezed == bornDate
          ? _value.bornDate
          : bornDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      diedDate: freezed == diedDate
          ? _value.diedDate
          : diedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      boughtDate: freezed == boughtDate
          ? _value.boughtDate
          : boughtDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sellDate: freezed == sellDate
          ? _value.sellDate
          : sellDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      boughtPrice: freezed == boughtPrice
          ? _value.boughtPrice
          : boughtPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      sellPriceOffer: freezed == sellPriceOffer
          ? _value.sellPriceOffer
          : sellPriceOffer // ignore: cast_nullable_to_non_nullable
              as double?,
      sellPriceReal: freezed == sellPriceReal
          ? _value.sellPriceReal
          : sellPriceReal // ignore: cast_nullable_to_non_nullable
              as double?,
      fatherRingnumber: freezed == fatherRingnumber
          ? _value.fatherRingnumber
          : fatherRingnumber // ignore: cast_nullable_to_non_nullable
              as String?,
      motherRingnumber: freezed == motherRingnumber
          ? _value.motherRingnumber
          : motherRingnumber // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerRingnumber: freezed == partnerRingnumber
          ? _value.partnerRingnumber
          : partnerRingnumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isForSale: freezed == isForSale
          ? _value.isForSale
          : isForSale // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeciesCopyWith<$Res>? get species {
    if (_value.species == null) {
      return null;
    }

    return $SpeciesCopyWith<$Res>(_value.species!, (value) {
      return _then(_value.copyWith(species: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BirdColorCopyWith<$Res>? get color {
    if (_value.color == null) {
      return null;
    }

    return $BirdColorCopyWith<$Res>(_value.color!, (value) {
      return _then(_value.copyWith(color: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BirdCopyWith<$Res> implements $BirdCopyWith<$Res> {
  factory _$$_BirdCopyWith(_$_Bird value, $Res Function(_$_Bird) then) =
      __$$_BirdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? ringnumber,
      Species? species,
      BirdColor? color,
      String? cageId,
      Sex? sex,
      Origin? origin,
      DateTime? bornDate,
      DateTime? diedDate,
      DateTime? boughtDate,
      DateTime? sellDate,
      double? boughtPrice,
      double? sellPriceOffer,
      double? sellPriceReal,
      String? fatherRingnumber,
      String? motherRingnumber,
      String? partnerRingnumber,
      bool? isForSale});

  @override
  $SpeciesCopyWith<$Res>? get species;
  @override
  $BirdColorCopyWith<$Res>? get color;
}

/// @nodoc
class __$$_BirdCopyWithImpl<$Res> extends _$BirdCopyWithImpl<$Res, _$_Bird>
    implements _$$_BirdCopyWith<$Res> {
  __$$_BirdCopyWithImpl(_$_Bird _value, $Res Function(_$_Bird) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ringnumber = freezed,
    Object? species = freezed,
    Object? color = freezed,
    Object? cageId = freezed,
    Object? sex = freezed,
    Object? origin = freezed,
    Object? bornDate = freezed,
    Object? diedDate = freezed,
    Object? boughtDate = freezed,
    Object? sellDate = freezed,
    Object? boughtPrice = freezed,
    Object? sellPriceOffer = freezed,
    Object? sellPriceReal = freezed,
    Object? fatherRingnumber = freezed,
    Object? motherRingnumber = freezed,
    Object? partnerRingnumber = freezed,
    Object? isForSale = freezed,
  }) {
    return _then(_$_Bird(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      ringnumber: freezed == ringnumber
          ? _value.ringnumber
          : ringnumber // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Species?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as BirdColor?,
      cageId: freezed == cageId
          ? _value.cageId
          : cageId // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Origin?,
      bornDate: freezed == bornDate
          ? _value.bornDate
          : bornDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      diedDate: freezed == diedDate
          ? _value.diedDate
          : diedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      boughtDate: freezed == boughtDate
          ? _value.boughtDate
          : boughtDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sellDate: freezed == sellDate
          ? _value.sellDate
          : sellDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      boughtPrice: freezed == boughtPrice
          ? _value.boughtPrice
          : boughtPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      sellPriceOffer: freezed == sellPriceOffer
          ? _value.sellPriceOffer
          : sellPriceOffer // ignore: cast_nullable_to_non_nullable
              as double?,
      sellPriceReal: freezed == sellPriceReal
          ? _value.sellPriceReal
          : sellPriceReal // ignore: cast_nullable_to_non_nullable
              as double?,
      fatherRingnumber: freezed == fatherRingnumber
          ? _value.fatherRingnumber
          : fatherRingnumber // ignore: cast_nullable_to_non_nullable
              as String?,
      motherRingnumber: freezed == motherRingnumber
          ? _value.motherRingnumber
          : motherRingnumber // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerRingnumber: freezed == partnerRingnumber
          ? _value.partnerRingnumber
          : partnerRingnumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isForSale: freezed == isForSale
          ? _value.isForSale
          : isForSale // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Bird implements _Bird {
  _$_Bird(
      {required this.id,
      required this.ringnumber,
      required this.species,
      required this.color,
      required this.cageId,
      required this.sex,
      required this.origin,
      required this.bornDate,
      required this.diedDate,
      required this.boughtDate,
      required this.sellDate,
      required this.boughtPrice,
      required this.sellPriceOffer,
      required this.sellPriceReal,
      required this.fatherRingnumber,
      required this.motherRingnumber,
      required this.partnerRingnumber,
      required this.isForSale});

  @override
  final String? id;
  @override
  final String? ringnumber;
  @override
  final Species? species;
  @override
  final BirdColor? color;
  @override
  final String? cageId;
  @override
  final Sex? sex;
  @override
  final Origin? origin;
  @override
  final DateTime? bornDate;
  @override
  final DateTime? diedDate;
  @override
  final DateTime? boughtDate;
  @override
  final DateTime? sellDate;
  @override
  final double? boughtPrice;
  @override
  final double? sellPriceOffer;
  @override
  final double? sellPriceReal;
  @override
  final String? fatherRingnumber;
  @override
  final String? motherRingnumber;
  @override
  final String? partnerRingnumber;
  @override
  final bool? isForSale;

  @override
  String toString() {
    return 'Bird(id: $id, ringnumber: $ringnumber, species: $species, color: $color, cageId: $cageId, sex: $sex, origin: $origin, bornDate: $bornDate, diedDate: $diedDate, boughtDate: $boughtDate, sellDate: $sellDate, boughtPrice: $boughtPrice, sellPriceOffer: $sellPriceOffer, sellPriceReal: $sellPriceReal, fatherRingnumber: $fatherRingnumber, motherRingnumber: $motherRingnumber, partnerRingnumber: $partnerRingnumber, isForSale: $isForSale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bird &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ringnumber, ringnumber) ||
                other.ringnumber == ringnumber) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.cageId, cageId) || other.cageId == cageId) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.bornDate, bornDate) ||
                other.bornDate == bornDate) &&
            (identical(other.diedDate, diedDate) ||
                other.diedDate == diedDate) &&
            (identical(other.boughtDate, boughtDate) ||
                other.boughtDate == boughtDate) &&
            (identical(other.sellDate, sellDate) ||
                other.sellDate == sellDate) &&
            (identical(other.boughtPrice, boughtPrice) ||
                other.boughtPrice == boughtPrice) &&
            (identical(other.sellPriceOffer, sellPriceOffer) ||
                other.sellPriceOffer == sellPriceOffer) &&
            (identical(other.sellPriceReal, sellPriceReal) ||
                other.sellPriceReal == sellPriceReal) &&
            (identical(other.fatherRingnumber, fatherRingnumber) ||
                other.fatherRingnumber == fatherRingnumber) &&
            (identical(other.motherRingnumber, motherRingnumber) ||
                other.motherRingnumber == motherRingnumber) &&
            (identical(other.partnerRingnumber, partnerRingnumber) ||
                other.partnerRingnumber == partnerRingnumber) &&
            (identical(other.isForSale, isForSale) ||
                other.isForSale == isForSale));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      ringnumber,
      species,
      color,
      cageId,
      sex,
      origin,
      bornDate,
      diedDate,
      boughtDate,
      sellDate,
      boughtPrice,
      sellPriceOffer,
      sellPriceReal,
      fatherRingnumber,
      motherRingnumber,
      partnerRingnumber,
      isForSale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BirdCopyWith<_$_Bird> get copyWith =>
      __$$_BirdCopyWithImpl<_$_Bird>(this, _$identity);
}

abstract class _Bird implements Bird {
  factory _Bird(
      {required final String? id,
      required final String? ringnumber,
      required final Species? species,
      required final BirdColor? color,
      required final String? cageId,
      required final Sex? sex,
      required final Origin? origin,
      required final DateTime? bornDate,
      required final DateTime? diedDate,
      required final DateTime? boughtDate,
      required final DateTime? sellDate,
      required final double? boughtPrice,
      required final double? sellPriceOffer,
      required final double? sellPriceReal,
      required final String? fatherRingnumber,
      required final String? motherRingnumber,
      required final String? partnerRingnumber,
      required final bool? isForSale}) = _$_Bird;

  @override
  String? get id;
  @override
  String? get ringnumber;
  @override
  Species? get species;
  @override
  BirdColor? get color;
  @override
  String? get cageId;
  @override
  Sex? get sex;
  @override
  Origin? get origin;
  @override
  DateTime? get bornDate;
  @override
  DateTime? get diedDate;
  @override
  DateTime? get boughtDate;
  @override
  DateTime? get sellDate;
  @override
  double? get boughtPrice;
  @override
  double? get sellPriceOffer;
  @override
  double? get sellPriceReal;
  @override
  String? get fatherRingnumber;
  @override
  String? get motherRingnumber;
  @override
  String? get partnerRingnumber;
  @override
  bool? get isForSale;
  @override
  @JsonKey(ignore: true)
  _$$_BirdCopyWith<_$_Bird> get copyWith => throw _privateConstructorUsedError;
}
