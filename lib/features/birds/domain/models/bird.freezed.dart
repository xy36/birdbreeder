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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Bird {
  String get id => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;
  DateTime? get updated => throw _privateConstructorUsedError;
  String? get ringnumber => throw _privateConstructorUsedError;
  DateTime? get born => throw _privateConstructorUsedError;
  DateTime? get died => throw _privateConstructorUsedError;
  DateTime? get bought => throw _privateConstructorUsedError;
  DateTime? get sell => throw _privateConstructorUsedError;
  double? get boughtPrice => throw _privateConstructorUsedError;
  double? get sellPriceOffer => throw _privateConstructorUsedError;
  double? get sellPriceReal => throw _privateConstructorUsedError;
  Species? get species => throw _privateConstructorUsedError;
  BirdColor? get color => throw _privateConstructorUsedError;
  Cage? get cage => throw _privateConstructorUsedError;
  Bird? get father => throw _privateConstructorUsedError;
  Bird? get mother => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  bool? get sold => throw _privateConstructorUsedError;
  List<String> get children => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BirdCopyWith<Bird> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirdCopyWith<$Res> {
  factory $BirdCopyWith(Bird value, $Res Function(Bird) then) =
      _$BirdCopyWithImpl<$Res, Bird>;
  @useResult
  $Res call(
      {String id,
      DateTime? created,
      DateTime? updated,
      String? ringnumber,
      DateTime? born,
      DateTime? died,
      DateTime? bought,
      DateTime? sell,
      double? boughtPrice,
      double? sellPriceOffer,
      double? sellPriceReal,
      Species? species,
      BirdColor? color,
      Cage? cage,
      Bird? father,
      Bird? mother,
      Sex sex,
      bool? sold,
      List<String> children});

  $SpeciesCopyWith<$Res>? get species;
  $BirdColorCopyWith<$Res>? get color;
  $CageCopyWith<$Res>? get cage;
  $BirdCopyWith<$Res>? get father;
  $BirdCopyWith<$Res>? get mother;
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
    Object? id = null,
    Object? created = freezed,
    Object? updated = freezed,
    Object? ringnumber = freezed,
    Object? born = freezed,
    Object? died = freezed,
    Object? bought = freezed,
    Object? sell = freezed,
    Object? boughtPrice = freezed,
    Object? sellPriceOffer = freezed,
    Object? sellPriceReal = freezed,
    Object? species = freezed,
    Object? color = freezed,
    Object? cage = freezed,
    Object? father = freezed,
    Object? mother = freezed,
    Object? sex = null,
    Object? sold = freezed,
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ringnumber: freezed == ringnumber
          ? _value.ringnumber
          : ringnumber // ignore: cast_nullable_to_non_nullable
              as String?,
      born: freezed == born
          ? _value.born
          : born // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      died: freezed == died
          ? _value.died
          : died // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bought: freezed == bought
          ? _value.bought
          : bought // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sell: freezed == sell
          ? _value.sell
          : sell // ignore: cast_nullable_to_non_nullable
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
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Species?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as BirdColor?,
      cage: freezed == cage
          ? _value.cage
          : cage // ignore: cast_nullable_to_non_nullable
              as Cage?,
      father: freezed == father
          ? _value.father
          : father // ignore: cast_nullable_to_non_nullable
              as Bird?,
      mother: freezed == mother
          ? _value.mother
          : mother // ignore: cast_nullable_to_non_nullable
              as Bird?,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      sold: freezed == sold
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as bool?,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<String>,
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

  @override
  @pragma('vm:prefer-inline')
  $CageCopyWith<$Res>? get cage {
    if (_value.cage == null) {
      return null;
    }

    return $CageCopyWith<$Res>(_value.cage!, (value) {
      return _then(_value.copyWith(cage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BirdCopyWith<$Res>? get father {
    if (_value.father == null) {
      return null;
    }

    return $BirdCopyWith<$Res>(_value.father!, (value) {
      return _then(_value.copyWith(father: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BirdCopyWith<$Res>? get mother {
    if (_value.mother == null) {
      return null;
    }

    return $BirdCopyWith<$Res>(_value.mother!, (value) {
      return _then(_value.copyWith(mother: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BirdImplCopyWith<$Res> implements $BirdCopyWith<$Res> {
  factory _$$BirdImplCopyWith(
          _$BirdImpl value, $Res Function(_$BirdImpl) then) =
      __$$BirdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime? created,
      DateTime? updated,
      String? ringnumber,
      DateTime? born,
      DateTime? died,
      DateTime? bought,
      DateTime? sell,
      double? boughtPrice,
      double? sellPriceOffer,
      double? sellPriceReal,
      Species? species,
      BirdColor? color,
      Cage? cage,
      Bird? father,
      Bird? mother,
      Sex sex,
      bool? sold,
      List<String> children});

  @override
  $SpeciesCopyWith<$Res>? get species;
  @override
  $BirdColorCopyWith<$Res>? get color;
  @override
  $CageCopyWith<$Res>? get cage;
  @override
  $BirdCopyWith<$Res>? get father;
  @override
  $BirdCopyWith<$Res>? get mother;
}

/// @nodoc
class __$$BirdImplCopyWithImpl<$Res>
    extends _$BirdCopyWithImpl<$Res, _$BirdImpl>
    implements _$$BirdImplCopyWith<$Res> {
  __$$BirdImplCopyWithImpl(_$BirdImpl _value, $Res Function(_$BirdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = freezed,
    Object? updated = freezed,
    Object? ringnumber = freezed,
    Object? born = freezed,
    Object? died = freezed,
    Object? bought = freezed,
    Object? sell = freezed,
    Object? boughtPrice = freezed,
    Object? sellPriceOffer = freezed,
    Object? sellPriceReal = freezed,
    Object? species = freezed,
    Object? color = freezed,
    Object? cage = freezed,
    Object? father = freezed,
    Object? mother = freezed,
    Object? sex = null,
    Object? sold = freezed,
    Object? children = null,
  }) {
    return _then(_$BirdImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ringnumber: freezed == ringnumber
          ? _value.ringnumber
          : ringnumber // ignore: cast_nullable_to_non_nullable
              as String?,
      born: freezed == born
          ? _value.born
          : born // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      died: freezed == died
          ? _value.died
          : died // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bought: freezed == bought
          ? _value.bought
          : bought // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sell: freezed == sell
          ? _value.sell
          : sell // ignore: cast_nullable_to_non_nullable
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
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as Species?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as BirdColor?,
      cage: freezed == cage
          ? _value.cage
          : cage // ignore: cast_nullable_to_non_nullable
              as Cage?,
      father: freezed == father
          ? _value.father
          : father // ignore: cast_nullable_to_non_nullable
              as Bird?,
      mother: freezed == mother
          ? _value.mother
          : mother // ignore: cast_nullable_to_non_nullable
              as Bird?,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      sold: freezed == sold
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as bool?,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$BirdImpl implements _Bird {
  _$BirdImpl(
      {required this.id,
      this.created,
      this.updated,
      this.ringnumber,
      this.born,
      this.died,
      this.bought,
      this.sell,
      this.boughtPrice,
      this.sellPriceOffer,
      this.sellPriceReal,
      this.species,
      this.color,
      this.cage,
      this.father,
      this.mother,
      this.sex = Sex.unknown,
      this.sold,
      final List<String> children = const []})
      : _children = children;

  @override
  final String id;
  @override
  final DateTime? created;
  @override
  final DateTime? updated;
  @override
  final String? ringnumber;
  @override
  final DateTime? born;
  @override
  final DateTime? died;
  @override
  final DateTime? bought;
  @override
  final DateTime? sell;
  @override
  final double? boughtPrice;
  @override
  final double? sellPriceOffer;
  @override
  final double? sellPriceReal;
  @override
  final Species? species;
  @override
  final BirdColor? color;
  @override
  final Cage? cage;
  @override
  final Bird? father;
  @override
  final Bird? mother;
  @override
  @JsonKey()
  final Sex sex;
  @override
  final bool? sold;
  final List<String> _children;
  @override
  @JsonKey()
  List<String> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'Bird(id: $id, created: $created, updated: $updated, ringnumber: $ringnumber, born: $born, died: $died, bought: $bought, sell: $sell, boughtPrice: $boughtPrice, sellPriceOffer: $sellPriceOffer, sellPriceReal: $sellPriceReal, species: $species, color: $color, cage: $cage, father: $father, mother: $mother, sex: $sex, sold: $sold, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.ringnumber, ringnumber) ||
                other.ringnumber == ringnumber) &&
            (identical(other.born, born) || other.born == born) &&
            (identical(other.died, died) || other.died == died) &&
            (identical(other.bought, bought) || other.bought == bought) &&
            (identical(other.sell, sell) || other.sell == sell) &&
            (identical(other.boughtPrice, boughtPrice) ||
                other.boughtPrice == boughtPrice) &&
            (identical(other.sellPriceOffer, sellPriceOffer) ||
                other.sellPriceOffer == sellPriceOffer) &&
            (identical(other.sellPriceReal, sellPriceReal) ||
                other.sellPriceReal == sellPriceReal) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.cage, cage) || other.cage == cage) &&
            (identical(other.father, father) || other.father == father) &&
            (identical(other.mother, mother) || other.mother == mother) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.sold, sold) || other.sold == sold) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        created,
        updated,
        ringnumber,
        born,
        died,
        bought,
        sell,
        boughtPrice,
        sellPriceOffer,
        sellPriceReal,
        species,
        color,
        cage,
        father,
        mother,
        sex,
        sold,
        const DeepCollectionEquality().hash(_children)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdImplCopyWith<_$BirdImpl> get copyWith =>
      __$$BirdImplCopyWithImpl<_$BirdImpl>(this, _$identity);
}

abstract class _Bird implements Bird {
  factory _Bird(
      {required final String id,
      final DateTime? created,
      final DateTime? updated,
      final String? ringnumber,
      final DateTime? born,
      final DateTime? died,
      final DateTime? bought,
      final DateTime? sell,
      final double? boughtPrice,
      final double? sellPriceOffer,
      final double? sellPriceReal,
      final Species? species,
      final BirdColor? color,
      final Cage? cage,
      final Bird? father,
      final Bird? mother,
      final Sex sex,
      final bool? sold,
      final List<String> children}) = _$BirdImpl;

  @override
  String get id;
  @override
  DateTime? get created;
  @override
  DateTime? get updated;
  @override
  String? get ringnumber;
  @override
  DateTime? get born;
  @override
  DateTime? get died;
  @override
  DateTime? get bought;
  @override
  DateTime? get sell;
  @override
  double? get boughtPrice;
  @override
  double? get sellPriceOffer;
  @override
  double? get sellPriceReal;
  @override
  Species? get species;
  @override
  BirdColor? get color;
  @override
  Cage? get cage;
  @override
  Bird? get father;
  @override
  Bird? get mother;
  @override
  Sex get sex;
  @override
  bool? get sold;
  @override
  List<String> get children;
  @override
  @JsonKey(ignore: true)
  _$$BirdImplCopyWith<_$BirdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
