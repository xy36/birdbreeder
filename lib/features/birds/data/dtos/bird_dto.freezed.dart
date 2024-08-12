// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bird_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BirdDto _$BirdDtoFromJson(Map<String, dynamic> json) {
  return _BirdDto.fromJson(json);
}

/// @nodoc
mixin _$BirdDto {
  String get id => throw _privateConstructorUsedError;
  String? get collectionId => throw _privateConstructorUsedError;
  String? get collectionName => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;
  DateTime? get updated => throw _privateConstructorUsedError;
  @StringNullEmptyConverter()
  String? get ringnumber => throw _privateConstructorUsedError;
  @DateTimeNullEmptyConverter()
  DateTime? get born => throw _privateConstructorUsedError;
  @DateTimeNullEmptyConverter()
  DateTime? get died => throw _privateConstructorUsedError;
  @DateTimeNullEmptyConverter()
  DateTime? get sell => throw _privateConstructorUsedError;
  @DateTimeNullEmptyConverter()
  DateTime? get bought => throw _privateConstructorUsedError;
  @StringNullEmptyConverter()
  String? get species => throw _privateConstructorUsedError;
  @StringNullEmptyConverter()
  String? get color => throw _privateConstructorUsedError;
  @StringNullEmptyConverter()
  String? get cage => throw _privateConstructorUsedError;
  @StringNullEmptyConverter()
  String? get father => throw _privateConstructorUsedError;
  @StringNullEmptyConverter()
  String? get mother => throw _privateConstructorUsedError;
  @JsonKey(name: 'bought_price')
  double? get boughtPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'sell_price_offer')
  double? get sellPriceOffer => throw _privateConstructorUsedError;
  @JsonKey(name: 'sell_price_real')
  double? get sellPriceReal => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  ExpandDto? get expand => throw _privateConstructorUsedError;
  bool? get sold => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  List<String> get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BirdDtoCopyWith<BirdDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirdDtoCopyWith<$Res> {
  factory $BirdDtoCopyWith(BirdDto value, $Res Function(BirdDto) then) =
      _$BirdDtoCopyWithImpl<$Res, BirdDto>;
  @useResult
  $Res call(
      {String id,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated,
      @StringNullEmptyConverter() String? ringnumber,
      @DateTimeNullEmptyConverter() DateTime? born,
      @DateTimeNullEmptyConverter() DateTime? died,
      @DateTimeNullEmptyConverter() DateTime? sell,
      @DateTimeNullEmptyConverter() DateTime? bought,
      @StringNullEmptyConverter() String? species,
      @StringNullEmptyConverter() String? color,
      @StringNullEmptyConverter() String? cage,
      @StringNullEmptyConverter() String? father,
      @StringNullEmptyConverter() String? mother,
      @JsonKey(name: 'bought_price') double? boughtPrice,
      @JsonKey(name: 'sell_price_offer') double? sellPriceOffer,
      @JsonKey(name: 'sell_price_real') double? sellPriceReal,
      Sex sex,
      ExpandDto? expand,
      bool? sold,
      String? user,
      List<String> children});

  $ExpandDtoCopyWith<$Res>? get expand;
}

/// @nodoc
class _$BirdDtoCopyWithImpl<$Res, $Val extends BirdDto>
    implements $BirdDtoCopyWith<$Res> {
  _$BirdDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? ringnumber = freezed,
    Object? born = freezed,
    Object? died = freezed,
    Object? sell = freezed,
    Object? bought = freezed,
    Object? species = freezed,
    Object? color = freezed,
    Object? cage = freezed,
    Object? father = freezed,
    Object? mother = freezed,
    Object? boughtPrice = freezed,
    Object? sellPriceOffer = freezed,
    Object? sellPriceReal = freezed,
    Object? sex = null,
    Object? expand = freezed,
    Object? sold = freezed,
    Object? user = freezed,
    Object? children = null,
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
      sell: freezed == sell
          ? _value.sell
          : sell // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bought: freezed == bought
          ? _value.bought
          : bought // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      cage: freezed == cage
          ? _value.cage
          : cage // ignore: cast_nullable_to_non_nullable
              as String?,
      father: freezed == father
          ? _value.father
          : father // ignore: cast_nullable_to_non_nullable
              as String?,
      mother: freezed == mother
          ? _value.mother
          : mother // ignore: cast_nullable_to_non_nullable
              as String?,
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
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      expand: freezed == expand
          ? _value.expand
          : expand // ignore: cast_nullable_to_non_nullable
              as ExpandDto?,
      sold: freezed == sold
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpandDtoCopyWith<$Res>? get expand {
    if (_value.expand == null) {
      return null;
    }

    return $ExpandDtoCopyWith<$Res>(_value.expand!, (value) {
      return _then(_value.copyWith(expand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BirdDtoImplCopyWith<$Res> implements $BirdDtoCopyWith<$Res> {
  factory _$$BirdDtoImplCopyWith(
          _$BirdDtoImpl value, $Res Function(_$BirdDtoImpl) then) =
      __$$BirdDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated,
      @StringNullEmptyConverter() String? ringnumber,
      @DateTimeNullEmptyConverter() DateTime? born,
      @DateTimeNullEmptyConverter() DateTime? died,
      @DateTimeNullEmptyConverter() DateTime? sell,
      @DateTimeNullEmptyConverter() DateTime? bought,
      @StringNullEmptyConverter() String? species,
      @StringNullEmptyConverter() String? color,
      @StringNullEmptyConverter() String? cage,
      @StringNullEmptyConverter() String? father,
      @StringNullEmptyConverter() String? mother,
      @JsonKey(name: 'bought_price') double? boughtPrice,
      @JsonKey(name: 'sell_price_offer') double? sellPriceOffer,
      @JsonKey(name: 'sell_price_real') double? sellPriceReal,
      Sex sex,
      ExpandDto? expand,
      bool? sold,
      String? user,
      List<String> children});

  @override
  $ExpandDtoCopyWith<$Res>? get expand;
}

/// @nodoc
class __$$BirdDtoImplCopyWithImpl<$Res>
    extends _$BirdDtoCopyWithImpl<$Res, _$BirdDtoImpl>
    implements _$$BirdDtoImplCopyWith<$Res> {
  __$$BirdDtoImplCopyWithImpl(
      _$BirdDtoImpl _value, $Res Function(_$BirdDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? ringnumber = freezed,
    Object? born = freezed,
    Object? died = freezed,
    Object? sell = freezed,
    Object? bought = freezed,
    Object? species = freezed,
    Object? color = freezed,
    Object? cage = freezed,
    Object? father = freezed,
    Object? mother = freezed,
    Object? boughtPrice = freezed,
    Object? sellPriceOffer = freezed,
    Object? sellPriceReal = freezed,
    Object? sex = null,
    Object? expand = freezed,
    Object? sold = freezed,
    Object? user = freezed,
    Object? children = null,
  }) {
    return _then(_$BirdDtoImpl(
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
      sell: freezed == sell
          ? _value.sell
          : sell // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bought: freezed == bought
          ? _value.bought
          : bought // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      cage: freezed == cage
          ? _value.cage
          : cage // ignore: cast_nullable_to_non_nullable
              as String?,
      father: freezed == father
          ? _value.father
          : father // ignore: cast_nullable_to_non_nullable
              as String?,
      mother: freezed == mother
          ? _value.mother
          : mother // ignore: cast_nullable_to_non_nullable
              as String?,
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
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      expand: freezed == expand
          ? _value.expand
          : expand // ignore: cast_nullable_to_non_nullable
              as ExpandDto?,
      sold: freezed == sold
          ? _value.sold
          : sold // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BirdDtoImpl implements _BirdDto {
  _$BirdDtoImpl(
      {required this.id,
      this.collectionId,
      this.collectionName,
      this.created,
      this.updated,
      @StringNullEmptyConverter() this.ringnumber,
      @DateTimeNullEmptyConverter() this.born,
      @DateTimeNullEmptyConverter() this.died,
      @DateTimeNullEmptyConverter() this.sell,
      @DateTimeNullEmptyConverter() this.bought,
      @StringNullEmptyConverter() this.species,
      @StringNullEmptyConverter() this.color,
      @StringNullEmptyConverter() this.cage,
      @StringNullEmptyConverter() this.father,
      @StringNullEmptyConverter() this.mother,
      @JsonKey(name: 'bought_price') this.boughtPrice,
      @JsonKey(name: 'sell_price_offer') this.sellPriceOffer,
      @JsonKey(name: 'sell_price_real') this.sellPriceReal,
      this.sex = Sex.unknown,
      this.expand,
      this.sold,
      this.user,
      final List<String> children = const []})
      : _children = children;

  factory _$BirdDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BirdDtoImplFromJson(json);

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
  @StringNullEmptyConverter()
  final String? ringnumber;
  @override
  @DateTimeNullEmptyConverter()
  final DateTime? born;
  @override
  @DateTimeNullEmptyConverter()
  final DateTime? died;
  @override
  @DateTimeNullEmptyConverter()
  final DateTime? sell;
  @override
  @DateTimeNullEmptyConverter()
  final DateTime? bought;
  @override
  @StringNullEmptyConverter()
  final String? species;
  @override
  @StringNullEmptyConverter()
  final String? color;
  @override
  @StringNullEmptyConverter()
  final String? cage;
  @override
  @StringNullEmptyConverter()
  final String? father;
  @override
  @StringNullEmptyConverter()
  final String? mother;
  @override
  @JsonKey(name: 'bought_price')
  final double? boughtPrice;
  @override
  @JsonKey(name: 'sell_price_offer')
  final double? sellPriceOffer;
  @override
  @JsonKey(name: 'sell_price_real')
  final double? sellPriceReal;
  @override
  @JsonKey()
  final Sex sex;
  @override
  final ExpandDto? expand;
  @override
  final bool? sold;
  @override
  final String? user;
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
    return 'BirdDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, ringnumber: $ringnumber, born: $born, died: $died, sell: $sell, bought: $bought, species: $species, color: $color, cage: $cage, father: $father, mother: $mother, boughtPrice: $boughtPrice, sellPriceOffer: $sellPriceOffer, sellPriceReal: $sellPriceReal, sex: $sex, expand: $expand, sold: $sold, user: $user, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.ringnumber, ringnumber) ||
                other.ringnumber == ringnumber) &&
            (identical(other.born, born) || other.born == born) &&
            (identical(other.died, died) || other.died == died) &&
            (identical(other.sell, sell) || other.sell == sell) &&
            (identical(other.bought, bought) || other.bought == bought) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.cage, cage) || other.cage == cage) &&
            (identical(other.father, father) || other.father == father) &&
            (identical(other.mother, mother) || other.mother == mother) &&
            (identical(other.boughtPrice, boughtPrice) ||
                other.boughtPrice == boughtPrice) &&
            (identical(other.sellPriceOffer, sellPriceOffer) ||
                other.sellPriceOffer == sellPriceOffer) &&
            (identical(other.sellPriceReal, sellPriceReal) ||
                other.sellPriceReal == sellPriceReal) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.expand, expand) || other.expand == expand) &&
            (identical(other.sold, sold) || other.sold == sold) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        collectionId,
        collectionName,
        created,
        updated,
        ringnumber,
        born,
        died,
        sell,
        bought,
        species,
        color,
        cage,
        father,
        mother,
        boughtPrice,
        sellPriceOffer,
        sellPriceReal,
        sex,
        expand,
        sold,
        user,
        const DeepCollectionEquality().hash(_children)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdDtoImplCopyWith<_$BirdDtoImpl> get copyWith =>
      __$$BirdDtoImplCopyWithImpl<_$BirdDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BirdDtoImplToJson(
      this,
    );
  }
}

abstract class _BirdDto implements BirdDto {
  factory _BirdDto(
      {required final String id,
      final String? collectionId,
      final String? collectionName,
      final DateTime? created,
      final DateTime? updated,
      @StringNullEmptyConverter() final String? ringnumber,
      @DateTimeNullEmptyConverter() final DateTime? born,
      @DateTimeNullEmptyConverter() final DateTime? died,
      @DateTimeNullEmptyConverter() final DateTime? sell,
      @DateTimeNullEmptyConverter() final DateTime? bought,
      @StringNullEmptyConverter() final String? species,
      @StringNullEmptyConverter() final String? color,
      @StringNullEmptyConverter() final String? cage,
      @StringNullEmptyConverter() final String? father,
      @StringNullEmptyConverter() final String? mother,
      @JsonKey(name: 'bought_price') final double? boughtPrice,
      @JsonKey(name: 'sell_price_offer') final double? sellPriceOffer,
      @JsonKey(name: 'sell_price_real') final double? sellPriceReal,
      final Sex sex,
      final ExpandDto? expand,
      final bool? sold,
      final String? user,
      final List<String> children}) = _$BirdDtoImpl;

  factory _BirdDto.fromJson(Map<String, dynamic> json) = _$BirdDtoImpl.fromJson;

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
  @StringNullEmptyConverter()
  String? get ringnumber;
  @override
  @DateTimeNullEmptyConverter()
  DateTime? get born;
  @override
  @DateTimeNullEmptyConverter()
  DateTime? get died;
  @override
  @DateTimeNullEmptyConverter()
  DateTime? get sell;
  @override
  @DateTimeNullEmptyConverter()
  DateTime? get bought;
  @override
  @StringNullEmptyConverter()
  String? get species;
  @override
  @StringNullEmptyConverter()
  String? get color;
  @override
  @StringNullEmptyConverter()
  String? get cage;
  @override
  @StringNullEmptyConverter()
  String? get father;
  @override
  @StringNullEmptyConverter()
  String? get mother;
  @override
  @JsonKey(name: 'bought_price')
  double? get boughtPrice;
  @override
  @JsonKey(name: 'sell_price_offer')
  double? get sellPriceOffer;
  @override
  @JsonKey(name: 'sell_price_real')
  double? get sellPriceReal;
  @override
  Sex get sex;
  @override
  ExpandDto? get expand;
  @override
  bool? get sold;
  @override
  String? get user;
  @override
  List<String> get children;
  @override
  @JsonKey(ignore: true)
  _$$BirdDtoImplCopyWith<_$BirdDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
