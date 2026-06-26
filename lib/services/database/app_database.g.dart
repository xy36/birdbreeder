// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $BirdsTable extends Birds with TableInfo<$BirdsTable, Bird> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BirdsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _ringnumberMeta =
      const VerificationMeta('ringnumber');
  @override
  late final GeneratedColumn<String> ringnumber = GeneratedColumn<String>(
      'ringnumber', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _speciesMeta =
      const VerificationMeta('species');
  @override
  late final GeneratedColumn<String> species = GeneratedColumn<String>(
      'species', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
      'color', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _sexMeta = const VerificationMeta('sex');
  @override
  late final GeneratedColumn<String> sex = GeneratedColumn<String>(
      'sex', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('unknown'));
  static const VerificationMeta _fatherMeta = const VerificationMeta('father');
  @override
  late final GeneratedColumn<String> father = GeneratedColumn<String>(
      'father', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _motherMeta = const VerificationMeta('mother');
  @override
  late final GeneratedColumn<String> mother = GeneratedColumn<String>(
      'mother', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cageMeta = const VerificationMeta('cage');
  @override
  late final GeneratedColumn<String> cage = GeneratedColumn<String>(
      'cage', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _broodMeta = const VerificationMeta('brood');
  @override
  late final GeneratedColumn<String> brood = GeneratedColumn<String>(
      'brood', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _laidAtMeta = const VerificationMeta('laidAt');
  @override
  late final GeneratedColumn<DateTime> laidAt = GeneratedColumn<DateTime>(
      'laid_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _hatchedAtMeta =
      const VerificationMeta('hatchedAt');
  @override
  late final GeneratedColumn<DateTime> hatchedAt = GeneratedColumn<DateTime>(
      'hatched_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _fledgedAtMeta =
      const VerificationMeta('fledgedAt');
  @override
  late final GeneratedColumn<DateTime> fledgedAt = GeneratedColumn<DateTime>(
      'fledged_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _bornAtMeta = const VerificationMeta('bornAt');
  @override
  late final GeneratedColumn<DateTime> bornAt = GeneratedColumn<DateTime>(
      'born_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _diedAtMeta = const VerificationMeta('diedAt');
  @override
  late final GeneratedColumn<DateTime> diedAt = GeneratedColumn<DateTime>(
      'died_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _saleStatusMeta =
      const VerificationMeta('saleStatus');
  @override
  late final GeneratedColumn<String> saleStatus = GeneratedColumn<String>(
      'sale_status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('notForSale'));
  static const VerificationMeta _listedAtMeta =
      const VerificationMeta('listedAt');
  @override
  late final GeneratedColumn<DateTime> listedAt = GeneratedColumn<DateTime>(
      'listed_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _soldAtMeta = const VerificationMeta('soldAt');
  @override
  late final GeneratedColumn<DateTime> soldAt = GeneratedColumn<DateTime>(
      'sold_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _askingPriceMeta =
      const VerificationMeta('askingPrice');
  @override
  late final GeneratedColumn<double> askingPrice = GeneratedColumn<double>(
      'asking_price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _finalPriceMeta =
      const VerificationMeta('finalPrice');
  @override
  late final GeneratedColumn<double> finalPrice = GeneratedColumn<double>(
      'final_price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _boughtAtMeta =
      const VerificationMeta('boughtAt');
  @override
  late final GeneratedColumn<DateTime> boughtAt = GeneratedColumn<DateTime>(
      'bought_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _boughtPriceMeta =
      const VerificationMeta('boughtPrice');
  @override
  late final GeneratedColumn<double> boughtPrice = GeneratedColumn<double>(
      'bought_price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _boughtFromMeta =
      const VerificationMeta('boughtFrom');
  @override
  late final GeneratedColumn<String> boughtFrom = GeneratedColumn<String>(
      'bought_from', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _soldToMeta = const VerificationMeta('soldTo');
  @override
  late final GeneratedColumn<String> soldTo = GeneratedColumn<String>(
      'sold_to', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _ownerMeta = const VerificationMeta('owner');
  @override
  late final GeneratedColumn<String> owner = GeneratedColumn<String>(
      'owner', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _breederMeta =
      const VerificationMeta('breeder');
  @override
  late final GeneratedColumn<String> breeder = GeneratedColumn<String>(
      'breeder', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _unknownLifecycleMeta =
      const VerificationMeta('unknownLifecycle');
  @override
  late final GeneratedColumn<bool> unknownLifecycle = GeneratedColumn<bool>(
      'unknown_lifecycle', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("unknown_lifecycle" IN (0, 1))'));
  static const VerificationMeta _userMeta = const VerificationMeta('user');
  @override
  late final GeneratedColumn<String> user = GeneratedColumn<String>(
      'user', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdMeta =
      const VerificationMeta('created');
  @override
  late final GeneratedColumn<DateTime> created = GeneratedColumn<DateTime>(
      'created', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _updatedMeta =
      const VerificationMeta('updated');
  @override
  late final GeneratedColumn<DateTime> updated = GeneratedColumn<DateTime>(
      'updated', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        ringnumber,
        species,
        color,
        sex,
        father,
        mother,
        cage,
        brood,
        laidAt,
        hatchedAt,
        fledgedAt,
        bornAt,
        diedAt,
        saleStatus,
        listedAt,
        soldAt,
        askingPrice,
        finalPrice,
        boughtAt,
        boughtPrice,
        notes,
        boughtFrom,
        soldTo,
        owner,
        breeder,
        unknownLifecycle,
        user,
        created,
        updated
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'birds';
  @override
  VerificationContext validateIntegrity(Insertable<Bird> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('ringnumber')) {
      context.handle(
          _ringnumberMeta,
          ringnumber.isAcceptableOrUnknown(
              data['ringnumber']!, _ringnumberMeta));
    }
    if (data.containsKey('species')) {
      context.handle(_speciesMeta,
          species.isAcceptableOrUnknown(data['species']!, _speciesMeta));
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    }
    if (data.containsKey('sex')) {
      context.handle(
          _sexMeta, sex.isAcceptableOrUnknown(data['sex']!, _sexMeta));
    }
    if (data.containsKey('father')) {
      context.handle(_fatherMeta,
          father.isAcceptableOrUnknown(data['father']!, _fatherMeta));
    }
    if (data.containsKey('mother')) {
      context.handle(_motherMeta,
          mother.isAcceptableOrUnknown(data['mother']!, _motherMeta));
    }
    if (data.containsKey('cage')) {
      context.handle(
          _cageMeta, cage.isAcceptableOrUnknown(data['cage']!, _cageMeta));
    }
    if (data.containsKey('brood')) {
      context.handle(
          _broodMeta, brood.isAcceptableOrUnknown(data['brood']!, _broodMeta));
    }
    if (data.containsKey('laid_at')) {
      context.handle(_laidAtMeta,
          laidAt.isAcceptableOrUnknown(data['laid_at']!, _laidAtMeta));
    }
    if (data.containsKey('hatched_at')) {
      context.handle(_hatchedAtMeta,
          hatchedAt.isAcceptableOrUnknown(data['hatched_at']!, _hatchedAtMeta));
    }
    if (data.containsKey('fledged_at')) {
      context.handle(_fledgedAtMeta,
          fledgedAt.isAcceptableOrUnknown(data['fledged_at']!, _fledgedAtMeta));
    }
    if (data.containsKey('born_at')) {
      context.handle(_bornAtMeta,
          bornAt.isAcceptableOrUnknown(data['born_at']!, _bornAtMeta));
    }
    if (data.containsKey('died_at')) {
      context.handle(_diedAtMeta,
          diedAt.isAcceptableOrUnknown(data['died_at']!, _diedAtMeta));
    }
    if (data.containsKey('sale_status')) {
      context.handle(
          _saleStatusMeta,
          saleStatus.isAcceptableOrUnknown(
              data['sale_status']!, _saleStatusMeta));
    }
    if (data.containsKey('listed_at')) {
      context.handle(_listedAtMeta,
          listedAt.isAcceptableOrUnknown(data['listed_at']!, _listedAtMeta));
    }
    if (data.containsKey('sold_at')) {
      context.handle(_soldAtMeta,
          soldAt.isAcceptableOrUnknown(data['sold_at']!, _soldAtMeta));
    }
    if (data.containsKey('asking_price')) {
      context.handle(
          _askingPriceMeta,
          askingPrice.isAcceptableOrUnknown(
              data['asking_price']!, _askingPriceMeta));
    }
    if (data.containsKey('final_price')) {
      context.handle(
          _finalPriceMeta,
          finalPrice.isAcceptableOrUnknown(
              data['final_price']!, _finalPriceMeta));
    }
    if (data.containsKey('bought_at')) {
      context.handle(_boughtAtMeta,
          boughtAt.isAcceptableOrUnknown(data['bought_at']!, _boughtAtMeta));
    }
    if (data.containsKey('bought_price')) {
      context.handle(
          _boughtPriceMeta,
          boughtPrice.isAcceptableOrUnknown(
              data['bought_price']!, _boughtPriceMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('bought_from')) {
      context.handle(
          _boughtFromMeta,
          boughtFrom.isAcceptableOrUnknown(
              data['bought_from']!, _boughtFromMeta));
    }
    if (data.containsKey('sold_to')) {
      context.handle(_soldToMeta,
          soldTo.isAcceptableOrUnknown(data['sold_to']!, _soldToMeta));
    }
    if (data.containsKey('owner')) {
      context.handle(
          _ownerMeta, owner.isAcceptableOrUnknown(data['owner']!, _ownerMeta));
    }
    if (data.containsKey('breeder')) {
      context.handle(_breederMeta,
          breeder.isAcceptableOrUnknown(data['breeder']!, _breederMeta));
    }
    if (data.containsKey('unknown_lifecycle')) {
      context.handle(
          _unknownLifecycleMeta,
          unknownLifecycle.isAcceptableOrUnknown(
              data['unknown_lifecycle']!, _unknownLifecycleMeta));
    }
    if (data.containsKey('user')) {
      context.handle(
          _userMeta, user.isAcceptableOrUnknown(data['user']!, _userMeta));
    }
    if (data.containsKey('created')) {
      context.handle(_createdMeta,
          created.isAcceptableOrUnknown(data['created']!, _createdMeta));
    }
    if (data.containsKey('updated')) {
      context.handle(_updatedMeta,
          updated.isAcceptableOrUnknown(data['updated']!, _updatedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Bird map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Bird(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      ringnumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ringnumber']),
      species: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}species']),
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color']),
      sex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sex'])!,
      father: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}father']),
      mother: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mother']),
      cage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cage']),
      brood: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}brood']),
      laidAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}laid_at']),
      hatchedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}hatched_at']),
      fledgedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}fledged_at']),
      bornAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}born_at']),
      diedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}died_at']),
      saleStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sale_status'])!,
      listedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}listed_at']),
      soldAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}sold_at']),
      askingPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}asking_price']),
      finalPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}final_price']),
      boughtAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}bought_at']),
      boughtPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}bought_price']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      boughtFrom: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bought_from']),
      soldTo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sold_to']),
      owner: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}owner']),
      breeder: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}breeder']),
      unknownLifecycle: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}unknown_lifecycle']),
      user: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user']),
      created: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created']),
      updated: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated']),
    );
  }

  @override
  $BirdsTable createAlias(String alias) {
    return $BirdsTable(attachedDatabase, alias);
  }
}

class Bird extends DataClass implements Insertable<Bird> {
  final String id;
  final String? ringnumber;
  final String? species;
  final String? color;
  final String sex;
  final String? father;
  final String? mother;
  final String? cage;
  final String? brood;
  final DateTime? laidAt;
  final DateTime? hatchedAt;
  final DateTime? fledgedAt;
  final DateTime? bornAt;
  final DateTime? diedAt;
  final String saleStatus;
  final DateTime? listedAt;
  final DateTime? soldAt;
  final double? askingPrice;
  final double? finalPrice;
  final DateTime? boughtAt;
  final double? boughtPrice;
  final String? notes;
  final String? boughtFrom;
  final String? soldTo;
  final String? owner;
  final String? breeder;
  final bool? unknownLifecycle;
  final String? user;
  final DateTime? created;
  final DateTime? updated;
  const Bird(
      {required this.id,
      this.ringnumber,
      this.species,
      this.color,
      required this.sex,
      this.father,
      this.mother,
      this.cage,
      this.brood,
      this.laidAt,
      this.hatchedAt,
      this.fledgedAt,
      this.bornAt,
      this.diedAt,
      required this.saleStatus,
      this.listedAt,
      this.soldAt,
      this.askingPrice,
      this.finalPrice,
      this.boughtAt,
      this.boughtPrice,
      this.notes,
      this.boughtFrom,
      this.soldTo,
      this.owner,
      this.breeder,
      this.unknownLifecycle,
      this.user,
      this.created,
      this.updated});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || ringnumber != null) {
      map['ringnumber'] = Variable<String>(ringnumber);
    }
    if (!nullToAbsent || species != null) {
      map['species'] = Variable<String>(species);
    }
    if (!nullToAbsent || color != null) {
      map['color'] = Variable<String>(color);
    }
    map['sex'] = Variable<String>(sex);
    if (!nullToAbsent || father != null) {
      map['father'] = Variable<String>(father);
    }
    if (!nullToAbsent || mother != null) {
      map['mother'] = Variable<String>(mother);
    }
    if (!nullToAbsent || cage != null) {
      map['cage'] = Variable<String>(cage);
    }
    if (!nullToAbsent || brood != null) {
      map['brood'] = Variable<String>(brood);
    }
    if (!nullToAbsent || laidAt != null) {
      map['laid_at'] = Variable<DateTime>(laidAt);
    }
    if (!nullToAbsent || hatchedAt != null) {
      map['hatched_at'] = Variable<DateTime>(hatchedAt);
    }
    if (!nullToAbsent || fledgedAt != null) {
      map['fledged_at'] = Variable<DateTime>(fledgedAt);
    }
    if (!nullToAbsent || bornAt != null) {
      map['born_at'] = Variable<DateTime>(bornAt);
    }
    if (!nullToAbsent || diedAt != null) {
      map['died_at'] = Variable<DateTime>(diedAt);
    }
    map['sale_status'] = Variable<String>(saleStatus);
    if (!nullToAbsent || listedAt != null) {
      map['listed_at'] = Variable<DateTime>(listedAt);
    }
    if (!nullToAbsent || soldAt != null) {
      map['sold_at'] = Variable<DateTime>(soldAt);
    }
    if (!nullToAbsent || askingPrice != null) {
      map['asking_price'] = Variable<double>(askingPrice);
    }
    if (!nullToAbsent || finalPrice != null) {
      map['final_price'] = Variable<double>(finalPrice);
    }
    if (!nullToAbsent || boughtAt != null) {
      map['bought_at'] = Variable<DateTime>(boughtAt);
    }
    if (!nullToAbsent || boughtPrice != null) {
      map['bought_price'] = Variable<double>(boughtPrice);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    if (!nullToAbsent || boughtFrom != null) {
      map['bought_from'] = Variable<String>(boughtFrom);
    }
    if (!nullToAbsent || soldTo != null) {
      map['sold_to'] = Variable<String>(soldTo);
    }
    if (!nullToAbsent || owner != null) {
      map['owner'] = Variable<String>(owner);
    }
    if (!nullToAbsent || breeder != null) {
      map['breeder'] = Variable<String>(breeder);
    }
    if (!nullToAbsent || unknownLifecycle != null) {
      map['unknown_lifecycle'] = Variable<bool>(unknownLifecycle);
    }
    if (!nullToAbsent || user != null) {
      map['user'] = Variable<String>(user);
    }
    if (!nullToAbsent || created != null) {
      map['created'] = Variable<DateTime>(created);
    }
    if (!nullToAbsent || updated != null) {
      map['updated'] = Variable<DateTime>(updated);
    }
    return map;
  }

  BirdsCompanion toCompanion(bool nullToAbsent) {
    return BirdsCompanion(
      id: Value(id),
      ringnumber: ringnumber == null && nullToAbsent
          ? const Value.absent()
          : Value(ringnumber),
      species: species == null && nullToAbsent
          ? const Value.absent()
          : Value(species),
      color:
          color == null && nullToAbsent ? const Value.absent() : Value(color),
      sex: Value(sex),
      father:
          father == null && nullToAbsent ? const Value.absent() : Value(father),
      mother:
          mother == null && nullToAbsent ? const Value.absent() : Value(mother),
      cage: cage == null && nullToAbsent ? const Value.absent() : Value(cage),
      brood:
          brood == null && nullToAbsent ? const Value.absent() : Value(brood),
      laidAt:
          laidAt == null && nullToAbsent ? const Value.absent() : Value(laidAt),
      hatchedAt: hatchedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(hatchedAt),
      fledgedAt: fledgedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(fledgedAt),
      bornAt:
          bornAt == null && nullToAbsent ? const Value.absent() : Value(bornAt),
      diedAt:
          diedAt == null && nullToAbsent ? const Value.absent() : Value(diedAt),
      saleStatus: Value(saleStatus),
      listedAt: listedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(listedAt),
      soldAt:
          soldAt == null && nullToAbsent ? const Value.absent() : Value(soldAt),
      askingPrice: askingPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(askingPrice),
      finalPrice: finalPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(finalPrice),
      boughtAt: boughtAt == null && nullToAbsent
          ? const Value.absent()
          : Value(boughtAt),
      boughtPrice: boughtPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(boughtPrice),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      boughtFrom: boughtFrom == null && nullToAbsent
          ? const Value.absent()
          : Value(boughtFrom),
      soldTo:
          soldTo == null && nullToAbsent ? const Value.absent() : Value(soldTo),
      owner:
          owner == null && nullToAbsent ? const Value.absent() : Value(owner),
      breeder: breeder == null && nullToAbsent
          ? const Value.absent()
          : Value(breeder),
      unknownLifecycle: unknownLifecycle == null && nullToAbsent
          ? const Value.absent()
          : Value(unknownLifecycle),
      user: user == null && nullToAbsent ? const Value.absent() : Value(user),
      created: created == null && nullToAbsent
          ? const Value.absent()
          : Value(created),
      updated: updated == null && nullToAbsent
          ? const Value.absent()
          : Value(updated),
    );
  }

  factory Bird.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Bird(
      id: serializer.fromJson<String>(json['id']),
      ringnumber: serializer.fromJson<String?>(json['ringnumber']),
      species: serializer.fromJson<String?>(json['species']),
      color: serializer.fromJson<String?>(json['color']),
      sex: serializer.fromJson<String>(json['sex']),
      father: serializer.fromJson<String?>(json['father']),
      mother: serializer.fromJson<String?>(json['mother']),
      cage: serializer.fromJson<String?>(json['cage']),
      brood: serializer.fromJson<String?>(json['brood']),
      laidAt: serializer.fromJson<DateTime?>(json['laidAt']),
      hatchedAt: serializer.fromJson<DateTime?>(json['hatchedAt']),
      fledgedAt: serializer.fromJson<DateTime?>(json['fledgedAt']),
      bornAt: serializer.fromJson<DateTime?>(json['bornAt']),
      diedAt: serializer.fromJson<DateTime?>(json['diedAt']),
      saleStatus: serializer.fromJson<String>(json['saleStatus']),
      listedAt: serializer.fromJson<DateTime?>(json['listedAt']),
      soldAt: serializer.fromJson<DateTime?>(json['soldAt']),
      askingPrice: serializer.fromJson<double?>(json['askingPrice']),
      finalPrice: serializer.fromJson<double?>(json['finalPrice']),
      boughtAt: serializer.fromJson<DateTime?>(json['boughtAt']),
      boughtPrice: serializer.fromJson<double?>(json['boughtPrice']),
      notes: serializer.fromJson<String?>(json['notes']),
      boughtFrom: serializer.fromJson<String?>(json['boughtFrom']),
      soldTo: serializer.fromJson<String?>(json['soldTo']),
      owner: serializer.fromJson<String?>(json['owner']),
      breeder: serializer.fromJson<String?>(json['breeder']),
      unknownLifecycle: serializer.fromJson<bool?>(json['unknownLifecycle']),
      user: serializer.fromJson<String?>(json['user']),
      created: serializer.fromJson<DateTime?>(json['created']),
      updated: serializer.fromJson<DateTime?>(json['updated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'ringnumber': serializer.toJson<String?>(ringnumber),
      'species': serializer.toJson<String?>(species),
      'color': serializer.toJson<String?>(color),
      'sex': serializer.toJson<String>(sex),
      'father': serializer.toJson<String?>(father),
      'mother': serializer.toJson<String?>(mother),
      'cage': serializer.toJson<String?>(cage),
      'brood': serializer.toJson<String?>(brood),
      'laidAt': serializer.toJson<DateTime?>(laidAt),
      'hatchedAt': serializer.toJson<DateTime?>(hatchedAt),
      'fledgedAt': serializer.toJson<DateTime?>(fledgedAt),
      'bornAt': serializer.toJson<DateTime?>(bornAt),
      'diedAt': serializer.toJson<DateTime?>(diedAt),
      'saleStatus': serializer.toJson<String>(saleStatus),
      'listedAt': serializer.toJson<DateTime?>(listedAt),
      'soldAt': serializer.toJson<DateTime?>(soldAt),
      'askingPrice': serializer.toJson<double?>(askingPrice),
      'finalPrice': serializer.toJson<double?>(finalPrice),
      'boughtAt': serializer.toJson<DateTime?>(boughtAt),
      'boughtPrice': serializer.toJson<double?>(boughtPrice),
      'notes': serializer.toJson<String?>(notes),
      'boughtFrom': serializer.toJson<String?>(boughtFrom),
      'soldTo': serializer.toJson<String?>(soldTo),
      'owner': serializer.toJson<String?>(owner),
      'breeder': serializer.toJson<String?>(breeder),
      'unknownLifecycle': serializer.toJson<bool?>(unknownLifecycle),
      'user': serializer.toJson<String?>(user),
      'created': serializer.toJson<DateTime?>(created),
      'updated': serializer.toJson<DateTime?>(updated),
    };
  }

  Bird copyWith(
          {String? id,
          Value<String?> ringnumber = const Value.absent(),
          Value<String?> species = const Value.absent(),
          Value<String?> color = const Value.absent(),
          String? sex,
          Value<String?> father = const Value.absent(),
          Value<String?> mother = const Value.absent(),
          Value<String?> cage = const Value.absent(),
          Value<String?> brood = const Value.absent(),
          Value<DateTime?> laidAt = const Value.absent(),
          Value<DateTime?> hatchedAt = const Value.absent(),
          Value<DateTime?> fledgedAt = const Value.absent(),
          Value<DateTime?> bornAt = const Value.absent(),
          Value<DateTime?> diedAt = const Value.absent(),
          String? saleStatus,
          Value<DateTime?> listedAt = const Value.absent(),
          Value<DateTime?> soldAt = const Value.absent(),
          Value<double?> askingPrice = const Value.absent(),
          Value<double?> finalPrice = const Value.absent(),
          Value<DateTime?> boughtAt = const Value.absent(),
          Value<double?> boughtPrice = const Value.absent(),
          Value<String?> notes = const Value.absent(),
          Value<String?> boughtFrom = const Value.absent(),
          Value<String?> soldTo = const Value.absent(),
          Value<String?> owner = const Value.absent(),
          Value<String?> breeder = const Value.absent(),
          Value<bool?> unknownLifecycle = const Value.absent(),
          Value<String?> user = const Value.absent(),
          Value<DateTime?> created = const Value.absent(),
          Value<DateTime?> updated = const Value.absent()}) =>
      Bird(
        id: id ?? this.id,
        ringnumber: ringnumber.present ? ringnumber.value : this.ringnumber,
        species: species.present ? species.value : this.species,
        color: color.present ? color.value : this.color,
        sex: sex ?? this.sex,
        father: father.present ? father.value : this.father,
        mother: mother.present ? mother.value : this.mother,
        cage: cage.present ? cage.value : this.cage,
        brood: brood.present ? brood.value : this.brood,
        laidAt: laidAt.present ? laidAt.value : this.laidAt,
        hatchedAt: hatchedAt.present ? hatchedAt.value : this.hatchedAt,
        fledgedAt: fledgedAt.present ? fledgedAt.value : this.fledgedAt,
        bornAt: bornAt.present ? bornAt.value : this.bornAt,
        diedAt: diedAt.present ? diedAt.value : this.diedAt,
        saleStatus: saleStatus ?? this.saleStatus,
        listedAt: listedAt.present ? listedAt.value : this.listedAt,
        soldAt: soldAt.present ? soldAt.value : this.soldAt,
        askingPrice: askingPrice.present ? askingPrice.value : this.askingPrice,
        finalPrice: finalPrice.present ? finalPrice.value : this.finalPrice,
        boughtAt: boughtAt.present ? boughtAt.value : this.boughtAt,
        boughtPrice: boughtPrice.present ? boughtPrice.value : this.boughtPrice,
        notes: notes.present ? notes.value : this.notes,
        boughtFrom: boughtFrom.present ? boughtFrom.value : this.boughtFrom,
        soldTo: soldTo.present ? soldTo.value : this.soldTo,
        owner: owner.present ? owner.value : this.owner,
        breeder: breeder.present ? breeder.value : this.breeder,
        unknownLifecycle: unknownLifecycle.present
            ? unknownLifecycle.value
            : this.unknownLifecycle,
        user: user.present ? user.value : this.user,
        created: created.present ? created.value : this.created,
        updated: updated.present ? updated.value : this.updated,
      );
  Bird copyWithCompanion(BirdsCompanion data) {
    return Bird(
      id: data.id.present ? data.id.value : this.id,
      ringnumber:
          data.ringnumber.present ? data.ringnumber.value : this.ringnumber,
      species: data.species.present ? data.species.value : this.species,
      color: data.color.present ? data.color.value : this.color,
      sex: data.sex.present ? data.sex.value : this.sex,
      father: data.father.present ? data.father.value : this.father,
      mother: data.mother.present ? data.mother.value : this.mother,
      cage: data.cage.present ? data.cage.value : this.cage,
      brood: data.brood.present ? data.brood.value : this.brood,
      laidAt: data.laidAt.present ? data.laidAt.value : this.laidAt,
      hatchedAt: data.hatchedAt.present ? data.hatchedAt.value : this.hatchedAt,
      fledgedAt: data.fledgedAt.present ? data.fledgedAt.value : this.fledgedAt,
      bornAt: data.bornAt.present ? data.bornAt.value : this.bornAt,
      diedAt: data.diedAt.present ? data.diedAt.value : this.diedAt,
      saleStatus:
          data.saleStatus.present ? data.saleStatus.value : this.saleStatus,
      listedAt: data.listedAt.present ? data.listedAt.value : this.listedAt,
      soldAt: data.soldAt.present ? data.soldAt.value : this.soldAt,
      askingPrice:
          data.askingPrice.present ? data.askingPrice.value : this.askingPrice,
      finalPrice:
          data.finalPrice.present ? data.finalPrice.value : this.finalPrice,
      boughtAt: data.boughtAt.present ? data.boughtAt.value : this.boughtAt,
      boughtPrice:
          data.boughtPrice.present ? data.boughtPrice.value : this.boughtPrice,
      notes: data.notes.present ? data.notes.value : this.notes,
      boughtFrom:
          data.boughtFrom.present ? data.boughtFrom.value : this.boughtFrom,
      soldTo: data.soldTo.present ? data.soldTo.value : this.soldTo,
      owner: data.owner.present ? data.owner.value : this.owner,
      breeder: data.breeder.present ? data.breeder.value : this.breeder,
      unknownLifecycle: data.unknownLifecycle.present
          ? data.unknownLifecycle.value
          : this.unknownLifecycle,
      user: data.user.present ? data.user.value : this.user,
      created: data.created.present ? data.created.value : this.created,
      updated: data.updated.present ? data.updated.value : this.updated,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Bird(')
          ..write('id: $id, ')
          ..write('ringnumber: $ringnumber, ')
          ..write('species: $species, ')
          ..write('color: $color, ')
          ..write('sex: $sex, ')
          ..write('father: $father, ')
          ..write('mother: $mother, ')
          ..write('cage: $cage, ')
          ..write('brood: $brood, ')
          ..write('laidAt: $laidAt, ')
          ..write('hatchedAt: $hatchedAt, ')
          ..write('fledgedAt: $fledgedAt, ')
          ..write('bornAt: $bornAt, ')
          ..write('diedAt: $diedAt, ')
          ..write('saleStatus: $saleStatus, ')
          ..write('listedAt: $listedAt, ')
          ..write('soldAt: $soldAt, ')
          ..write('askingPrice: $askingPrice, ')
          ..write('finalPrice: $finalPrice, ')
          ..write('boughtAt: $boughtAt, ')
          ..write('boughtPrice: $boughtPrice, ')
          ..write('notes: $notes, ')
          ..write('boughtFrom: $boughtFrom, ')
          ..write('soldTo: $soldTo, ')
          ..write('owner: $owner, ')
          ..write('breeder: $breeder, ')
          ..write('unknownLifecycle: $unknownLifecycle, ')
          ..write('user: $user, ')
          ..write('created: $created, ')
          ..write('updated: $updated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        ringnumber,
        species,
        color,
        sex,
        father,
        mother,
        cage,
        brood,
        laidAt,
        hatchedAt,
        fledgedAt,
        bornAt,
        diedAt,
        saleStatus,
        listedAt,
        soldAt,
        askingPrice,
        finalPrice,
        boughtAt,
        boughtPrice,
        notes,
        boughtFrom,
        soldTo,
        owner,
        breeder,
        unknownLifecycle,
        user,
        created,
        updated
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Bird &&
          other.id == this.id &&
          other.ringnumber == this.ringnumber &&
          other.species == this.species &&
          other.color == this.color &&
          other.sex == this.sex &&
          other.father == this.father &&
          other.mother == this.mother &&
          other.cage == this.cage &&
          other.brood == this.brood &&
          other.laidAt == this.laidAt &&
          other.hatchedAt == this.hatchedAt &&
          other.fledgedAt == this.fledgedAt &&
          other.bornAt == this.bornAt &&
          other.diedAt == this.diedAt &&
          other.saleStatus == this.saleStatus &&
          other.listedAt == this.listedAt &&
          other.soldAt == this.soldAt &&
          other.askingPrice == this.askingPrice &&
          other.finalPrice == this.finalPrice &&
          other.boughtAt == this.boughtAt &&
          other.boughtPrice == this.boughtPrice &&
          other.notes == this.notes &&
          other.boughtFrom == this.boughtFrom &&
          other.soldTo == this.soldTo &&
          other.owner == this.owner &&
          other.breeder == this.breeder &&
          other.unknownLifecycle == this.unknownLifecycle &&
          other.user == this.user &&
          other.created == this.created &&
          other.updated == this.updated);
}

class BirdsCompanion extends UpdateCompanion<Bird> {
  final Value<String> id;
  final Value<String?> ringnumber;
  final Value<String?> species;
  final Value<String?> color;
  final Value<String> sex;
  final Value<String?> father;
  final Value<String?> mother;
  final Value<String?> cage;
  final Value<String?> brood;
  final Value<DateTime?> laidAt;
  final Value<DateTime?> hatchedAt;
  final Value<DateTime?> fledgedAt;
  final Value<DateTime?> bornAt;
  final Value<DateTime?> diedAt;
  final Value<String> saleStatus;
  final Value<DateTime?> listedAt;
  final Value<DateTime?> soldAt;
  final Value<double?> askingPrice;
  final Value<double?> finalPrice;
  final Value<DateTime?> boughtAt;
  final Value<double?> boughtPrice;
  final Value<String?> notes;
  final Value<String?> boughtFrom;
  final Value<String?> soldTo;
  final Value<String?> owner;
  final Value<String?> breeder;
  final Value<bool?> unknownLifecycle;
  final Value<String?> user;
  final Value<DateTime?> created;
  final Value<DateTime?> updated;
  final Value<int> rowid;
  const BirdsCompanion({
    this.id = const Value.absent(),
    this.ringnumber = const Value.absent(),
    this.species = const Value.absent(),
    this.color = const Value.absent(),
    this.sex = const Value.absent(),
    this.father = const Value.absent(),
    this.mother = const Value.absent(),
    this.cage = const Value.absent(),
    this.brood = const Value.absent(),
    this.laidAt = const Value.absent(),
    this.hatchedAt = const Value.absent(),
    this.fledgedAt = const Value.absent(),
    this.bornAt = const Value.absent(),
    this.diedAt = const Value.absent(),
    this.saleStatus = const Value.absent(),
    this.listedAt = const Value.absent(),
    this.soldAt = const Value.absent(),
    this.askingPrice = const Value.absent(),
    this.finalPrice = const Value.absent(),
    this.boughtAt = const Value.absent(),
    this.boughtPrice = const Value.absent(),
    this.notes = const Value.absent(),
    this.boughtFrom = const Value.absent(),
    this.soldTo = const Value.absent(),
    this.owner = const Value.absent(),
    this.breeder = const Value.absent(),
    this.unknownLifecycle = const Value.absent(),
    this.user = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BirdsCompanion.insert({
    required String id,
    this.ringnumber = const Value.absent(),
    this.species = const Value.absent(),
    this.color = const Value.absent(),
    this.sex = const Value.absent(),
    this.father = const Value.absent(),
    this.mother = const Value.absent(),
    this.cage = const Value.absent(),
    this.brood = const Value.absent(),
    this.laidAt = const Value.absent(),
    this.hatchedAt = const Value.absent(),
    this.fledgedAt = const Value.absent(),
    this.bornAt = const Value.absent(),
    this.diedAt = const Value.absent(),
    this.saleStatus = const Value.absent(),
    this.listedAt = const Value.absent(),
    this.soldAt = const Value.absent(),
    this.askingPrice = const Value.absent(),
    this.finalPrice = const Value.absent(),
    this.boughtAt = const Value.absent(),
    this.boughtPrice = const Value.absent(),
    this.notes = const Value.absent(),
    this.boughtFrom = const Value.absent(),
    this.soldTo = const Value.absent(),
    this.owner = const Value.absent(),
    this.breeder = const Value.absent(),
    this.unknownLifecycle = const Value.absent(),
    this.user = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<Bird> custom({
    Expression<String>? id,
    Expression<String>? ringnumber,
    Expression<String>? species,
    Expression<String>? color,
    Expression<String>? sex,
    Expression<String>? father,
    Expression<String>? mother,
    Expression<String>? cage,
    Expression<String>? brood,
    Expression<DateTime>? laidAt,
    Expression<DateTime>? hatchedAt,
    Expression<DateTime>? fledgedAt,
    Expression<DateTime>? bornAt,
    Expression<DateTime>? diedAt,
    Expression<String>? saleStatus,
    Expression<DateTime>? listedAt,
    Expression<DateTime>? soldAt,
    Expression<double>? askingPrice,
    Expression<double>? finalPrice,
    Expression<DateTime>? boughtAt,
    Expression<double>? boughtPrice,
    Expression<String>? notes,
    Expression<String>? boughtFrom,
    Expression<String>? soldTo,
    Expression<String>? owner,
    Expression<String>? breeder,
    Expression<bool>? unknownLifecycle,
    Expression<String>? user,
    Expression<DateTime>? created,
    Expression<DateTime>? updated,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (ringnumber != null) 'ringnumber': ringnumber,
      if (species != null) 'species': species,
      if (color != null) 'color': color,
      if (sex != null) 'sex': sex,
      if (father != null) 'father': father,
      if (mother != null) 'mother': mother,
      if (cage != null) 'cage': cage,
      if (brood != null) 'brood': brood,
      if (laidAt != null) 'laid_at': laidAt,
      if (hatchedAt != null) 'hatched_at': hatchedAt,
      if (fledgedAt != null) 'fledged_at': fledgedAt,
      if (bornAt != null) 'born_at': bornAt,
      if (diedAt != null) 'died_at': diedAt,
      if (saleStatus != null) 'sale_status': saleStatus,
      if (listedAt != null) 'listed_at': listedAt,
      if (soldAt != null) 'sold_at': soldAt,
      if (askingPrice != null) 'asking_price': askingPrice,
      if (finalPrice != null) 'final_price': finalPrice,
      if (boughtAt != null) 'bought_at': boughtAt,
      if (boughtPrice != null) 'bought_price': boughtPrice,
      if (notes != null) 'notes': notes,
      if (boughtFrom != null) 'bought_from': boughtFrom,
      if (soldTo != null) 'sold_to': soldTo,
      if (owner != null) 'owner': owner,
      if (breeder != null) 'breeder': breeder,
      if (unknownLifecycle != null) 'unknown_lifecycle': unknownLifecycle,
      if (user != null) 'user': user,
      if (created != null) 'created': created,
      if (updated != null) 'updated': updated,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BirdsCompanion copyWith(
      {Value<String>? id,
      Value<String?>? ringnumber,
      Value<String?>? species,
      Value<String?>? color,
      Value<String>? sex,
      Value<String?>? father,
      Value<String?>? mother,
      Value<String?>? cage,
      Value<String?>? brood,
      Value<DateTime?>? laidAt,
      Value<DateTime?>? hatchedAt,
      Value<DateTime?>? fledgedAt,
      Value<DateTime?>? bornAt,
      Value<DateTime?>? diedAt,
      Value<String>? saleStatus,
      Value<DateTime?>? listedAt,
      Value<DateTime?>? soldAt,
      Value<double?>? askingPrice,
      Value<double?>? finalPrice,
      Value<DateTime?>? boughtAt,
      Value<double?>? boughtPrice,
      Value<String?>? notes,
      Value<String?>? boughtFrom,
      Value<String?>? soldTo,
      Value<String?>? owner,
      Value<String?>? breeder,
      Value<bool?>? unknownLifecycle,
      Value<String?>? user,
      Value<DateTime?>? created,
      Value<DateTime?>? updated,
      Value<int>? rowid}) {
    return BirdsCompanion(
      id: id ?? this.id,
      ringnumber: ringnumber ?? this.ringnumber,
      species: species ?? this.species,
      color: color ?? this.color,
      sex: sex ?? this.sex,
      father: father ?? this.father,
      mother: mother ?? this.mother,
      cage: cage ?? this.cage,
      brood: brood ?? this.brood,
      laidAt: laidAt ?? this.laidAt,
      hatchedAt: hatchedAt ?? this.hatchedAt,
      fledgedAt: fledgedAt ?? this.fledgedAt,
      bornAt: bornAt ?? this.bornAt,
      diedAt: diedAt ?? this.diedAt,
      saleStatus: saleStatus ?? this.saleStatus,
      listedAt: listedAt ?? this.listedAt,
      soldAt: soldAt ?? this.soldAt,
      askingPrice: askingPrice ?? this.askingPrice,
      finalPrice: finalPrice ?? this.finalPrice,
      boughtAt: boughtAt ?? this.boughtAt,
      boughtPrice: boughtPrice ?? this.boughtPrice,
      notes: notes ?? this.notes,
      boughtFrom: boughtFrom ?? this.boughtFrom,
      soldTo: soldTo ?? this.soldTo,
      owner: owner ?? this.owner,
      breeder: breeder ?? this.breeder,
      unknownLifecycle: unknownLifecycle ?? this.unknownLifecycle,
      user: user ?? this.user,
      created: created ?? this.created,
      updated: updated ?? this.updated,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (ringnumber.present) {
      map['ringnumber'] = Variable<String>(ringnumber.value);
    }
    if (species.present) {
      map['species'] = Variable<String>(species.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (sex.present) {
      map['sex'] = Variable<String>(sex.value);
    }
    if (father.present) {
      map['father'] = Variable<String>(father.value);
    }
    if (mother.present) {
      map['mother'] = Variable<String>(mother.value);
    }
    if (cage.present) {
      map['cage'] = Variable<String>(cage.value);
    }
    if (brood.present) {
      map['brood'] = Variable<String>(brood.value);
    }
    if (laidAt.present) {
      map['laid_at'] = Variable<DateTime>(laidAt.value);
    }
    if (hatchedAt.present) {
      map['hatched_at'] = Variable<DateTime>(hatchedAt.value);
    }
    if (fledgedAt.present) {
      map['fledged_at'] = Variable<DateTime>(fledgedAt.value);
    }
    if (bornAt.present) {
      map['born_at'] = Variable<DateTime>(bornAt.value);
    }
    if (diedAt.present) {
      map['died_at'] = Variable<DateTime>(diedAt.value);
    }
    if (saleStatus.present) {
      map['sale_status'] = Variable<String>(saleStatus.value);
    }
    if (listedAt.present) {
      map['listed_at'] = Variable<DateTime>(listedAt.value);
    }
    if (soldAt.present) {
      map['sold_at'] = Variable<DateTime>(soldAt.value);
    }
    if (askingPrice.present) {
      map['asking_price'] = Variable<double>(askingPrice.value);
    }
    if (finalPrice.present) {
      map['final_price'] = Variable<double>(finalPrice.value);
    }
    if (boughtAt.present) {
      map['bought_at'] = Variable<DateTime>(boughtAt.value);
    }
    if (boughtPrice.present) {
      map['bought_price'] = Variable<double>(boughtPrice.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (boughtFrom.present) {
      map['bought_from'] = Variable<String>(boughtFrom.value);
    }
    if (soldTo.present) {
      map['sold_to'] = Variable<String>(soldTo.value);
    }
    if (owner.present) {
      map['owner'] = Variable<String>(owner.value);
    }
    if (breeder.present) {
      map['breeder'] = Variable<String>(breeder.value);
    }
    if (unknownLifecycle.present) {
      map['unknown_lifecycle'] = Variable<bool>(unknownLifecycle.value);
    }
    if (user.present) {
      map['user'] = Variable<String>(user.value);
    }
    if (created.present) {
      map['created'] = Variable<DateTime>(created.value);
    }
    if (updated.present) {
      map['updated'] = Variable<DateTime>(updated.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BirdsCompanion(')
          ..write('id: $id, ')
          ..write('ringnumber: $ringnumber, ')
          ..write('species: $species, ')
          ..write('color: $color, ')
          ..write('sex: $sex, ')
          ..write('father: $father, ')
          ..write('mother: $mother, ')
          ..write('cage: $cage, ')
          ..write('brood: $brood, ')
          ..write('laidAt: $laidAt, ')
          ..write('hatchedAt: $hatchedAt, ')
          ..write('fledgedAt: $fledgedAt, ')
          ..write('bornAt: $bornAt, ')
          ..write('diedAt: $diedAt, ')
          ..write('saleStatus: $saleStatus, ')
          ..write('listedAt: $listedAt, ')
          ..write('soldAt: $soldAt, ')
          ..write('askingPrice: $askingPrice, ')
          ..write('finalPrice: $finalPrice, ')
          ..write('boughtAt: $boughtAt, ')
          ..write('boughtPrice: $boughtPrice, ')
          ..write('notes: $notes, ')
          ..write('boughtFrom: $boughtFrom, ')
          ..write('soldTo: $soldTo, ')
          ..write('owner: $owner, ')
          ..write('breeder: $breeder, ')
          ..write('unknownLifecycle: $unknownLifecycle, ')
          ..write('user: $user, ')
          ..write('created: $created, ')
          ..write('updated: $updated, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BreedingPairsTable extends BreedingPairs
    with TableInfo<$BreedingPairsTable, BreedingPair> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BreedingPairsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fatherMeta = const VerificationMeta('father');
  @override
  late final GeneratedColumn<String> father = GeneratedColumn<String>(
      'father', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _motherMeta = const VerificationMeta('mother');
  @override
  late final GeneratedColumn<String> mother = GeneratedColumn<String>(
      'mother', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cageMeta = const VerificationMeta('cage');
  @override
  late final GeneratedColumn<String> cage = GeneratedColumn<String>(
      'cage', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _startMeta = const VerificationMeta('start');
  @override
  late final GeneratedColumn<DateTime> start = GeneratedColumn<DateTime>(
      'start', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _endMeta = const VerificationMeta('end');
  @override
  late final GeneratedColumn<DateTime> end = GeneratedColumn<DateTime>(
      'end', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userMeta = const VerificationMeta('user');
  @override
  late final GeneratedColumn<String> user = GeneratedColumn<String>(
      'user', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdMeta =
      const VerificationMeta('created');
  @override
  late final GeneratedColumn<DateTime> created = GeneratedColumn<DateTime>(
      'created', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _updatedMeta =
      const VerificationMeta('updated');
  @override
  late final GeneratedColumn<DateTime> updated = GeneratedColumn<DateTime>(
      'updated', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        father,
        mother,
        status,
        cage,
        start,
        end,
        notes,
        user,
        created,
        updated
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'breeding_pairs';
  @override
  VerificationContext validateIntegrity(Insertable<BreedingPair> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('father')) {
      context.handle(_fatherMeta,
          father.isAcceptableOrUnknown(data['father']!, _fatherMeta));
    } else if (isInserting) {
      context.missing(_fatherMeta);
    }
    if (data.containsKey('mother')) {
      context.handle(_motherMeta,
          mother.isAcceptableOrUnknown(data['mother']!, _motherMeta));
    } else if (isInserting) {
      context.missing(_motherMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('cage')) {
      context.handle(
          _cageMeta, cage.isAcceptableOrUnknown(data['cage']!, _cageMeta));
    }
    if (data.containsKey('start')) {
      context.handle(
          _startMeta, start.isAcceptableOrUnknown(data['start']!, _startMeta));
    }
    if (data.containsKey('end')) {
      context.handle(
          _endMeta, end.isAcceptableOrUnknown(data['end']!, _endMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('user')) {
      context.handle(
          _userMeta, user.isAcceptableOrUnknown(data['user']!, _userMeta));
    }
    if (data.containsKey('created')) {
      context.handle(_createdMeta,
          created.isAcceptableOrUnknown(data['created']!, _createdMeta));
    }
    if (data.containsKey('updated')) {
      context.handle(_updatedMeta,
          updated.isAcceptableOrUnknown(data['updated']!, _updatedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BreedingPair map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BreedingPair(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      father: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}father'])!,
      mother: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mother'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      cage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cage']),
      start: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start']),
      end: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      user: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user']),
      created: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created']),
      updated: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated']),
    );
  }

  @override
  $BreedingPairsTable createAlias(String alias) {
    return $BreedingPairsTable(attachedDatabase, alias);
  }
}

class BreedingPair extends DataClass implements Insertable<BreedingPair> {
  final String id;
  final String father;
  final String mother;
  final String status;
  final String? cage;
  final DateTime? start;
  final DateTime? end;
  final String? notes;
  final String? user;
  final DateTime? created;
  final DateTime? updated;
  const BreedingPair(
      {required this.id,
      required this.father,
      required this.mother,
      required this.status,
      this.cage,
      this.start,
      this.end,
      this.notes,
      this.user,
      this.created,
      this.updated});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['father'] = Variable<String>(father);
    map['mother'] = Variable<String>(mother);
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || cage != null) {
      map['cage'] = Variable<String>(cage);
    }
    if (!nullToAbsent || start != null) {
      map['start'] = Variable<DateTime>(start);
    }
    if (!nullToAbsent || end != null) {
      map['end'] = Variable<DateTime>(end);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    if (!nullToAbsent || user != null) {
      map['user'] = Variable<String>(user);
    }
    if (!nullToAbsent || created != null) {
      map['created'] = Variable<DateTime>(created);
    }
    if (!nullToAbsent || updated != null) {
      map['updated'] = Variable<DateTime>(updated);
    }
    return map;
  }

  BreedingPairsCompanion toCompanion(bool nullToAbsent) {
    return BreedingPairsCompanion(
      id: Value(id),
      father: Value(father),
      mother: Value(mother),
      status: Value(status),
      cage: cage == null && nullToAbsent ? const Value.absent() : Value(cage),
      start:
          start == null && nullToAbsent ? const Value.absent() : Value(start),
      end: end == null && nullToAbsent ? const Value.absent() : Value(end),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      user: user == null && nullToAbsent ? const Value.absent() : Value(user),
      created: created == null && nullToAbsent
          ? const Value.absent()
          : Value(created),
      updated: updated == null && nullToAbsent
          ? const Value.absent()
          : Value(updated),
    );
  }

  factory BreedingPair.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BreedingPair(
      id: serializer.fromJson<String>(json['id']),
      father: serializer.fromJson<String>(json['father']),
      mother: serializer.fromJson<String>(json['mother']),
      status: serializer.fromJson<String>(json['status']),
      cage: serializer.fromJson<String?>(json['cage']),
      start: serializer.fromJson<DateTime?>(json['start']),
      end: serializer.fromJson<DateTime?>(json['end']),
      notes: serializer.fromJson<String?>(json['notes']),
      user: serializer.fromJson<String?>(json['user']),
      created: serializer.fromJson<DateTime?>(json['created']),
      updated: serializer.fromJson<DateTime?>(json['updated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'father': serializer.toJson<String>(father),
      'mother': serializer.toJson<String>(mother),
      'status': serializer.toJson<String>(status),
      'cage': serializer.toJson<String?>(cage),
      'start': serializer.toJson<DateTime?>(start),
      'end': serializer.toJson<DateTime?>(end),
      'notes': serializer.toJson<String?>(notes),
      'user': serializer.toJson<String?>(user),
      'created': serializer.toJson<DateTime?>(created),
      'updated': serializer.toJson<DateTime?>(updated),
    };
  }

  BreedingPair copyWith(
          {String? id,
          String? father,
          String? mother,
          String? status,
          Value<String?> cage = const Value.absent(),
          Value<DateTime?> start = const Value.absent(),
          Value<DateTime?> end = const Value.absent(),
          Value<String?> notes = const Value.absent(),
          Value<String?> user = const Value.absent(),
          Value<DateTime?> created = const Value.absent(),
          Value<DateTime?> updated = const Value.absent()}) =>
      BreedingPair(
        id: id ?? this.id,
        father: father ?? this.father,
        mother: mother ?? this.mother,
        status: status ?? this.status,
        cage: cage.present ? cage.value : this.cage,
        start: start.present ? start.value : this.start,
        end: end.present ? end.value : this.end,
        notes: notes.present ? notes.value : this.notes,
        user: user.present ? user.value : this.user,
        created: created.present ? created.value : this.created,
        updated: updated.present ? updated.value : this.updated,
      );
  BreedingPair copyWithCompanion(BreedingPairsCompanion data) {
    return BreedingPair(
      id: data.id.present ? data.id.value : this.id,
      father: data.father.present ? data.father.value : this.father,
      mother: data.mother.present ? data.mother.value : this.mother,
      status: data.status.present ? data.status.value : this.status,
      cage: data.cage.present ? data.cage.value : this.cage,
      start: data.start.present ? data.start.value : this.start,
      end: data.end.present ? data.end.value : this.end,
      notes: data.notes.present ? data.notes.value : this.notes,
      user: data.user.present ? data.user.value : this.user,
      created: data.created.present ? data.created.value : this.created,
      updated: data.updated.present ? data.updated.value : this.updated,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BreedingPair(')
          ..write('id: $id, ')
          ..write('father: $father, ')
          ..write('mother: $mother, ')
          ..write('status: $status, ')
          ..write('cage: $cage, ')
          ..write('start: $start, ')
          ..write('end: $end, ')
          ..write('notes: $notes, ')
          ..write('user: $user, ')
          ..write('created: $created, ')
          ..write('updated: $updated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, father, mother, status, cage, start, end,
      notes, user, created, updated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BreedingPair &&
          other.id == this.id &&
          other.father == this.father &&
          other.mother == this.mother &&
          other.status == this.status &&
          other.cage == this.cage &&
          other.start == this.start &&
          other.end == this.end &&
          other.notes == this.notes &&
          other.user == this.user &&
          other.created == this.created &&
          other.updated == this.updated);
}

class BreedingPairsCompanion extends UpdateCompanion<BreedingPair> {
  final Value<String> id;
  final Value<String> father;
  final Value<String> mother;
  final Value<String> status;
  final Value<String?> cage;
  final Value<DateTime?> start;
  final Value<DateTime?> end;
  final Value<String?> notes;
  final Value<String?> user;
  final Value<DateTime?> created;
  final Value<DateTime?> updated;
  final Value<int> rowid;
  const BreedingPairsCompanion({
    this.id = const Value.absent(),
    this.father = const Value.absent(),
    this.mother = const Value.absent(),
    this.status = const Value.absent(),
    this.cage = const Value.absent(),
    this.start = const Value.absent(),
    this.end = const Value.absent(),
    this.notes = const Value.absent(),
    this.user = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BreedingPairsCompanion.insert({
    required String id,
    required String father,
    required String mother,
    required String status,
    this.cage = const Value.absent(),
    this.start = const Value.absent(),
    this.end = const Value.absent(),
    this.notes = const Value.absent(),
    this.user = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        father = Value(father),
        mother = Value(mother),
        status = Value(status);
  static Insertable<BreedingPair> custom({
    Expression<String>? id,
    Expression<String>? father,
    Expression<String>? mother,
    Expression<String>? status,
    Expression<String>? cage,
    Expression<DateTime>? start,
    Expression<DateTime>? end,
    Expression<String>? notes,
    Expression<String>? user,
    Expression<DateTime>? created,
    Expression<DateTime>? updated,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (father != null) 'father': father,
      if (mother != null) 'mother': mother,
      if (status != null) 'status': status,
      if (cage != null) 'cage': cage,
      if (start != null) 'start': start,
      if (end != null) 'end': end,
      if (notes != null) 'notes': notes,
      if (user != null) 'user': user,
      if (created != null) 'created': created,
      if (updated != null) 'updated': updated,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BreedingPairsCompanion copyWith(
      {Value<String>? id,
      Value<String>? father,
      Value<String>? mother,
      Value<String>? status,
      Value<String?>? cage,
      Value<DateTime?>? start,
      Value<DateTime?>? end,
      Value<String?>? notes,
      Value<String?>? user,
      Value<DateTime?>? created,
      Value<DateTime?>? updated,
      Value<int>? rowid}) {
    return BreedingPairsCompanion(
      id: id ?? this.id,
      father: father ?? this.father,
      mother: mother ?? this.mother,
      status: status ?? this.status,
      cage: cage ?? this.cage,
      start: start ?? this.start,
      end: end ?? this.end,
      notes: notes ?? this.notes,
      user: user ?? this.user,
      created: created ?? this.created,
      updated: updated ?? this.updated,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (father.present) {
      map['father'] = Variable<String>(father.value);
    }
    if (mother.present) {
      map['mother'] = Variable<String>(mother.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (cage.present) {
      map['cage'] = Variable<String>(cage.value);
    }
    if (start.present) {
      map['start'] = Variable<DateTime>(start.value);
    }
    if (end.present) {
      map['end'] = Variable<DateTime>(end.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (user.present) {
      map['user'] = Variable<String>(user.value);
    }
    if (created.present) {
      map['created'] = Variable<DateTime>(created.value);
    }
    if (updated.present) {
      map['updated'] = Variable<DateTime>(updated.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BreedingPairsCompanion(')
          ..write('id: $id, ')
          ..write('father: $father, ')
          ..write('mother: $mother, ')
          ..write('status: $status, ')
          ..write('cage: $cage, ')
          ..write('start: $start, ')
          ..write('end: $end, ')
          ..write('notes: $notes, ')
          ..write('user: $user, ')
          ..write('created: $created, ')
          ..write('updated: $updated, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BroodsTable extends Broods with TableInfo<$BroodsTable, Brood> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BroodsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _breedingPairMeta =
      const VerificationMeta('breedingPair');
  @override
  late final GeneratedColumn<String> breedingPair = GeneratedColumn<String>(
      'breeding_pair', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cageMeta = const VerificationMeta('cage');
  @override
  late final GeneratedColumn<String> cage = GeneratedColumn<String>(
      'cage', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _startMeta = const VerificationMeta('start');
  @override
  late final GeneratedColumn<DateTime> start = GeneratedColumn<DateTime>(
      'start', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _endMeta = const VerificationMeta('end');
  @override
  late final GeneratedColumn<DateTime> end = GeneratedColumn<DateTime>(
      'end', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userMeta = const VerificationMeta('user');
  @override
  late final GeneratedColumn<String> user = GeneratedColumn<String>(
      'user', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdMeta =
      const VerificationMeta('created');
  @override
  late final GeneratedColumn<DateTime> created = GeneratedColumn<DateTime>(
      'created', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _updatedMeta =
      const VerificationMeta('updated');
  @override
  late final GeneratedColumn<DateTime> updated = GeneratedColumn<DateTime>(
      'updated', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, breedingPair, cage, start, end, notes, user, created, updated];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'broods';
  @override
  VerificationContext validateIntegrity(Insertable<Brood> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('breeding_pair')) {
      context.handle(
          _breedingPairMeta,
          breedingPair.isAcceptableOrUnknown(
              data['breeding_pair']!, _breedingPairMeta));
    }
    if (data.containsKey('cage')) {
      context.handle(
          _cageMeta, cage.isAcceptableOrUnknown(data['cage']!, _cageMeta));
    }
    if (data.containsKey('start')) {
      context.handle(
          _startMeta, start.isAcceptableOrUnknown(data['start']!, _startMeta));
    }
    if (data.containsKey('end')) {
      context.handle(
          _endMeta, end.isAcceptableOrUnknown(data['end']!, _endMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('user')) {
      context.handle(
          _userMeta, user.isAcceptableOrUnknown(data['user']!, _userMeta));
    }
    if (data.containsKey('created')) {
      context.handle(_createdMeta,
          created.isAcceptableOrUnknown(data['created']!, _createdMeta));
    }
    if (data.containsKey('updated')) {
      context.handle(_updatedMeta,
          updated.isAcceptableOrUnknown(data['updated']!, _updatedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Brood map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Brood(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      breedingPair: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}breeding_pair']),
      cage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cage']),
      start: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start']),
      end: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      user: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user']),
      created: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created']),
      updated: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated']),
    );
  }

  @override
  $BroodsTable createAlias(String alias) {
    return $BroodsTable(attachedDatabase, alias);
  }
}

class Brood extends DataClass implements Insertable<Brood> {
  final String id;
  final String? breedingPair;
  final String? cage;
  final DateTime? start;
  final DateTime? end;
  final String? notes;
  final String? user;
  final DateTime? created;
  final DateTime? updated;
  const Brood(
      {required this.id,
      this.breedingPair,
      this.cage,
      this.start,
      this.end,
      this.notes,
      this.user,
      this.created,
      this.updated});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || breedingPair != null) {
      map['breeding_pair'] = Variable<String>(breedingPair);
    }
    if (!nullToAbsent || cage != null) {
      map['cage'] = Variable<String>(cage);
    }
    if (!nullToAbsent || start != null) {
      map['start'] = Variable<DateTime>(start);
    }
    if (!nullToAbsent || end != null) {
      map['end'] = Variable<DateTime>(end);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    if (!nullToAbsent || user != null) {
      map['user'] = Variable<String>(user);
    }
    if (!nullToAbsent || created != null) {
      map['created'] = Variable<DateTime>(created);
    }
    if (!nullToAbsent || updated != null) {
      map['updated'] = Variable<DateTime>(updated);
    }
    return map;
  }

  BroodsCompanion toCompanion(bool nullToAbsent) {
    return BroodsCompanion(
      id: Value(id),
      breedingPair: breedingPair == null && nullToAbsent
          ? const Value.absent()
          : Value(breedingPair),
      cage: cage == null && nullToAbsent ? const Value.absent() : Value(cage),
      start:
          start == null && nullToAbsent ? const Value.absent() : Value(start),
      end: end == null && nullToAbsent ? const Value.absent() : Value(end),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      user: user == null && nullToAbsent ? const Value.absent() : Value(user),
      created: created == null && nullToAbsent
          ? const Value.absent()
          : Value(created),
      updated: updated == null && nullToAbsent
          ? const Value.absent()
          : Value(updated),
    );
  }

  factory Brood.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Brood(
      id: serializer.fromJson<String>(json['id']),
      breedingPair: serializer.fromJson<String?>(json['breedingPair']),
      cage: serializer.fromJson<String?>(json['cage']),
      start: serializer.fromJson<DateTime?>(json['start']),
      end: serializer.fromJson<DateTime?>(json['end']),
      notes: serializer.fromJson<String?>(json['notes']),
      user: serializer.fromJson<String?>(json['user']),
      created: serializer.fromJson<DateTime?>(json['created']),
      updated: serializer.fromJson<DateTime?>(json['updated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'breedingPair': serializer.toJson<String?>(breedingPair),
      'cage': serializer.toJson<String?>(cage),
      'start': serializer.toJson<DateTime?>(start),
      'end': serializer.toJson<DateTime?>(end),
      'notes': serializer.toJson<String?>(notes),
      'user': serializer.toJson<String?>(user),
      'created': serializer.toJson<DateTime?>(created),
      'updated': serializer.toJson<DateTime?>(updated),
    };
  }

  Brood copyWith(
          {String? id,
          Value<String?> breedingPair = const Value.absent(),
          Value<String?> cage = const Value.absent(),
          Value<DateTime?> start = const Value.absent(),
          Value<DateTime?> end = const Value.absent(),
          Value<String?> notes = const Value.absent(),
          Value<String?> user = const Value.absent(),
          Value<DateTime?> created = const Value.absent(),
          Value<DateTime?> updated = const Value.absent()}) =>
      Brood(
        id: id ?? this.id,
        breedingPair:
            breedingPair.present ? breedingPair.value : this.breedingPair,
        cage: cage.present ? cage.value : this.cage,
        start: start.present ? start.value : this.start,
        end: end.present ? end.value : this.end,
        notes: notes.present ? notes.value : this.notes,
        user: user.present ? user.value : this.user,
        created: created.present ? created.value : this.created,
        updated: updated.present ? updated.value : this.updated,
      );
  Brood copyWithCompanion(BroodsCompanion data) {
    return Brood(
      id: data.id.present ? data.id.value : this.id,
      breedingPair: data.breedingPair.present
          ? data.breedingPair.value
          : this.breedingPair,
      cage: data.cage.present ? data.cage.value : this.cage,
      start: data.start.present ? data.start.value : this.start,
      end: data.end.present ? data.end.value : this.end,
      notes: data.notes.present ? data.notes.value : this.notes,
      user: data.user.present ? data.user.value : this.user,
      created: data.created.present ? data.created.value : this.created,
      updated: data.updated.present ? data.updated.value : this.updated,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Brood(')
          ..write('id: $id, ')
          ..write('breedingPair: $breedingPair, ')
          ..write('cage: $cage, ')
          ..write('start: $start, ')
          ..write('end: $end, ')
          ..write('notes: $notes, ')
          ..write('user: $user, ')
          ..write('created: $created, ')
          ..write('updated: $updated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, breedingPair, cage, start, end, notes, user, created, updated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Brood &&
          other.id == this.id &&
          other.breedingPair == this.breedingPair &&
          other.cage == this.cage &&
          other.start == this.start &&
          other.end == this.end &&
          other.notes == this.notes &&
          other.user == this.user &&
          other.created == this.created &&
          other.updated == this.updated);
}

class BroodsCompanion extends UpdateCompanion<Brood> {
  final Value<String> id;
  final Value<String?> breedingPair;
  final Value<String?> cage;
  final Value<DateTime?> start;
  final Value<DateTime?> end;
  final Value<String?> notes;
  final Value<String?> user;
  final Value<DateTime?> created;
  final Value<DateTime?> updated;
  final Value<int> rowid;
  const BroodsCompanion({
    this.id = const Value.absent(),
    this.breedingPair = const Value.absent(),
    this.cage = const Value.absent(),
    this.start = const Value.absent(),
    this.end = const Value.absent(),
    this.notes = const Value.absent(),
    this.user = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BroodsCompanion.insert({
    required String id,
    this.breedingPair = const Value.absent(),
    this.cage = const Value.absent(),
    this.start = const Value.absent(),
    this.end = const Value.absent(),
    this.notes = const Value.absent(),
    this.user = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<Brood> custom({
    Expression<String>? id,
    Expression<String>? breedingPair,
    Expression<String>? cage,
    Expression<DateTime>? start,
    Expression<DateTime>? end,
    Expression<String>? notes,
    Expression<String>? user,
    Expression<DateTime>? created,
    Expression<DateTime>? updated,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (breedingPair != null) 'breeding_pair': breedingPair,
      if (cage != null) 'cage': cage,
      if (start != null) 'start': start,
      if (end != null) 'end': end,
      if (notes != null) 'notes': notes,
      if (user != null) 'user': user,
      if (created != null) 'created': created,
      if (updated != null) 'updated': updated,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BroodsCompanion copyWith(
      {Value<String>? id,
      Value<String?>? breedingPair,
      Value<String?>? cage,
      Value<DateTime?>? start,
      Value<DateTime?>? end,
      Value<String?>? notes,
      Value<String?>? user,
      Value<DateTime?>? created,
      Value<DateTime?>? updated,
      Value<int>? rowid}) {
    return BroodsCompanion(
      id: id ?? this.id,
      breedingPair: breedingPair ?? this.breedingPair,
      cage: cage ?? this.cage,
      start: start ?? this.start,
      end: end ?? this.end,
      notes: notes ?? this.notes,
      user: user ?? this.user,
      created: created ?? this.created,
      updated: updated ?? this.updated,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (breedingPair.present) {
      map['breeding_pair'] = Variable<String>(breedingPair.value);
    }
    if (cage.present) {
      map['cage'] = Variable<String>(cage.value);
    }
    if (start.present) {
      map['start'] = Variable<DateTime>(start.value);
    }
    if (end.present) {
      map['end'] = Variable<DateTime>(end.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (user.present) {
      map['user'] = Variable<String>(user.value);
    }
    if (created.present) {
      map['created'] = Variable<DateTime>(created.value);
    }
    if (updated.present) {
      map['updated'] = Variable<DateTime>(updated.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BroodsCompanion(')
          ..write('id: $id, ')
          ..write('breedingPair: $breedingPair, ')
          ..write('cage: $cage, ')
          ..write('start: $start, ')
          ..write('end: $end, ')
          ..write('notes: $notes, ')
          ..write('user: $user, ')
          ..write('created: $created, ')
          ..write('updated: $updated, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EggsTable extends Eggs with TableInfo<$EggsTable, Egg> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EggsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _broodMeta = const VerificationMeta('brood');
  @override
  late final GeneratedColumn<String> brood = GeneratedColumn<String>(
      'brood', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<int> number = GeneratedColumn<int>(
      'number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _laidAtMeta = const VerificationMeta('laidAt');
  @override
  late final GeneratedColumn<DateTime> laidAt = GeneratedColumn<DateTime>(
      'laid_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _hatchedAtMeta =
      const VerificationMeta('hatchedAt');
  @override
  late final GeneratedColumn<DateTime> hatchedAt = GeneratedColumn<DateTime>(
      'hatched_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _fertilizedAtMeta =
      const VerificationMeta('fertilizedAt');
  @override
  late final GeneratedColumn<DateTime> fertilizedAt = GeneratedColumn<DateTime>(
      'fertilized_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _unfertilizedAtMeta =
      const VerificationMeta('unfertilizedAt');
  @override
  late final GeneratedColumn<DateTime> unfertilizedAt =
      GeneratedColumn<DateTime>('unfertilized_at', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _fledgedAtMeta =
      const VerificationMeta('fledgedAt');
  @override
  late final GeneratedColumn<DateTime> fledgedAt = GeneratedColumn<DateTime>(
      'fledged_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _diedAtMeta = const VerificationMeta('diedAt');
  @override
  late final GeneratedColumn<DateTime> diedAt = GeneratedColumn<DateTime>(
      'died_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('laid'));
  static const VerificationMeta _ringnumberMeta =
      const VerificationMeta('ringnumber');
  @override
  late final GeneratedColumn<String> ringnumber = GeneratedColumn<String>(
      'ringnumber', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
      'color', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cageMeta = const VerificationMeta('cage');
  @override
  late final GeneratedColumn<String> cage = GeneratedColumn<String>(
      'cage', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _speciesMeta =
      const VerificationMeta('species');
  @override
  late final GeneratedColumn<String> species = GeneratedColumn<String>(
      'species', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _birdIdMeta = const VerificationMeta('birdId');
  @override
  late final GeneratedColumn<String> birdId = GeneratedColumn<String>(
      'bird_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdMeta =
      const VerificationMeta('created');
  @override
  late final GeneratedColumn<DateTime> created = GeneratedColumn<DateTime>(
      'created', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _updatedMeta =
      const VerificationMeta('updated');
  @override
  late final GeneratedColumn<DateTime> updated = GeneratedColumn<DateTime>(
      'updated', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        brood,
        number,
        laidAt,
        hatchedAt,
        fertilizedAt,
        unfertilizedAt,
        fledgedAt,
        diedAt,
        status,
        ringnumber,
        color,
        cage,
        species,
        birdId,
        notes,
        created,
        updated
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'eggs';
  @override
  VerificationContext validateIntegrity(Insertable<Egg> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('brood')) {
      context.handle(
          _broodMeta, brood.isAcceptableOrUnknown(data['brood']!, _broodMeta));
    } else if (isInserting) {
      context.missing(_broodMeta);
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('laid_at')) {
      context.handle(_laidAtMeta,
          laidAt.isAcceptableOrUnknown(data['laid_at']!, _laidAtMeta));
    } else if (isInserting) {
      context.missing(_laidAtMeta);
    }
    if (data.containsKey('hatched_at')) {
      context.handle(_hatchedAtMeta,
          hatchedAt.isAcceptableOrUnknown(data['hatched_at']!, _hatchedAtMeta));
    }
    if (data.containsKey('fertilized_at')) {
      context.handle(
          _fertilizedAtMeta,
          fertilizedAt.isAcceptableOrUnknown(
              data['fertilized_at']!, _fertilizedAtMeta));
    }
    if (data.containsKey('unfertilized_at')) {
      context.handle(
          _unfertilizedAtMeta,
          unfertilizedAt.isAcceptableOrUnknown(
              data['unfertilized_at']!, _unfertilizedAtMeta));
    }
    if (data.containsKey('fledged_at')) {
      context.handle(_fledgedAtMeta,
          fledgedAt.isAcceptableOrUnknown(data['fledged_at']!, _fledgedAtMeta));
    }
    if (data.containsKey('died_at')) {
      context.handle(_diedAtMeta,
          diedAt.isAcceptableOrUnknown(data['died_at']!, _diedAtMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('ringnumber')) {
      context.handle(
          _ringnumberMeta,
          ringnumber.isAcceptableOrUnknown(
              data['ringnumber']!, _ringnumberMeta));
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    }
    if (data.containsKey('cage')) {
      context.handle(
          _cageMeta, cage.isAcceptableOrUnknown(data['cage']!, _cageMeta));
    }
    if (data.containsKey('species')) {
      context.handle(_speciesMeta,
          species.isAcceptableOrUnknown(data['species']!, _speciesMeta));
    }
    if (data.containsKey('bird_id')) {
      context.handle(_birdIdMeta,
          birdId.isAcceptableOrUnknown(data['bird_id']!, _birdIdMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('created')) {
      context.handle(_createdMeta,
          created.isAcceptableOrUnknown(data['created']!, _createdMeta));
    }
    if (data.containsKey('updated')) {
      context.handle(_updatedMeta,
          updated.isAcceptableOrUnknown(data['updated']!, _updatedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Egg map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Egg(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      brood: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}brood'])!,
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}number'])!,
      laidAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}laid_at'])!,
      hatchedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}hatched_at']),
      fertilizedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}fertilized_at']),
      unfertilizedAt: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}unfertilized_at']),
      fledgedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}fledged_at']),
      diedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}died_at']),
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      ringnumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ringnumber']),
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color']),
      cage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cage']),
      species: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}species']),
      birdId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bird_id']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      created: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created']),
      updated: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated']),
    );
  }

  @override
  $EggsTable createAlias(String alias) {
    return $EggsTable(attachedDatabase, alias);
  }
}

class Egg extends DataClass implements Insertable<Egg> {
  final String id;
  final String brood;
  final int number;
  final DateTime laidAt;
  final DateTime? hatchedAt;
  final DateTime? fertilizedAt;
  final DateTime? unfertilizedAt;
  final DateTime? fledgedAt;
  final DateTime? diedAt;
  final String status;
  final String? ringnumber;
  final String? color;
  final String? cage;
  final String? species;
  final String? birdId;
  final String? notes;
  final DateTime? created;
  final DateTime? updated;
  const Egg(
      {required this.id,
      required this.brood,
      required this.number,
      required this.laidAt,
      this.hatchedAt,
      this.fertilizedAt,
      this.unfertilizedAt,
      this.fledgedAt,
      this.diedAt,
      required this.status,
      this.ringnumber,
      this.color,
      this.cage,
      this.species,
      this.birdId,
      this.notes,
      this.created,
      this.updated});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['brood'] = Variable<String>(brood);
    map['number'] = Variable<int>(number);
    map['laid_at'] = Variable<DateTime>(laidAt);
    if (!nullToAbsent || hatchedAt != null) {
      map['hatched_at'] = Variable<DateTime>(hatchedAt);
    }
    if (!nullToAbsent || fertilizedAt != null) {
      map['fertilized_at'] = Variable<DateTime>(fertilizedAt);
    }
    if (!nullToAbsent || unfertilizedAt != null) {
      map['unfertilized_at'] = Variable<DateTime>(unfertilizedAt);
    }
    if (!nullToAbsent || fledgedAt != null) {
      map['fledged_at'] = Variable<DateTime>(fledgedAt);
    }
    if (!nullToAbsent || diedAt != null) {
      map['died_at'] = Variable<DateTime>(diedAt);
    }
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || ringnumber != null) {
      map['ringnumber'] = Variable<String>(ringnumber);
    }
    if (!nullToAbsent || color != null) {
      map['color'] = Variable<String>(color);
    }
    if (!nullToAbsent || cage != null) {
      map['cage'] = Variable<String>(cage);
    }
    if (!nullToAbsent || species != null) {
      map['species'] = Variable<String>(species);
    }
    if (!nullToAbsent || birdId != null) {
      map['bird_id'] = Variable<String>(birdId);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    if (!nullToAbsent || created != null) {
      map['created'] = Variable<DateTime>(created);
    }
    if (!nullToAbsent || updated != null) {
      map['updated'] = Variable<DateTime>(updated);
    }
    return map;
  }

  EggsCompanion toCompanion(bool nullToAbsent) {
    return EggsCompanion(
      id: Value(id),
      brood: Value(brood),
      number: Value(number),
      laidAt: Value(laidAt),
      hatchedAt: hatchedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(hatchedAt),
      fertilizedAt: fertilizedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(fertilizedAt),
      unfertilizedAt: unfertilizedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(unfertilizedAt),
      fledgedAt: fledgedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(fledgedAt),
      diedAt:
          diedAt == null && nullToAbsent ? const Value.absent() : Value(diedAt),
      status: Value(status),
      ringnumber: ringnumber == null && nullToAbsent
          ? const Value.absent()
          : Value(ringnumber),
      color:
          color == null && nullToAbsent ? const Value.absent() : Value(color),
      cage: cage == null && nullToAbsent ? const Value.absent() : Value(cage),
      species: species == null && nullToAbsent
          ? const Value.absent()
          : Value(species),
      birdId:
          birdId == null && nullToAbsent ? const Value.absent() : Value(birdId),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      created: created == null && nullToAbsent
          ? const Value.absent()
          : Value(created),
      updated: updated == null && nullToAbsent
          ? const Value.absent()
          : Value(updated),
    );
  }

  factory Egg.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Egg(
      id: serializer.fromJson<String>(json['id']),
      brood: serializer.fromJson<String>(json['brood']),
      number: serializer.fromJson<int>(json['number']),
      laidAt: serializer.fromJson<DateTime>(json['laidAt']),
      hatchedAt: serializer.fromJson<DateTime?>(json['hatchedAt']),
      fertilizedAt: serializer.fromJson<DateTime?>(json['fertilizedAt']),
      unfertilizedAt: serializer.fromJson<DateTime?>(json['unfertilizedAt']),
      fledgedAt: serializer.fromJson<DateTime?>(json['fledgedAt']),
      diedAt: serializer.fromJson<DateTime?>(json['diedAt']),
      status: serializer.fromJson<String>(json['status']),
      ringnumber: serializer.fromJson<String?>(json['ringnumber']),
      color: serializer.fromJson<String?>(json['color']),
      cage: serializer.fromJson<String?>(json['cage']),
      species: serializer.fromJson<String?>(json['species']),
      birdId: serializer.fromJson<String?>(json['birdId']),
      notes: serializer.fromJson<String?>(json['notes']),
      created: serializer.fromJson<DateTime?>(json['created']),
      updated: serializer.fromJson<DateTime?>(json['updated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'brood': serializer.toJson<String>(brood),
      'number': serializer.toJson<int>(number),
      'laidAt': serializer.toJson<DateTime>(laidAt),
      'hatchedAt': serializer.toJson<DateTime?>(hatchedAt),
      'fertilizedAt': serializer.toJson<DateTime?>(fertilizedAt),
      'unfertilizedAt': serializer.toJson<DateTime?>(unfertilizedAt),
      'fledgedAt': serializer.toJson<DateTime?>(fledgedAt),
      'diedAt': serializer.toJson<DateTime?>(diedAt),
      'status': serializer.toJson<String>(status),
      'ringnumber': serializer.toJson<String?>(ringnumber),
      'color': serializer.toJson<String?>(color),
      'cage': serializer.toJson<String?>(cage),
      'species': serializer.toJson<String?>(species),
      'birdId': serializer.toJson<String?>(birdId),
      'notes': serializer.toJson<String?>(notes),
      'created': serializer.toJson<DateTime?>(created),
      'updated': serializer.toJson<DateTime?>(updated),
    };
  }

  Egg copyWith(
          {String? id,
          String? brood,
          int? number,
          DateTime? laidAt,
          Value<DateTime?> hatchedAt = const Value.absent(),
          Value<DateTime?> fertilizedAt = const Value.absent(),
          Value<DateTime?> unfertilizedAt = const Value.absent(),
          Value<DateTime?> fledgedAt = const Value.absent(),
          Value<DateTime?> diedAt = const Value.absent(),
          String? status,
          Value<String?> ringnumber = const Value.absent(),
          Value<String?> color = const Value.absent(),
          Value<String?> cage = const Value.absent(),
          Value<String?> species = const Value.absent(),
          Value<String?> birdId = const Value.absent(),
          Value<String?> notes = const Value.absent(),
          Value<DateTime?> created = const Value.absent(),
          Value<DateTime?> updated = const Value.absent()}) =>
      Egg(
        id: id ?? this.id,
        brood: brood ?? this.brood,
        number: number ?? this.number,
        laidAt: laidAt ?? this.laidAt,
        hatchedAt: hatchedAt.present ? hatchedAt.value : this.hatchedAt,
        fertilizedAt:
            fertilizedAt.present ? fertilizedAt.value : this.fertilizedAt,
        unfertilizedAt:
            unfertilizedAt.present ? unfertilizedAt.value : this.unfertilizedAt,
        fledgedAt: fledgedAt.present ? fledgedAt.value : this.fledgedAt,
        diedAt: diedAt.present ? diedAt.value : this.diedAt,
        status: status ?? this.status,
        ringnumber: ringnumber.present ? ringnumber.value : this.ringnumber,
        color: color.present ? color.value : this.color,
        cage: cage.present ? cage.value : this.cage,
        species: species.present ? species.value : this.species,
        birdId: birdId.present ? birdId.value : this.birdId,
        notes: notes.present ? notes.value : this.notes,
        created: created.present ? created.value : this.created,
        updated: updated.present ? updated.value : this.updated,
      );
  Egg copyWithCompanion(EggsCompanion data) {
    return Egg(
      id: data.id.present ? data.id.value : this.id,
      brood: data.brood.present ? data.brood.value : this.brood,
      number: data.number.present ? data.number.value : this.number,
      laidAt: data.laidAt.present ? data.laidAt.value : this.laidAt,
      hatchedAt: data.hatchedAt.present ? data.hatchedAt.value : this.hatchedAt,
      fertilizedAt: data.fertilizedAt.present
          ? data.fertilizedAt.value
          : this.fertilizedAt,
      unfertilizedAt: data.unfertilizedAt.present
          ? data.unfertilizedAt.value
          : this.unfertilizedAt,
      fledgedAt: data.fledgedAt.present ? data.fledgedAt.value : this.fledgedAt,
      diedAt: data.diedAt.present ? data.diedAt.value : this.diedAt,
      status: data.status.present ? data.status.value : this.status,
      ringnumber:
          data.ringnumber.present ? data.ringnumber.value : this.ringnumber,
      color: data.color.present ? data.color.value : this.color,
      cage: data.cage.present ? data.cage.value : this.cage,
      species: data.species.present ? data.species.value : this.species,
      birdId: data.birdId.present ? data.birdId.value : this.birdId,
      notes: data.notes.present ? data.notes.value : this.notes,
      created: data.created.present ? data.created.value : this.created,
      updated: data.updated.present ? data.updated.value : this.updated,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Egg(')
          ..write('id: $id, ')
          ..write('brood: $brood, ')
          ..write('number: $number, ')
          ..write('laidAt: $laidAt, ')
          ..write('hatchedAt: $hatchedAt, ')
          ..write('fertilizedAt: $fertilizedAt, ')
          ..write('unfertilizedAt: $unfertilizedAt, ')
          ..write('fledgedAt: $fledgedAt, ')
          ..write('diedAt: $diedAt, ')
          ..write('status: $status, ')
          ..write('ringnumber: $ringnumber, ')
          ..write('color: $color, ')
          ..write('cage: $cage, ')
          ..write('species: $species, ')
          ..write('birdId: $birdId, ')
          ..write('notes: $notes, ')
          ..write('created: $created, ')
          ..write('updated: $updated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      brood,
      number,
      laidAt,
      hatchedAt,
      fertilizedAt,
      unfertilizedAt,
      fledgedAt,
      diedAt,
      status,
      ringnumber,
      color,
      cage,
      species,
      birdId,
      notes,
      created,
      updated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Egg &&
          other.id == this.id &&
          other.brood == this.brood &&
          other.number == this.number &&
          other.laidAt == this.laidAt &&
          other.hatchedAt == this.hatchedAt &&
          other.fertilizedAt == this.fertilizedAt &&
          other.unfertilizedAt == this.unfertilizedAt &&
          other.fledgedAt == this.fledgedAt &&
          other.diedAt == this.diedAt &&
          other.status == this.status &&
          other.ringnumber == this.ringnumber &&
          other.color == this.color &&
          other.cage == this.cage &&
          other.species == this.species &&
          other.birdId == this.birdId &&
          other.notes == this.notes &&
          other.created == this.created &&
          other.updated == this.updated);
}

class EggsCompanion extends UpdateCompanion<Egg> {
  final Value<String> id;
  final Value<String> brood;
  final Value<int> number;
  final Value<DateTime> laidAt;
  final Value<DateTime?> hatchedAt;
  final Value<DateTime?> fertilizedAt;
  final Value<DateTime?> unfertilizedAt;
  final Value<DateTime?> fledgedAt;
  final Value<DateTime?> diedAt;
  final Value<String> status;
  final Value<String?> ringnumber;
  final Value<String?> color;
  final Value<String?> cage;
  final Value<String?> species;
  final Value<String?> birdId;
  final Value<String?> notes;
  final Value<DateTime?> created;
  final Value<DateTime?> updated;
  final Value<int> rowid;
  const EggsCompanion({
    this.id = const Value.absent(),
    this.brood = const Value.absent(),
    this.number = const Value.absent(),
    this.laidAt = const Value.absent(),
    this.hatchedAt = const Value.absent(),
    this.fertilizedAt = const Value.absent(),
    this.unfertilizedAt = const Value.absent(),
    this.fledgedAt = const Value.absent(),
    this.diedAt = const Value.absent(),
    this.status = const Value.absent(),
    this.ringnumber = const Value.absent(),
    this.color = const Value.absent(),
    this.cage = const Value.absent(),
    this.species = const Value.absent(),
    this.birdId = const Value.absent(),
    this.notes = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EggsCompanion.insert({
    required String id,
    required String brood,
    required int number,
    required DateTime laidAt,
    this.hatchedAt = const Value.absent(),
    this.fertilizedAt = const Value.absent(),
    this.unfertilizedAt = const Value.absent(),
    this.fledgedAt = const Value.absent(),
    this.diedAt = const Value.absent(),
    this.status = const Value.absent(),
    this.ringnumber = const Value.absent(),
    this.color = const Value.absent(),
    this.cage = const Value.absent(),
    this.species = const Value.absent(),
    this.birdId = const Value.absent(),
    this.notes = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        brood = Value(brood),
        number = Value(number),
        laidAt = Value(laidAt);
  static Insertable<Egg> custom({
    Expression<String>? id,
    Expression<String>? brood,
    Expression<int>? number,
    Expression<DateTime>? laidAt,
    Expression<DateTime>? hatchedAt,
    Expression<DateTime>? fertilizedAt,
    Expression<DateTime>? unfertilizedAt,
    Expression<DateTime>? fledgedAt,
    Expression<DateTime>? diedAt,
    Expression<String>? status,
    Expression<String>? ringnumber,
    Expression<String>? color,
    Expression<String>? cage,
    Expression<String>? species,
    Expression<String>? birdId,
    Expression<String>? notes,
    Expression<DateTime>? created,
    Expression<DateTime>? updated,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (brood != null) 'brood': brood,
      if (number != null) 'number': number,
      if (laidAt != null) 'laid_at': laidAt,
      if (hatchedAt != null) 'hatched_at': hatchedAt,
      if (fertilizedAt != null) 'fertilized_at': fertilizedAt,
      if (unfertilizedAt != null) 'unfertilized_at': unfertilizedAt,
      if (fledgedAt != null) 'fledged_at': fledgedAt,
      if (diedAt != null) 'died_at': diedAt,
      if (status != null) 'status': status,
      if (ringnumber != null) 'ringnumber': ringnumber,
      if (color != null) 'color': color,
      if (cage != null) 'cage': cage,
      if (species != null) 'species': species,
      if (birdId != null) 'bird_id': birdId,
      if (notes != null) 'notes': notes,
      if (created != null) 'created': created,
      if (updated != null) 'updated': updated,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EggsCompanion copyWith(
      {Value<String>? id,
      Value<String>? brood,
      Value<int>? number,
      Value<DateTime>? laidAt,
      Value<DateTime?>? hatchedAt,
      Value<DateTime?>? fertilizedAt,
      Value<DateTime?>? unfertilizedAt,
      Value<DateTime?>? fledgedAt,
      Value<DateTime?>? diedAt,
      Value<String>? status,
      Value<String?>? ringnumber,
      Value<String?>? color,
      Value<String?>? cage,
      Value<String?>? species,
      Value<String?>? birdId,
      Value<String?>? notes,
      Value<DateTime?>? created,
      Value<DateTime?>? updated,
      Value<int>? rowid}) {
    return EggsCompanion(
      id: id ?? this.id,
      brood: brood ?? this.brood,
      number: number ?? this.number,
      laidAt: laidAt ?? this.laidAt,
      hatchedAt: hatchedAt ?? this.hatchedAt,
      fertilizedAt: fertilizedAt ?? this.fertilizedAt,
      unfertilizedAt: unfertilizedAt ?? this.unfertilizedAt,
      fledgedAt: fledgedAt ?? this.fledgedAt,
      diedAt: diedAt ?? this.diedAt,
      status: status ?? this.status,
      ringnumber: ringnumber ?? this.ringnumber,
      color: color ?? this.color,
      cage: cage ?? this.cage,
      species: species ?? this.species,
      birdId: birdId ?? this.birdId,
      notes: notes ?? this.notes,
      created: created ?? this.created,
      updated: updated ?? this.updated,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (brood.present) {
      map['brood'] = Variable<String>(brood.value);
    }
    if (number.present) {
      map['number'] = Variable<int>(number.value);
    }
    if (laidAt.present) {
      map['laid_at'] = Variable<DateTime>(laidAt.value);
    }
    if (hatchedAt.present) {
      map['hatched_at'] = Variable<DateTime>(hatchedAt.value);
    }
    if (fertilizedAt.present) {
      map['fertilized_at'] = Variable<DateTime>(fertilizedAt.value);
    }
    if (unfertilizedAt.present) {
      map['unfertilized_at'] = Variable<DateTime>(unfertilizedAt.value);
    }
    if (fledgedAt.present) {
      map['fledged_at'] = Variable<DateTime>(fledgedAt.value);
    }
    if (diedAt.present) {
      map['died_at'] = Variable<DateTime>(diedAt.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (ringnumber.present) {
      map['ringnumber'] = Variable<String>(ringnumber.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (cage.present) {
      map['cage'] = Variable<String>(cage.value);
    }
    if (species.present) {
      map['species'] = Variable<String>(species.value);
    }
    if (birdId.present) {
      map['bird_id'] = Variable<String>(birdId.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (created.present) {
      map['created'] = Variable<DateTime>(created.value);
    }
    if (updated.present) {
      map['updated'] = Variable<DateTime>(updated.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EggsCompanion(')
          ..write('id: $id, ')
          ..write('brood: $brood, ')
          ..write('number: $number, ')
          ..write('laidAt: $laidAt, ')
          ..write('hatchedAt: $hatchedAt, ')
          ..write('fertilizedAt: $fertilizedAt, ')
          ..write('unfertilizedAt: $unfertilizedAt, ')
          ..write('fledgedAt: $fledgedAt, ')
          ..write('diedAt: $diedAt, ')
          ..write('status: $status, ')
          ..write('ringnumber: $ringnumber, ')
          ..write('color: $color, ')
          ..write('cage: $cage, ')
          ..write('species: $species, ')
          ..write('birdId: $birdId, ')
          ..write('notes: $notes, ')
          ..write('created: $created, ')
          ..write('updated: $updated, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ContactsTable extends Contacts with TableInfo<$ContactsTable, Contact> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ContactsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<String> number = GeneratedColumn<String>(
      'number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cellPhoneNumberMeta =
      const VerificationMeta('cellPhoneNumber');
  @override
  late final GeneratedColumn<String> cellPhoneNumber = GeneratedColumn<String>(
      'cell_phone_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _firstNameMeta =
      const VerificationMeta('firstName');
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
      'first_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lastNameMeta =
      const VerificationMeta('lastName');
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
      'last_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'city', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _countryMeta =
      const VerificationMeta('country');
  @override
  late final GeneratedColumn<String> country = GeneratedColumn<String>(
      'country', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _postalCodeMeta =
      const VerificationMeta('postalCode');
  @override
  late final GeneratedColumn<String> postalCode = GeneratedColumn<String>(
      'postal_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _websiteMeta =
      const VerificationMeta('website');
  @override
  late final GeneratedColumn<String> website = GeneratedColumn<String>(
      'website', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isAppUserMeta =
      const VerificationMeta('isAppUser');
  @override
  late final GeneratedColumn<bool> isAppUser = GeneratedColumn<bool>(
      'is_app_user', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_app_user" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _userMeta = const VerificationMeta('user');
  @override
  late final GeneratedColumn<String> user = GeneratedColumn<String>(
      'user', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdMeta =
      const VerificationMeta('created');
  @override
  late final GeneratedColumn<DateTime> created = GeneratedColumn<DateTime>(
      'created', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _updatedMeta =
      const VerificationMeta('updated');
  @override
  late final GeneratedColumn<DateTime> updated = GeneratedColumn<DateTime>(
      'updated', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        number,
        phone,
        cellPhoneNumber,
        title,
        firstName,
        lastName,
        email,
        address,
        city,
        country,
        postalCode,
        website,
        isAppUser,
        user,
        created,
        updated
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'contacts';
  @override
  VerificationContext validateIntegrity(Insertable<Contact> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    }
    if (data.containsKey('cell_phone_number')) {
      context.handle(
          _cellPhoneNumberMeta,
          cellPhoneNumber.isAcceptableOrUnknown(
              data['cell_phone_number']!, _cellPhoneNumberMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('first_name')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta));
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['country']!, _countryMeta));
    }
    if (data.containsKey('postal_code')) {
      context.handle(
          _postalCodeMeta,
          postalCode.isAcceptableOrUnknown(
              data['postal_code']!, _postalCodeMeta));
    }
    if (data.containsKey('website')) {
      context.handle(_websiteMeta,
          website.isAcceptableOrUnknown(data['website']!, _websiteMeta));
    }
    if (data.containsKey('is_app_user')) {
      context.handle(
          _isAppUserMeta,
          isAppUser.isAcceptableOrUnknown(
              data['is_app_user']!, _isAppUserMeta));
    }
    if (data.containsKey('user')) {
      context.handle(
          _userMeta, user.isAcceptableOrUnknown(data['user']!, _userMeta));
    }
    if (data.containsKey('created')) {
      context.handle(_createdMeta,
          created.isAcceptableOrUnknown(data['created']!, _createdMeta));
    }
    if (data.containsKey('updated')) {
      context.handle(_updatedMeta,
          updated.isAcceptableOrUnknown(data['updated']!, _updatedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Contact map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Contact(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}number']),
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone']),
      cellPhoneNumber: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}cell_phone_number']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
      firstName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}first_name']),
      lastName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_name']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address']),
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}city']),
      country: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}country']),
      postalCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}postal_code']),
      website: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}website']),
      isAppUser: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_app_user'])!,
      user: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user']),
      created: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created']),
      updated: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated']),
    );
  }

  @override
  $ContactsTable createAlias(String alias) {
    return $ContactsTable(attachedDatabase, alias);
  }
}

class Contact extends DataClass implements Insertable<Contact> {
  final String id;
  final String? number;
  final String? phone;
  final String? cellPhoneNumber;
  final String? title;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? address;
  final String? city;
  final String? country;
  final String? postalCode;
  final String? website;
  final bool isAppUser;
  final String? user;
  final DateTime? created;
  final DateTime? updated;
  const Contact(
      {required this.id,
      this.number,
      this.phone,
      this.cellPhoneNumber,
      this.title,
      this.firstName,
      this.lastName,
      this.email,
      this.address,
      this.city,
      this.country,
      this.postalCode,
      this.website,
      required this.isAppUser,
      this.user,
      this.created,
      this.updated});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || number != null) {
      map['number'] = Variable<String>(number);
    }
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || cellPhoneNumber != null) {
      map['cell_phone_number'] = Variable<String>(cellPhoneNumber);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || firstName != null) {
      map['first_name'] = Variable<String>(firstName);
    }
    if (!nullToAbsent || lastName != null) {
      map['last_name'] = Variable<String>(lastName);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String>(city);
    }
    if (!nullToAbsent || country != null) {
      map['country'] = Variable<String>(country);
    }
    if (!nullToAbsent || postalCode != null) {
      map['postal_code'] = Variable<String>(postalCode);
    }
    if (!nullToAbsent || website != null) {
      map['website'] = Variable<String>(website);
    }
    map['is_app_user'] = Variable<bool>(isAppUser);
    if (!nullToAbsent || user != null) {
      map['user'] = Variable<String>(user);
    }
    if (!nullToAbsent || created != null) {
      map['created'] = Variable<DateTime>(created);
    }
    if (!nullToAbsent || updated != null) {
      map['updated'] = Variable<DateTime>(updated);
    }
    return map;
  }

  ContactsCompanion toCompanion(bool nullToAbsent) {
    return ContactsCompanion(
      id: Value(id),
      number:
          number == null && nullToAbsent ? const Value.absent() : Value(number),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      cellPhoneNumber: cellPhoneNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(cellPhoneNumber),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      firstName: firstName == null && nullToAbsent
          ? const Value.absent()
          : Value(firstName),
      lastName: lastName == null && nullToAbsent
          ? const Value.absent()
          : Value(lastName),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      country: country == null && nullToAbsent
          ? const Value.absent()
          : Value(country),
      postalCode: postalCode == null && nullToAbsent
          ? const Value.absent()
          : Value(postalCode),
      website: website == null && nullToAbsent
          ? const Value.absent()
          : Value(website),
      isAppUser: Value(isAppUser),
      user: user == null && nullToAbsent ? const Value.absent() : Value(user),
      created: created == null && nullToAbsent
          ? const Value.absent()
          : Value(created),
      updated: updated == null && nullToAbsent
          ? const Value.absent()
          : Value(updated),
    );
  }

  factory Contact.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Contact(
      id: serializer.fromJson<String>(json['id']),
      number: serializer.fromJson<String?>(json['number']),
      phone: serializer.fromJson<String?>(json['phone']),
      cellPhoneNumber: serializer.fromJson<String?>(json['cellPhoneNumber']),
      title: serializer.fromJson<String?>(json['title']),
      firstName: serializer.fromJson<String?>(json['firstName']),
      lastName: serializer.fromJson<String?>(json['lastName']),
      email: serializer.fromJson<String?>(json['email']),
      address: serializer.fromJson<String?>(json['address']),
      city: serializer.fromJson<String?>(json['city']),
      country: serializer.fromJson<String?>(json['country']),
      postalCode: serializer.fromJson<String?>(json['postalCode']),
      website: serializer.fromJson<String?>(json['website']),
      isAppUser: serializer.fromJson<bool>(json['isAppUser']),
      user: serializer.fromJson<String?>(json['user']),
      created: serializer.fromJson<DateTime?>(json['created']),
      updated: serializer.fromJson<DateTime?>(json['updated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'number': serializer.toJson<String?>(number),
      'phone': serializer.toJson<String?>(phone),
      'cellPhoneNumber': serializer.toJson<String?>(cellPhoneNumber),
      'title': serializer.toJson<String?>(title),
      'firstName': serializer.toJson<String?>(firstName),
      'lastName': serializer.toJson<String?>(lastName),
      'email': serializer.toJson<String?>(email),
      'address': serializer.toJson<String?>(address),
      'city': serializer.toJson<String?>(city),
      'country': serializer.toJson<String?>(country),
      'postalCode': serializer.toJson<String?>(postalCode),
      'website': serializer.toJson<String?>(website),
      'isAppUser': serializer.toJson<bool>(isAppUser),
      'user': serializer.toJson<String?>(user),
      'created': serializer.toJson<DateTime?>(created),
      'updated': serializer.toJson<DateTime?>(updated),
    };
  }

  Contact copyWith(
          {String? id,
          Value<String?> number = const Value.absent(),
          Value<String?> phone = const Value.absent(),
          Value<String?> cellPhoneNumber = const Value.absent(),
          Value<String?> title = const Value.absent(),
          Value<String?> firstName = const Value.absent(),
          Value<String?> lastName = const Value.absent(),
          Value<String?> email = const Value.absent(),
          Value<String?> address = const Value.absent(),
          Value<String?> city = const Value.absent(),
          Value<String?> country = const Value.absent(),
          Value<String?> postalCode = const Value.absent(),
          Value<String?> website = const Value.absent(),
          bool? isAppUser,
          Value<String?> user = const Value.absent(),
          Value<DateTime?> created = const Value.absent(),
          Value<DateTime?> updated = const Value.absent()}) =>
      Contact(
        id: id ?? this.id,
        number: number.present ? number.value : this.number,
        phone: phone.present ? phone.value : this.phone,
        cellPhoneNumber: cellPhoneNumber.present
            ? cellPhoneNumber.value
            : this.cellPhoneNumber,
        title: title.present ? title.value : this.title,
        firstName: firstName.present ? firstName.value : this.firstName,
        lastName: lastName.present ? lastName.value : this.lastName,
        email: email.present ? email.value : this.email,
        address: address.present ? address.value : this.address,
        city: city.present ? city.value : this.city,
        country: country.present ? country.value : this.country,
        postalCode: postalCode.present ? postalCode.value : this.postalCode,
        website: website.present ? website.value : this.website,
        isAppUser: isAppUser ?? this.isAppUser,
        user: user.present ? user.value : this.user,
        created: created.present ? created.value : this.created,
        updated: updated.present ? updated.value : this.updated,
      );
  Contact copyWithCompanion(ContactsCompanion data) {
    return Contact(
      id: data.id.present ? data.id.value : this.id,
      number: data.number.present ? data.number.value : this.number,
      phone: data.phone.present ? data.phone.value : this.phone,
      cellPhoneNumber: data.cellPhoneNumber.present
          ? data.cellPhoneNumber.value
          : this.cellPhoneNumber,
      title: data.title.present ? data.title.value : this.title,
      firstName: data.firstName.present ? data.firstName.value : this.firstName,
      lastName: data.lastName.present ? data.lastName.value : this.lastName,
      email: data.email.present ? data.email.value : this.email,
      address: data.address.present ? data.address.value : this.address,
      city: data.city.present ? data.city.value : this.city,
      country: data.country.present ? data.country.value : this.country,
      postalCode:
          data.postalCode.present ? data.postalCode.value : this.postalCode,
      website: data.website.present ? data.website.value : this.website,
      isAppUser: data.isAppUser.present ? data.isAppUser.value : this.isAppUser,
      user: data.user.present ? data.user.value : this.user,
      created: data.created.present ? data.created.value : this.created,
      updated: data.updated.present ? data.updated.value : this.updated,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Contact(')
          ..write('id: $id, ')
          ..write('number: $number, ')
          ..write('phone: $phone, ')
          ..write('cellPhoneNumber: $cellPhoneNumber, ')
          ..write('title: $title, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('email: $email, ')
          ..write('address: $address, ')
          ..write('city: $city, ')
          ..write('country: $country, ')
          ..write('postalCode: $postalCode, ')
          ..write('website: $website, ')
          ..write('isAppUser: $isAppUser, ')
          ..write('user: $user, ')
          ..write('created: $created, ')
          ..write('updated: $updated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      number,
      phone,
      cellPhoneNumber,
      title,
      firstName,
      lastName,
      email,
      address,
      city,
      country,
      postalCode,
      website,
      isAppUser,
      user,
      created,
      updated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Contact &&
          other.id == this.id &&
          other.number == this.number &&
          other.phone == this.phone &&
          other.cellPhoneNumber == this.cellPhoneNumber &&
          other.title == this.title &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.email == this.email &&
          other.address == this.address &&
          other.city == this.city &&
          other.country == this.country &&
          other.postalCode == this.postalCode &&
          other.website == this.website &&
          other.isAppUser == this.isAppUser &&
          other.user == this.user &&
          other.created == this.created &&
          other.updated == this.updated);
}

class ContactsCompanion extends UpdateCompanion<Contact> {
  final Value<String> id;
  final Value<String?> number;
  final Value<String?> phone;
  final Value<String?> cellPhoneNumber;
  final Value<String?> title;
  final Value<String?> firstName;
  final Value<String?> lastName;
  final Value<String?> email;
  final Value<String?> address;
  final Value<String?> city;
  final Value<String?> country;
  final Value<String?> postalCode;
  final Value<String?> website;
  final Value<bool> isAppUser;
  final Value<String?> user;
  final Value<DateTime?> created;
  final Value<DateTime?> updated;
  final Value<int> rowid;
  const ContactsCompanion({
    this.id = const Value.absent(),
    this.number = const Value.absent(),
    this.phone = const Value.absent(),
    this.cellPhoneNumber = const Value.absent(),
    this.title = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.email = const Value.absent(),
    this.address = const Value.absent(),
    this.city = const Value.absent(),
    this.country = const Value.absent(),
    this.postalCode = const Value.absent(),
    this.website = const Value.absent(),
    this.isAppUser = const Value.absent(),
    this.user = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ContactsCompanion.insert({
    required String id,
    this.number = const Value.absent(),
    this.phone = const Value.absent(),
    this.cellPhoneNumber = const Value.absent(),
    this.title = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.email = const Value.absent(),
    this.address = const Value.absent(),
    this.city = const Value.absent(),
    this.country = const Value.absent(),
    this.postalCode = const Value.absent(),
    this.website = const Value.absent(),
    this.isAppUser = const Value.absent(),
    this.user = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<Contact> custom({
    Expression<String>? id,
    Expression<String>? number,
    Expression<String>? phone,
    Expression<String>? cellPhoneNumber,
    Expression<String>? title,
    Expression<String>? firstName,
    Expression<String>? lastName,
    Expression<String>? email,
    Expression<String>? address,
    Expression<String>? city,
    Expression<String>? country,
    Expression<String>? postalCode,
    Expression<String>? website,
    Expression<bool>? isAppUser,
    Expression<String>? user,
    Expression<DateTime>? created,
    Expression<DateTime>? updated,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (number != null) 'number': number,
      if (phone != null) 'phone': phone,
      if (cellPhoneNumber != null) 'cell_phone_number': cellPhoneNumber,
      if (title != null) 'title': title,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (email != null) 'email': email,
      if (address != null) 'address': address,
      if (city != null) 'city': city,
      if (country != null) 'country': country,
      if (postalCode != null) 'postal_code': postalCode,
      if (website != null) 'website': website,
      if (isAppUser != null) 'is_app_user': isAppUser,
      if (user != null) 'user': user,
      if (created != null) 'created': created,
      if (updated != null) 'updated': updated,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ContactsCompanion copyWith(
      {Value<String>? id,
      Value<String?>? number,
      Value<String?>? phone,
      Value<String?>? cellPhoneNumber,
      Value<String?>? title,
      Value<String?>? firstName,
      Value<String?>? lastName,
      Value<String?>? email,
      Value<String?>? address,
      Value<String?>? city,
      Value<String?>? country,
      Value<String?>? postalCode,
      Value<String?>? website,
      Value<bool>? isAppUser,
      Value<String?>? user,
      Value<DateTime?>? created,
      Value<DateTime?>? updated,
      Value<int>? rowid}) {
    return ContactsCompanion(
      id: id ?? this.id,
      number: number ?? this.number,
      phone: phone ?? this.phone,
      cellPhoneNumber: cellPhoneNumber ?? this.cellPhoneNumber,
      title: title ?? this.title,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      address: address ?? this.address,
      city: city ?? this.city,
      country: country ?? this.country,
      postalCode: postalCode ?? this.postalCode,
      website: website ?? this.website,
      isAppUser: isAppUser ?? this.isAppUser,
      user: user ?? this.user,
      created: created ?? this.created,
      updated: updated ?? this.updated,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (number.present) {
      map['number'] = Variable<String>(number.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (cellPhoneNumber.present) {
      map['cell_phone_number'] = Variable<String>(cellPhoneNumber.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (postalCode.present) {
      map['postal_code'] = Variable<String>(postalCode.value);
    }
    if (website.present) {
      map['website'] = Variable<String>(website.value);
    }
    if (isAppUser.present) {
      map['is_app_user'] = Variable<bool>(isAppUser.value);
    }
    if (user.present) {
      map['user'] = Variable<String>(user.value);
    }
    if (created.present) {
      map['created'] = Variable<DateTime>(created.value);
    }
    if (updated.present) {
      map['updated'] = Variable<DateTime>(updated.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContactsCompanion(')
          ..write('id: $id, ')
          ..write('number: $number, ')
          ..write('phone: $phone, ')
          ..write('cellPhoneNumber: $cellPhoneNumber, ')
          ..write('title: $title, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('email: $email, ')
          ..write('address: $address, ')
          ..write('city: $city, ')
          ..write('country: $country, ')
          ..write('postalCode: $postalCode, ')
          ..write('website: $website, ')
          ..write('isAppUser: $isAppUser, ')
          ..write('user: $user, ')
          ..write('created: $created, ')
          ..write('updated: $updated, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FinancesTable extends Finances with TableInfo<$FinancesTable, Finance> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FinancesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _birdMeta = const VerificationMeta('bird');
  @override
  late final GeneratedColumn<String> bird = GeneratedColumn<String>(
      'bird', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _createdMeta =
      const VerificationMeta('created');
  @override
  late final GeneratedColumn<DateTime> created = GeneratedColumn<DateTime>(
      'created', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _updatedMeta =
      const VerificationMeta('updated');
  @override
  late final GeneratedColumn<DateTime> updated = GeneratedColumn<DateTime>(
      'updated', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, category, title, amount, notes, bird, date, created, updated];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'finances';
  @override
  VerificationContext validateIntegrity(Insertable<Finance> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('bird')) {
      context.handle(
          _birdMeta, bird.isAcceptableOrUnknown(data['bird']!, _birdMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    }
    if (data.containsKey('created')) {
      context.handle(_createdMeta,
          created.isAcceptableOrUnknown(data['created']!, _createdMeta));
    }
    if (data.containsKey('updated')) {
      context.handle(_updatedMeta,
          updated.isAcceptableOrUnknown(data['updated']!, _updatedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Finance map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Finance(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount'])!,
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      bird: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bird']),
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date']),
      created: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created']),
      updated: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated']),
    );
  }

  @override
  $FinancesTable createAlias(String alias) {
    return $FinancesTable(attachedDatabase, alias);
  }
}

class Finance extends DataClass implements Insertable<Finance> {
  final String id;
  final String category;
  final String title;
  final double amount;
  final String? notes;
  final String? bird;
  final DateTime? date;
  final DateTime? created;
  final DateTime? updated;
  const Finance(
      {required this.id,
      required this.category,
      required this.title,
      required this.amount,
      this.notes,
      this.bird,
      this.date,
      this.created,
      this.updated});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['category'] = Variable<String>(category);
    map['title'] = Variable<String>(title);
    map['amount'] = Variable<double>(amount);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    if (!nullToAbsent || bird != null) {
      map['bird'] = Variable<String>(bird);
    }
    if (!nullToAbsent || date != null) {
      map['date'] = Variable<DateTime>(date);
    }
    if (!nullToAbsent || created != null) {
      map['created'] = Variable<DateTime>(created);
    }
    if (!nullToAbsent || updated != null) {
      map['updated'] = Variable<DateTime>(updated);
    }
    return map;
  }

  FinancesCompanion toCompanion(bool nullToAbsent) {
    return FinancesCompanion(
      id: Value(id),
      category: Value(category),
      title: Value(title),
      amount: Value(amount),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      bird: bird == null && nullToAbsent ? const Value.absent() : Value(bird),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      created: created == null && nullToAbsent
          ? const Value.absent()
          : Value(created),
      updated: updated == null && nullToAbsent
          ? const Value.absent()
          : Value(updated),
    );
  }

  factory Finance.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Finance(
      id: serializer.fromJson<String>(json['id']),
      category: serializer.fromJson<String>(json['category']),
      title: serializer.fromJson<String>(json['title']),
      amount: serializer.fromJson<double>(json['amount']),
      notes: serializer.fromJson<String?>(json['notes']),
      bird: serializer.fromJson<String?>(json['bird']),
      date: serializer.fromJson<DateTime?>(json['date']),
      created: serializer.fromJson<DateTime?>(json['created']),
      updated: serializer.fromJson<DateTime?>(json['updated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'category': serializer.toJson<String>(category),
      'title': serializer.toJson<String>(title),
      'amount': serializer.toJson<double>(amount),
      'notes': serializer.toJson<String?>(notes),
      'bird': serializer.toJson<String?>(bird),
      'date': serializer.toJson<DateTime?>(date),
      'created': serializer.toJson<DateTime?>(created),
      'updated': serializer.toJson<DateTime?>(updated),
    };
  }

  Finance copyWith(
          {String? id,
          String? category,
          String? title,
          double? amount,
          Value<String?> notes = const Value.absent(),
          Value<String?> bird = const Value.absent(),
          Value<DateTime?> date = const Value.absent(),
          Value<DateTime?> created = const Value.absent(),
          Value<DateTime?> updated = const Value.absent()}) =>
      Finance(
        id: id ?? this.id,
        category: category ?? this.category,
        title: title ?? this.title,
        amount: amount ?? this.amount,
        notes: notes.present ? notes.value : this.notes,
        bird: bird.present ? bird.value : this.bird,
        date: date.present ? date.value : this.date,
        created: created.present ? created.value : this.created,
        updated: updated.present ? updated.value : this.updated,
      );
  Finance copyWithCompanion(FinancesCompanion data) {
    return Finance(
      id: data.id.present ? data.id.value : this.id,
      category: data.category.present ? data.category.value : this.category,
      title: data.title.present ? data.title.value : this.title,
      amount: data.amount.present ? data.amount.value : this.amount,
      notes: data.notes.present ? data.notes.value : this.notes,
      bird: data.bird.present ? data.bird.value : this.bird,
      date: data.date.present ? data.date.value : this.date,
      created: data.created.present ? data.created.value : this.created,
      updated: data.updated.present ? data.updated.value : this.updated,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Finance(')
          ..write('id: $id, ')
          ..write('category: $category, ')
          ..write('title: $title, ')
          ..write('amount: $amount, ')
          ..write('notes: $notes, ')
          ..write('bird: $bird, ')
          ..write('date: $date, ')
          ..write('created: $created, ')
          ..write('updated: $updated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, category, title, amount, notes, bird, date, created, updated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Finance &&
          other.id == this.id &&
          other.category == this.category &&
          other.title == this.title &&
          other.amount == this.amount &&
          other.notes == this.notes &&
          other.bird == this.bird &&
          other.date == this.date &&
          other.created == this.created &&
          other.updated == this.updated);
}

class FinancesCompanion extends UpdateCompanion<Finance> {
  final Value<String> id;
  final Value<String> category;
  final Value<String> title;
  final Value<double> amount;
  final Value<String?> notes;
  final Value<String?> bird;
  final Value<DateTime?> date;
  final Value<DateTime?> created;
  final Value<DateTime?> updated;
  final Value<int> rowid;
  const FinancesCompanion({
    this.id = const Value.absent(),
    this.category = const Value.absent(),
    this.title = const Value.absent(),
    this.amount = const Value.absent(),
    this.notes = const Value.absent(),
    this.bird = const Value.absent(),
    this.date = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FinancesCompanion.insert({
    required String id,
    required String category,
    required String title,
    required double amount,
    this.notes = const Value.absent(),
    this.bird = const Value.absent(),
    this.date = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        category = Value(category),
        title = Value(title),
        amount = Value(amount);
  static Insertable<Finance> custom({
    Expression<String>? id,
    Expression<String>? category,
    Expression<String>? title,
    Expression<double>? amount,
    Expression<String>? notes,
    Expression<String>? bird,
    Expression<DateTime>? date,
    Expression<DateTime>? created,
    Expression<DateTime>? updated,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (category != null) 'category': category,
      if (title != null) 'title': title,
      if (amount != null) 'amount': amount,
      if (notes != null) 'notes': notes,
      if (bird != null) 'bird': bird,
      if (date != null) 'date': date,
      if (created != null) 'created': created,
      if (updated != null) 'updated': updated,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FinancesCompanion copyWith(
      {Value<String>? id,
      Value<String>? category,
      Value<String>? title,
      Value<double>? amount,
      Value<String?>? notes,
      Value<String?>? bird,
      Value<DateTime?>? date,
      Value<DateTime?>? created,
      Value<DateTime?>? updated,
      Value<int>? rowid}) {
    return FinancesCompanion(
      id: id ?? this.id,
      category: category ?? this.category,
      title: title ?? this.title,
      amount: amount ?? this.amount,
      notes: notes ?? this.notes,
      bird: bird ?? this.bird,
      date: date ?? this.date,
      created: created ?? this.created,
      updated: updated ?? this.updated,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (bird.present) {
      map['bird'] = Variable<String>(bird.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (created.present) {
      map['created'] = Variable<DateTime>(created.value);
    }
    if (updated.present) {
      map['updated'] = Variable<DateTime>(updated.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FinancesCompanion(')
          ..write('id: $id, ')
          ..write('category: $category, ')
          ..write('title: $title, ')
          ..write('amount: $amount, ')
          ..write('notes: $notes, ')
          ..write('bird: $bird, ')
          ..write('date: $date, ')
          ..write('created: $created, ')
          ..write('updated: $updated, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FinanceCategoriesTable extends FinanceCategories
    with TableInfo<$FinanceCategoriesTable, FinanceCategory> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FinanceCategoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
      'color', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _kindMeta = const VerificationMeta('kind');
  @override
  late final GeneratedColumn<String> kind = GeneratedColumn<String>(
      'kind', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdMeta =
      const VerificationMeta('created');
  @override
  late final GeneratedColumn<DateTime> created = GeneratedColumn<DateTime>(
      'created', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _updatedMeta =
      const VerificationMeta('updated');
  @override
  late final GeneratedColumn<DateTime> updated = GeneratedColumn<DateTime>(
      'updated', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, color, kind, notes, created, updated];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'finance_categories';
  @override
  VerificationContext validateIntegrity(Insertable<FinanceCategory> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('kind')) {
      context.handle(
          _kindMeta, kind.isAcceptableOrUnknown(data['kind']!, _kindMeta));
    } else if (isInserting) {
      context.missing(_kindMeta);
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('created')) {
      context.handle(_createdMeta,
          created.isAcceptableOrUnknown(data['created']!, _createdMeta));
    }
    if (data.containsKey('updated')) {
      context.handle(_updatedMeta,
          updated.isAcceptableOrUnknown(data['updated']!, _updatedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FinanceCategory map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FinanceCategory(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color'])!,
      kind: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kind'])!,
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      created: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created']),
      updated: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated']),
    );
  }

  @override
  $FinanceCategoriesTable createAlias(String alias) {
    return $FinanceCategoriesTable(attachedDatabase, alias);
  }
}

class FinanceCategory extends DataClass implements Insertable<FinanceCategory> {
  final String id;
  final String name;
  final String color;
  final String kind;
  final String? notes;
  final DateTime? created;
  final DateTime? updated;
  const FinanceCategory(
      {required this.id,
      required this.name,
      required this.color,
      required this.kind,
      this.notes,
      this.created,
      this.updated});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['color'] = Variable<String>(color);
    map['kind'] = Variable<String>(kind);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    if (!nullToAbsent || created != null) {
      map['created'] = Variable<DateTime>(created);
    }
    if (!nullToAbsent || updated != null) {
      map['updated'] = Variable<DateTime>(updated);
    }
    return map;
  }

  FinanceCategoriesCompanion toCompanion(bool nullToAbsent) {
    return FinanceCategoriesCompanion(
      id: Value(id),
      name: Value(name),
      color: Value(color),
      kind: Value(kind),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      created: created == null && nullToAbsent
          ? const Value.absent()
          : Value(created),
      updated: updated == null && nullToAbsent
          ? const Value.absent()
          : Value(updated),
    );
  }

  factory FinanceCategory.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FinanceCategory(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      color: serializer.fromJson<String>(json['color']),
      kind: serializer.fromJson<String>(json['kind']),
      notes: serializer.fromJson<String?>(json['notes']),
      created: serializer.fromJson<DateTime?>(json['created']),
      updated: serializer.fromJson<DateTime?>(json['updated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'color': serializer.toJson<String>(color),
      'kind': serializer.toJson<String>(kind),
      'notes': serializer.toJson<String?>(notes),
      'created': serializer.toJson<DateTime?>(created),
      'updated': serializer.toJson<DateTime?>(updated),
    };
  }

  FinanceCategory copyWith(
          {String? id,
          String? name,
          String? color,
          String? kind,
          Value<String?> notes = const Value.absent(),
          Value<DateTime?> created = const Value.absent(),
          Value<DateTime?> updated = const Value.absent()}) =>
      FinanceCategory(
        id: id ?? this.id,
        name: name ?? this.name,
        color: color ?? this.color,
        kind: kind ?? this.kind,
        notes: notes.present ? notes.value : this.notes,
        created: created.present ? created.value : this.created,
        updated: updated.present ? updated.value : this.updated,
      );
  FinanceCategory copyWithCompanion(FinanceCategoriesCompanion data) {
    return FinanceCategory(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      color: data.color.present ? data.color.value : this.color,
      kind: data.kind.present ? data.kind.value : this.kind,
      notes: data.notes.present ? data.notes.value : this.notes,
      created: data.created.present ? data.created.value : this.created,
      updated: data.updated.present ? data.updated.value : this.updated,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FinanceCategory(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('kind: $kind, ')
          ..write('notes: $notes, ')
          ..write('created: $created, ')
          ..write('updated: $updated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, color, kind, notes, created, updated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FinanceCategory &&
          other.id == this.id &&
          other.name == this.name &&
          other.color == this.color &&
          other.kind == this.kind &&
          other.notes == this.notes &&
          other.created == this.created &&
          other.updated == this.updated);
}

class FinanceCategoriesCompanion extends UpdateCompanion<FinanceCategory> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> color;
  final Value<String> kind;
  final Value<String?> notes;
  final Value<DateTime?> created;
  final Value<DateTime?> updated;
  final Value<int> rowid;
  const FinanceCategoriesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.color = const Value.absent(),
    this.kind = const Value.absent(),
    this.notes = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FinanceCategoriesCompanion.insert({
    required String id,
    required String name,
    required String color,
    required String kind,
    this.notes = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        color = Value(color),
        kind = Value(kind);
  static Insertable<FinanceCategory> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? color,
    Expression<String>? kind,
    Expression<String>? notes,
    Expression<DateTime>? created,
    Expression<DateTime>? updated,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (color != null) 'color': color,
      if (kind != null) 'kind': kind,
      if (notes != null) 'notes': notes,
      if (created != null) 'created': created,
      if (updated != null) 'updated': updated,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FinanceCategoriesCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<String>? color,
      Value<String>? kind,
      Value<String?>? notes,
      Value<DateTime?>? created,
      Value<DateTime?>? updated,
      Value<int>? rowid}) {
    return FinanceCategoriesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
      kind: kind ?? this.kind,
      notes: notes ?? this.notes,
      created: created ?? this.created,
      updated: updated ?? this.updated,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (kind.present) {
      map['kind'] = Variable<String>(kind.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (created.present) {
      map['created'] = Variable<DateTime>(created.value);
    }
    if (updated.present) {
      map['updated'] = Variable<DateTime>(updated.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FinanceCategoriesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color, ')
          ..write('kind: $kind, ')
          ..write('notes: $notes, ')
          ..write('created: $created, ')
          ..write('updated: $updated, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SpeciesTableTable extends SpeciesTable
    with TableInfo<$SpeciesTableTable, SpeciesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SpeciesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _latNameMeta =
      const VerificationMeta('latName');
  @override
  late final GeneratedColumn<String> latName = GeneratedColumn<String>(
      'lat_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _imageUrlMeta =
      const VerificationMeta('imageUrl');
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
      'image_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _incubationDaysMeta =
      const VerificationMeta('incubationDays');
  @override
  late final GeneratedColumn<int> incubationDays = GeneratedColumn<int>(
      'incubation_days', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _fledgeDaysMeta =
      const VerificationMeta('fledgeDays');
  @override
  late final GeneratedColumn<int> fledgeDays = GeneratedColumn<int>(
      'fledge_days', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userMeta = const VerificationMeta('user');
  @override
  late final GeneratedColumn<String> user = GeneratedColumn<String>(
      'user', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdMeta =
      const VerificationMeta('created');
  @override
  late final GeneratedColumn<DateTime> created = GeneratedColumn<DateTime>(
      'created', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _updatedMeta =
      const VerificationMeta('updated');
  @override
  late final GeneratedColumn<DateTime> updated = GeneratedColumn<DateTime>(
      'updated', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        latName,
        imageUrl,
        incubationDays,
        fledgeDays,
        notes,
        user,
        created,
        updated
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'species';
  @override
  VerificationContext validateIntegrity(Insertable<SpeciesTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('lat_name')) {
      context.handle(_latNameMeta,
          latName.isAcceptableOrUnknown(data['lat_name']!, _latNameMeta));
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta));
    }
    if (data.containsKey('incubation_days')) {
      context.handle(
          _incubationDaysMeta,
          incubationDays.isAcceptableOrUnknown(
              data['incubation_days']!, _incubationDaysMeta));
    }
    if (data.containsKey('fledge_days')) {
      context.handle(
          _fledgeDaysMeta,
          fledgeDays.isAcceptableOrUnknown(
              data['fledge_days']!, _fledgeDaysMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('user')) {
      context.handle(
          _userMeta, user.isAcceptableOrUnknown(data['user']!, _userMeta));
    }
    if (data.containsKey('created')) {
      context.handle(_createdMeta,
          created.isAcceptableOrUnknown(data['created']!, _createdMeta));
    }
    if (data.containsKey('updated')) {
      context.handle(_updatedMeta,
          updated.isAcceptableOrUnknown(data['updated']!, _updatedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SpeciesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SpeciesTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      latName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lat_name']),
      imageUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_url']),
      incubationDays: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}incubation_days']),
      fledgeDays: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}fledge_days']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      user: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user']),
      created: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created']),
      updated: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated']),
    );
  }

  @override
  $SpeciesTableTable createAlias(String alias) {
    return $SpeciesTableTable(attachedDatabase, alias);
  }
}

class SpeciesTableData extends DataClass
    implements Insertable<SpeciesTableData> {
  final String id;
  final String? name;
  final String? latName;
  final String? imageUrl;
  final int? incubationDays;
  final int? fledgeDays;
  final String? notes;
  final String? user;
  final DateTime? created;
  final DateTime? updated;
  const SpeciesTableData(
      {required this.id,
      this.name,
      this.latName,
      this.imageUrl,
      this.incubationDays,
      this.fledgeDays,
      this.notes,
      this.user,
      this.created,
      this.updated});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || latName != null) {
      map['lat_name'] = Variable<String>(latName);
    }
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    if (!nullToAbsent || incubationDays != null) {
      map['incubation_days'] = Variable<int>(incubationDays);
    }
    if (!nullToAbsent || fledgeDays != null) {
      map['fledge_days'] = Variable<int>(fledgeDays);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    if (!nullToAbsent || user != null) {
      map['user'] = Variable<String>(user);
    }
    if (!nullToAbsent || created != null) {
      map['created'] = Variable<DateTime>(created);
    }
    if (!nullToAbsent || updated != null) {
      map['updated'] = Variable<DateTime>(updated);
    }
    return map;
  }

  SpeciesTableCompanion toCompanion(bool nullToAbsent) {
    return SpeciesTableCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      latName: latName == null && nullToAbsent
          ? const Value.absent()
          : Value(latName),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      incubationDays: incubationDays == null && nullToAbsent
          ? const Value.absent()
          : Value(incubationDays),
      fledgeDays: fledgeDays == null && nullToAbsent
          ? const Value.absent()
          : Value(fledgeDays),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      user: user == null && nullToAbsent ? const Value.absent() : Value(user),
      created: created == null && nullToAbsent
          ? const Value.absent()
          : Value(created),
      updated: updated == null && nullToAbsent
          ? const Value.absent()
          : Value(updated),
    );
  }

  factory SpeciesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SpeciesTableData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      latName: serializer.fromJson<String?>(json['latName']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      incubationDays: serializer.fromJson<int?>(json['incubationDays']),
      fledgeDays: serializer.fromJson<int?>(json['fledgeDays']),
      notes: serializer.fromJson<String?>(json['notes']),
      user: serializer.fromJson<String?>(json['user']),
      created: serializer.fromJson<DateTime?>(json['created']),
      updated: serializer.fromJson<DateTime?>(json['updated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String?>(name),
      'latName': serializer.toJson<String?>(latName),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'incubationDays': serializer.toJson<int?>(incubationDays),
      'fledgeDays': serializer.toJson<int?>(fledgeDays),
      'notes': serializer.toJson<String?>(notes),
      'user': serializer.toJson<String?>(user),
      'created': serializer.toJson<DateTime?>(created),
      'updated': serializer.toJson<DateTime?>(updated),
    };
  }

  SpeciesTableData copyWith(
          {String? id,
          Value<String?> name = const Value.absent(),
          Value<String?> latName = const Value.absent(),
          Value<String?> imageUrl = const Value.absent(),
          Value<int?> incubationDays = const Value.absent(),
          Value<int?> fledgeDays = const Value.absent(),
          Value<String?> notes = const Value.absent(),
          Value<String?> user = const Value.absent(),
          Value<DateTime?> created = const Value.absent(),
          Value<DateTime?> updated = const Value.absent()}) =>
      SpeciesTableData(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        latName: latName.present ? latName.value : this.latName,
        imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
        incubationDays:
            incubationDays.present ? incubationDays.value : this.incubationDays,
        fledgeDays: fledgeDays.present ? fledgeDays.value : this.fledgeDays,
        notes: notes.present ? notes.value : this.notes,
        user: user.present ? user.value : this.user,
        created: created.present ? created.value : this.created,
        updated: updated.present ? updated.value : this.updated,
      );
  SpeciesTableData copyWithCompanion(SpeciesTableCompanion data) {
    return SpeciesTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      latName: data.latName.present ? data.latName.value : this.latName,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      incubationDays: data.incubationDays.present
          ? data.incubationDays.value
          : this.incubationDays,
      fledgeDays:
          data.fledgeDays.present ? data.fledgeDays.value : this.fledgeDays,
      notes: data.notes.present ? data.notes.value : this.notes,
      user: data.user.present ? data.user.value : this.user,
      created: data.created.present ? data.created.value : this.created,
      updated: data.updated.present ? data.updated.value : this.updated,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SpeciesTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('latName: $latName, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('incubationDays: $incubationDays, ')
          ..write('fledgeDays: $fledgeDays, ')
          ..write('notes: $notes, ')
          ..write('user: $user, ')
          ..write('created: $created, ')
          ..write('updated: $updated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, latName, imageUrl, incubationDays,
      fledgeDays, notes, user, created, updated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SpeciesTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.latName == this.latName &&
          other.imageUrl == this.imageUrl &&
          other.incubationDays == this.incubationDays &&
          other.fledgeDays == this.fledgeDays &&
          other.notes == this.notes &&
          other.user == this.user &&
          other.created == this.created &&
          other.updated == this.updated);
}

class SpeciesTableCompanion extends UpdateCompanion<SpeciesTableData> {
  final Value<String> id;
  final Value<String?> name;
  final Value<String?> latName;
  final Value<String?> imageUrl;
  final Value<int?> incubationDays;
  final Value<int?> fledgeDays;
  final Value<String?> notes;
  final Value<String?> user;
  final Value<DateTime?> created;
  final Value<DateTime?> updated;
  final Value<int> rowid;
  const SpeciesTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.latName = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.incubationDays = const Value.absent(),
    this.fledgeDays = const Value.absent(),
    this.notes = const Value.absent(),
    this.user = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SpeciesTableCompanion.insert({
    required String id,
    this.name = const Value.absent(),
    this.latName = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.incubationDays = const Value.absent(),
    this.fledgeDays = const Value.absent(),
    this.notes = const Value.absent(),
    this.user = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<SpeciesTableData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? latName,
    Expression<String>? imageUrl,
    Expression<int>? incubationDays,
    Expression<int>? fledgeDays,
    Expression<String>? notes,
    Expression<String>? user,
    Expression<DateTime>? created,
    Expression<DateTime>? updated,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (latName != null) 'lat_name': latName,
      if (imageUrl != null) 'image_url': imageUrl,
      if (incubationDays != null) 'incubation_days': incubationDays,
      if (fledgeDays != null) 'fledge_days': fledgeDays,
      if (notes != null) 'notes': notes,
      if (user != null) 'user': user,
      if (created != null) 'created': created,
      if (updated != null) 'updated': updated,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SpeciesTableCompanion copyWith(
      {Value<String>? id,
      Value<String?>? name,
      Value<String?>? latName,
      Value<String?>? imageUrl,
      Value<int?>? incubationDays,
      Value<int?>? fledgeDays,
      Value<String?>? notes,
      Value<String?>? user,
      Value<DateTime?>? created,
      Value<DateTime?>? updated,
      Value<int>? rowid}) {
    return SpeciesTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      latName: latName ?? this.latName,
      imageUrl: imageUrl ?? this.imageUrl,
      incubationDays: incubationDays ?? this.incubationDays,
      fledgeDays: fledgeDays ?? this.fledgeDays,
      notes: notes ?? this.notes,
      user: user ?? this.user,
      created: created ?? this.created,
      updated: updated ?? this.updated,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (latName.present) {
      map['lat_name'] = Variable<String>(latName.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (incubationDays.present) {
      map['incubation_days'] = Variable<int>(incubationDays.value);
    }
    if (fledgeDays.present) {
      map['fledge_days'] = Variable<int>(fledgeDays.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (user.present) {
      map['user'] = Variable<String>(user.value);
    }
    if (created.present) {
      map['created'] = Variable<DateTime>(created.value);
    }
    if (updated.present) {
      map['updated'] = Variable<DateTime>(updated.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SpeciesTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('latName: $latName, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('incubationDays: $incubationDays, ')
          ..write('fledgeDays: $fledgeDays, ')
          ..write('notes: $notes, ')
          ..write('user: $user, ')
          ..write('created: $created, ')
          ..write('updated: $updated, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CagesTable extends Cages with TableInfo<$CagesTable, Cage> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CagesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _widthMeta = const VerificationMeta('width');
  @override
  late final GeneratedColumn<int> width = GeneratedColumn<int>(
      'width', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<int> height = GeneratedColumn<int>(
      'height', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _depthMeta = const VerificationMeta('depth');
  @override
  late final GeneratedColumn<int> depth = GeneratedColumn<int>(
      'depth', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _locationMeta =
      const VerificationMeta('location');
  @override
  late final GeneratedColumn<String> location = GeneratedColumn<String>(
      'location', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _capacityMeta =
      const VerificationMeta('capacity');
  @override
  late final GeneratedColumn<int> capacity = GeneratedColumn<int>(
      'capacity', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userMeta = const VerificationMeta('user');
  @override
  late final GeneratedColumn<String> user = GeneratedColumn<String>(
      'user', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdMeta =
      const VerificationMeta('created');
  @override
  late final GeneratedColumn<DateTime> created = GeneratedColumn<DateTime>(
      'created', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _updatedMeta =
      const VerificationMeta('updated');
  @override
  late final GeneratedColumn<DateTime> updated = GeneratedColumn<DateTime>(
      'updated', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        description,
        width,
        height,
        depth,
        type,
        location,
        capacity,
        notes,
        user,
        created,
        updated
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cages';
  @override
  VerificationContext validateIntegrity(Insertable<Cage> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('width')) {
      context.handle(
          _widthMeta, width.isAcceptableOrUnknown(data['width']!, _widthMeta));
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    }
    if (data.containsKey('depth')) {
      context.handle(
          _depthMeta, depth.isAcceptableOrUnknown(data['depth']!, _depthMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('location')) {
      context.handle(_locationMeta,
          location.isAcceptableOrUnknown(data['location']!, _locationMeta));
    }
    if (data.containsKey('capacity')) {
      context.handle(_capacityMeta,
          capacity.isAcceptableOrUnknown(data['capacity']!, _capacityMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('user')) {
      context.handle(
          _userMeta, user.isAcceptableOrUnknown(data['user']!, _userMeta));
    }
    if (data.containsKey('created')) {
      context.handle(_createdMeta,
          created.isAcceptableOrUnknown(data['created']!, _createdMeta));
    }
    if (data.containsKey('updated')) {
      context.handle(_updatedMeta,
          updated.isAcceptableOrUnknown(data['updated']!, _updatedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Cage map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Cage(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      width: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}width']),
      height: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}height']),
      depth: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}depth']),
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type']),
      location: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}location']),
      capacity: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}capacity']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      user: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user']),
      created: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created']),
      updated: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated']),
    );
  }

  @override
  $CagesTable createAlias(String alias) {
    return $CagesTable(attachedDatabase, alias);
  }
}

class Cage extends DataClass implements Insertable<Cage> {
  final String id;
  final String? name;
  final String? description;
  final int? width;
  final int? height;
  final int? depth;
  final String? type;
  final String? location;
  final int? capacity;
  final String? notes;
  final String? user;
  final DateTime? created;
  final DateTime? updated;
  const Cage(
      {required this.id,
      this.name,
      this.description,
      this.width,
      this.height,
      this.depth,
      this.type,
      this.location,
      this.capacity,
      this.notes,
      this.user,
      this.created,
      this.updated});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || width != null) {
      map['width'] = Variable<int>(width);
    }
    if (!nullToAbsent || height != null) {
      map['height'] = Variable<int>(height);
    }
    if (!nullToAbsent || depth != null) {
      map['depth'] = Variable<int>(depth);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || location != null) {
      map['location'] = Variable<String>(location);
    }
    if (!nullToAbsent || capacity != null) {
      map['capacity'] = Variable<int>(capacity);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    if (!nullToAbsent || user != null) {
      map['user'] = Variable<String>(user);
    }
    if (!nullToAbsent || created != null) {
      map['created'] = Variable<DateTime>(created);
    }
    if (!nullToAbsent || updated != null) {
      map['updated'] = Variable<DateTime>(updated);
    }
    return map;
  }

  CagesCompanion toCompanion(bool nullToAbsent) {
    return CagesCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      width:
          width == null && nullToAbsent ? const Value.absent() : Value(width),
      height:
          height == null && nullToAbsent ? const Value.absent() : Value(height),
      depth:
          depth == null && nullToAbsent ? const Value.absent() : Value(depth),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      location: location == null && nullToAbsent
          ? const Value.absent()
          : Value(location),
      capacity: capacity == null && nullToAbsent
          ? const Value.absent()
          : Value(capacity),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      user: user == null && nullToAbsent ? const Value.absent() : Value(user),
      created: created == null && nullToAbsent
          ? const Value.absent()
          : Value(created),
      updated: updated == null && nullToAbsent
          ? const Value.absent()
          : Value(updated),
    );
  }

  factory Cage.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Cage(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      width: serializer.fromJson<int?>(json['width']),
      height: serializer.fromJson<int?>(json['height']),
      depth: serializer.fromJson<int?>(json['depth']),
      type: serializer.fromJson<String?>(json['type']),
      location: serializer.fromJson<String?>(json['location']),
      capacity: serializer.fromJson<int?>(json['capacity']),
      notes: serializer.fromJson<String?>(json['notes']),
      user: serializer.fromJson<String?>(json['user']),
      created: serializer.fromJson<DateTime?>(json['created']),
      updated: serializer.fromJson<DateTime?>(json['updated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String?>(name),
      'description': serializer.toJson<String?>(description),
      'width': serializer.toJson<int?>(width),
      'height': serializer.toJson<int?>(height),
      'depth': serializer.toJson<int?>(depth),
      'type': serializer.toJson<String?>(type),
      'location': serializer.toJson<String?>(location),
      'capacity': serializer.toJson<int?>(capacity),
      'notes': serializer.toJson<String?>(notes),
      'user': serializer.toJson<String?>(user),
      'created': serializer.toJson<DateTime?>(created),
      'updated': serializer.toJson<DateTime?>(updated),
    };
  }

  Cage copyWith(
          {String? id,
          Value<String?> name = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<int?> width = const Value.absent(),
          Value<int?> height = const Value.absent(),
          Value<int?> depth = const Value.absent(),
          Value<String?> type = const Value.absent(),
          Value<String?> location = const Value.absent(),
          Value<int?> capacity = const Value.absent(),
          Value<String?> notes = const Value.absent(),
          Value<String?> user = const Value.absent(),
          Value<DateTime?> created = const Value.absent(),
          Value<DateTime?> updated = const Value.absent()}) =>
      Cage(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        description: description.present ? description.value : this.description,
        width: width.present ? width.value : this.width,
        height: height.present ? height.value : this.height,
        depth: depth.present ? depth.value : this.depth,
        type: type.present ? type.value : this.type,
        location: location.present ? location.value : this.location,
        capacity: capacity.present ? capacity.value : this.capacity,
        notes: notes.present ? notes.value : this.notes,
        user: user.present ? user.value : this.user,
        created: created.present ? created.value : this.created,
        updated: updated.present ? updated.value : this.updated,
      );
  Cage copyWithCompanion(CagesCompanion data) {
    return Cage(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      description:
          data.description.present ? data.description.value : this.description,
      width: data.width.present ? data.width.value : this.width,
      height: data.height.present ? data.height.value : this.height,
      depth: data.depth.present ? data.depth.value : this.depth,
      type: data.type.present ? data.type.value : this.type,
      location: data.location.present ? data.location.value : this.location,
      capacity: data.capacity.present ? data.capacity.value : this.capacity,
      notes: data.notes.present ? data.notes.value : this.notes,
      user: data.user.present ? data.user.value : this.user,
      created: data.created.present ? data.created.value : this.created,
      updated: data.updated.present ? data.updated.value : this.updated,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Cage(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('width: $width, ')
          ..write('height: $height, ')
          ..write('depth: $depth, ')
          ..write('type: $type, ')
          ..write('location: $location, ')
          ..write('capacity: $capacity, ')
          ..write('notes: $notes, ')
          ..write('user: $user, ')
          ..write('created: $created, ')
          ..write('updated: $updated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, description, width, height, depth,
      type, location, capacity, notes, user, created, updated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Cage &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.width == this.width &&
          other.height == this.height &&
          other.depth == this.depth &&
          other.type == this.type &&
          other.location == this.location &&
          other.capacity == this.capacity &&
          other.notes == this.notes &&
          other.user == this.user &&
          other.created == this.created &&
          other.updated == this.updated);
}

class CagesCompanion extends UpdateCompanion<Cage> {
  final Value<String> id;
  final Value<String?> name;
  final Value<String?> description;
  final Value<int?> width;
  final Value<int?> height;
  final Value<int?> depth;
  final Value<String?> type;
  final Value<String?> location;
  final Value<int?> capacity;
  final Value<String?> notes;
  final Value<String?> user;
  final Value<DateTime?> created;
  final Value<DateTime?> updated;
  final Value<int> rowid;
  const CagesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.width = const Value.absent(),
    this.height = const Value.absent(),
    this.depth = const Value.absent(),
    this.type = const Value.absent(),
    this.location = const Value.absent(),
    this.capacity = const Value.absent(),
    this.notes = const Value.absent(),
    this.user = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CagesCompanion.insert({
    required String id,
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.width = const Value.absent(),
    this.height = const Value.absent(),
    this.depth = const Value.absent(),
    this.type = const Value.absent(),
    this.location = const Value.absent(),
    this.capacity = const Value.absent(),
    this.notes = const Value.absent(),
    this.user = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<Cage> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<int>? width,
    Expression<int>? height,
    Expression<int>? depth,
    Expression<String>? type,
    Expression<String>? location,
    Expression<int>? capacity,
    Expression<String>? notes,
    Expression<String>? user,
    Expression<DateTime>? created,
    Expression<DateTime>? updated,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (width != null) 'width': width,
      if (height != null) 'height': height,
      if (depth != null) 'depth': depth,
      if (type != null) 'type': type,
      if (location != null) 'location': location,
      if (capacity != null) 'capacity': capacity,
      if (notes != null) 'notes': notes,
      if (user != null) 'user': user,
      if (created != null) 'created': created,
      if (updated != null) 'updated': updated,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CagesCompanion copyWith(
      {Value<String>? id,
      Value<String?>? name,
      Value<String?>? description,
      Value<int?>? width,
      Value<int?>? height,
      Value<int?>? depth,
      Value<String?>? type,
      Value<String?>? location,
      Value<int?>? capacity,
      Value<String?>? notes,
      Value<String?>? user,
      Value<DateTime?>? created,
      Value<DateTime?>? updated,
      Value<int>? rowid}) {
    return CagesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      width: width ?? this.width,
      height: height ?? this.height,
      depth: depth ?? this.depth,
      type: type ?? this.type,
      location: location ?? this.location,
      capacity: capacity ?? this.capacity,
      notes: notes ?? this.notes,
      user: user ?? this.user,
      created: created ?? this.created,
      updated: updated ?? this.updated,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (width.present) {
      map['width'] = Variable<int>(width.value);
    }
    if (height.present) {
      map['height'] = Variable<int>(height.value);
    }
    if (depth.present) {
      map['depth'] = Variable<int>(depth.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (location.present) {
      map['location'] = Variable<String>(location.value);
    }
    if (capacity.present) {
      map['capacity'] = Variable<int>(capacity.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (user.present) {
      map['user'] = Variable<String>(user.value);
    }
    if (created.present) {
      map['created'] = Variable<DateTime>(created.value);
    }
    if (updated.present) {
      map['updated'] = Variable<DateTime>(updated.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CagesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('width: $width, ')
          ..write('height: $height, ')
          ..write('depth: $depth, ')
          ..write('type: $type, ')
          ..write('location: $location, ')
          ..write('capacity: $capacity, ')
          ..write('notes: $notes, ')
          ..write('user: $user, ')
          ..write('created: $created, ')
          ..write('updated: $updated, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BirdColorsTable extends BirdColors
    with TableInfo<$BirdColorsTable, BirdColor> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BirdColorsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _hexMeta = const VerificationMeta('hex');
  @override
  late final GeneratedColumn<String> hex = GeneratedColumn<String>(
      'hex', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _inheritanceMeta =
      const VerificationMeta('inheritance');
  @override
  late final GeneratedColumn<String> inheritance = GeneratedColumn<String>(
      'inheritance', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userMeta = const VerificationMeta('user');
  @override
  late final GeneratedColumn<String> user = GeneratedColumn<String>(
      'user', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdMeta =
      const VerificationMeta('created');
  @override
  late final GeneratedColumn<DateTime> created = GeneratedColumn<DateTime>(
      'created', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _updatedMeta =
      const VerificationMeta('updated');
  @override
  late final GeneratedColumn<DateTime> updated = GeneratedColumn<DateTime>(
      'updated', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, hex, inheritance, notes, user, created, updated];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'bird_colors';
  @override
  VerificationContext validateIntegrity(Insertable<BirdColor> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('hex')) {
      context.handle(
          _hexMeta, hex.isAcceptableOrUnknown(data['hex']!, _hexMeta));
    }
    if (data.containsKey('inheritance')) {
      context.handle(
          _inheritanceMeta,
          inheritance.isAcceptableOrUnknown(
              data['inheritance']!, _inheritanceMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('user')) {
      context.handle(
          _userMeta, user.isAcceptableOrUnknown(data['user']!, _userMeta));
    }
    if (data.containsKey('created')) {
      context.handle(_createdMeta,
          created.isAcceptableOrUnknown(data['created']!, _createdMeta));
    }
    if (data.containsKey('updated')) {
      context.handle(_updatedMeta,
          updated.isAcceptableOrUnknown(data['updated']!, _updatedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  BirdColor map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BirdColor(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      hex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}hex']),
      inheritance: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}inheritance']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      user: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user']),
      created: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created']),
      updated: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated']),
    );
  }

  @override
  $BirdColorsTable createAlias(String alias) {
    return $BirdColorsTable(attachedDatabase, alias);
  }
}

class BirdColor extends DataClass implements Insertable<BirdColor> {
  final String id;
  final String? name;
  final String? hex;
  final String? inheritance;
  final String? notes;
  final String? user;
  final DateTime? created;
  final DateTime? updated;
  const BirdColor(
      {required this.id,
      this.name,
      this.hex,
      this.inheritance,
      this.notes,
      this.user,
      this.created,
      this.updated});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || hex != null) {
      map['hex'] = Variable<String>(hex);
    }
    if (!nullToAbsent || inheritance != null) {
      map['inheritance'] = Variable<String>(inheritance);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    if (!nullToAbsent || user != null) {
      map['user'] = Variable<String>(user);
    }
    if (!nullToAbsent || created != null) {
      map['created'] = Variable<DateTime>(created);
    }
    if (!nullToAbsent || updated != null) {
      map['updated'] = Variable<DateTime>(updated);
    }
    return map;
  }

  BirdColorsCompanion toCompanion(bool nullToAbsent) {
    return BirdColorsCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      hex: hex == null && nullToAbsent ? const Value.absent() : Value(hex),
      inheritance: inheritance == null && nullToAbsent
          ? const Value.absent()
          : Value(inheritance),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      user: user == null && nullToAbsent ? const Value.absent() : Value(user),
      created: created == null && nullToAbsent
          ? const Value.absent()
          : Value(created),
      updated: updated == null && nullToAbsent
          ? const Value.absent()
          : Value(updated),
    );
  }

  factory BirdColor.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BirdColor(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      hex: serializer.fromJson<String?>(json['hex']),
      inheritance: serializer.fromJson<String?>(json['inheritance']),
      notes: serializer.fromJson<String?>(json['notes']),
      user: serializer.fromJson<String?>(json['user']),
      created: serializer.fromJson<DateTime?>(json['created']),
      updated: serializer.fromJson<DateTime?>(json['updated']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String?>(name),
      'hex': serializer.toJson<String?>(hex),
      'inheritance': serializer.toJson<String?>(inheritance),
      'notes': serializer.toJson<String?>(notes),
      'user': serializer.toJson<String?>(user),
      'created': serializer.toJson<DateTime?>(created),
      'updated': serializer.toJson<DateTime?>(updated),
    };
  }

  BirdColor copyWith(
          {String? id,
          Value<String?> name = const Value.absent(),
          Value<String?> hex = const Value.absent(),
          Value<String?> inheritance = const Value.absent(),
          Value<String?> notes = const Value.absent(),
          Value<String?> user = const Value.absent(),
          Value<DateTime?> created = const Value.absent(),
          Value<DateTime?> updated = const Value.absent()}) =>
      BirdColor(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        hex: hex.present ? hex.value : this.hex,
        inheritance: inheritance.present ? inheritance.value : this.inheritance,
        notes: notes.present ? notes.value : this.notes,
        user: user.present ? user.value : this.user,
        created: created.present ? created.value : this.created,
        updated: updated.present ? updated.value : this.updated,
      );
  BirdColor copyWithCompanion(BirdColorsCompanion data) {
    return BirdColor(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      hex: data.hex.present ? data.hex.value : this.hex,
      inheritance:
          data.inheritance.present ? data.inheritance.value : this.inheritance,
      notes: data.notes.present ? data.notes.value : this.notes,
      user: data.user.present ? data.user.value : this.user,
      created: data.created.present ? data.created.value : this.created,
      updated: data.updated.present ? data.updated.value : this.updated,
    );
  }

  @override
  String toString() {
    return (StringBuffer('BirdColor(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('hex: $hex, ')
          ..write('inheritance: $inheritance, ')
          ..write('notes: $notes, ')
          ..write('user: $user, ')
          ..write('created: $created, ')
          ..write('updated: $updated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, hex, inheritance, notes, user, created, updated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BirdColor &&
          other.id == this.id &&
          other.name == this.name &&
          other.hex == this.hex &&
          other.inheritance == this.inheritance &&
          other.notes == this.notes &&
          other.user == this.user &&
          other.created == this.created &&
          other.updated == this.updated);
}

class BirdColorsCompanion extends UpdateCompanion<BirdColor> {
  final Value<String> id;
  final Value<String?> name;
  final Value<String?> hex;
  final Value<String?> inheritance;
  final Value<String?> notes;
  final Value<String?> user;
  final Value<DateTime?> created;
  final Value<DateTime?> updated;
  final Value<int> rowid;
  const BirdColorsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.hex = const Value.absent(),
    this.inheritance = const Value.absent(),
    this.notes = const Value.absent(),
    this.user = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BirdColorsCompanion.insert({
    required String id,
    this.name = const Value.absent(),
    this.hex = const Value.absent(),
    this.inheritance = const Value.absent(),
    this.notes = const Value.absent(),
    this.user = const Value.absent(),
    this.created = const Value.absent(),
    this.updated = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<BirdColor> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? hex,
    Expression<String>? inheritance,
    Expression<String>? notes,
    Expression<String>? user,
    Expression<DateTime>? created,
    Expression<DateTime>? updated,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (hex != null) 'hex': hex,
      if (inheritance != null) 'inheritance': inheritance,
      if (notes != null) 'notes': notes,
      if (user != null) 'user': user,
      if (created != null) 'created': created,
      if (updated != null) 'updated': updated,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BirdColorsCompanion copyWith(
      {Value<String>? id,
      Value<String?>? name,
      Value<String?>? hex,
      Value<String?>? inheritance,
      Value<String?>? notes,
      Value<String?>? user,
      Value<DateTime?>? created,
      Value<DateTime?>? updated,
      Value<int>? rowid}) {
    return BirdColorsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      hex: hex ?? this.hex,
      inheritance: inheritance ?? this.inheritance,
      notes: notes ?? this.notes,
      user: user ?? this.user,
      created: created ?? this.created,
      updated: updated ?? this.updated,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (hex.present) {
      map['hex'] = Variable<String>(hex.value);
    }
    if (inheritance.present) {
      map['inheritance'] = Variable<String>(inheritance.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (user.present) {
      map['user'] = Variable<String>(user.value);
    }
    if (created.present) {
      map['created'] = Variable<DateTime>(created.value);
    }
    if (updated.present) {
      map['updated'] = Variable<DateTime>(updated.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BirdColorsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('hex: $hex, ')
          ..write('inheritance: $inheritance, ')
          ..write('notes: $notes, ')
          ..write('user: $user, ')
          ..write('created: $created, ')
          ..write('updated: $updated, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $BirdsTable birds = $BirdsTable(this);
  late final $BreedingPairsTable breedingPairs = $BreedingPairsTable(this);
  late final $BroodsTable broods = $BroodsTable(this);
  late final $EggsTable eggs = $EggsTable(this);
  late final $ContactsTable contacts = $ContactsTable(this);
  late final $FinancesTable finances = $FinancesTable(this);
  late final $FinanceCategoriesTable financeCategories =
      $FinanceCategoriesTable(this);
  late final $SpeciesTableTable speciesTable = $SpeciesTableTable(this);
  late final $CagesTable cages = $CagesTable(this);
  late final $BirdColorsTable birdColors = $BirdColorsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        birds,
        breedingPairs,
        broods,
        eggs,
        contacts,
        finances,
        financeCategories,
        speciesTable,
        cages,
        birdColors
      ];
}

typedef $$BirdsTableCreateCompanionBuilder = BirdsCompanion Function({
  required String id,
  Value<String?> ringnumber,
  Value<String?> species,
  Value<String?> color,
  Value<String> sex,
  Value<String?> father,
  Value<String?> mother,
  Value<String?> cage,
  Value<String?> brood,
  Value<DateTime?> laidAt,
  Value<DateTime?> hatchedAt,
  Value<DateTime?> fledgedAt,
  Value<DateTime?> bornAt,
  Value<DateTime?> diedAt,
  Value<String> saleStatus,
  Value<DateTime?> listedAt,
  Value<DateTime?> soldAt,
  Value<double?> askingPrice,
  Value<double?> finalPrice,
  Value<DateTime?> boughtAt,
  Value<double?> boughtPrice,
  Value<String?> notes,
  Value<String?> boughtFrom,
  Value<String?> soldTo,
  Value<String?> owner,
  Value<String?> breeder,
  Value<bool?> unknownLifecycle,
  Value<String?> user,
  Value<DateTime?> created,
  Value<DateTime?> updated,
  Value<int> rowid,
});
typedef $$BirdsTableUpdateCompanionBuilder = BirdsCompanion Function({
  Value<String> id,
  Value<String?> ringnumber,
  Value<String?> species,
  Value<String?> color,
  Value<String> sex,
  Value<String?> father,
  Value<String?> mother,
  Value<String?> cage,
  Value<String?> brood,
  Value<DateTime?> laidAt,
  Value<DateTime?> hatchedAt,
  Value<DateTime?> fledgedAt,
  Value<DateTime?> bornAt,
  Value<DateTime?> diedAt,
  Value<String> saleStatus,
  Value<DateTime?> listedAt,
  Value<DateTime?> soldAt,
  Value<double?> askingPrice,
  Value<double?> finalPrice,
  Value<DateTime?> boughtAt,
  Value<double?> boughtPrice,
  Value<String?> notes,
  Value<String?> boughtFrom,
  Value<String?> soldTo,
  Value<String?> owner,
  Value<String?> breeder,
  Value<bool?> unknownLifecycle,
  Value<String?> user,
  Value<DateTime?> created,
  Value<DateTime?> updated,
  Value<int> rowid,
});

class $$BirdsTableFilterComposer extends Composer<_$AppDatabase, $BirdsTable> {
  $$BirdsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get ringnumber => $composableBuilder(
      column: $table.ringnumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get species => $composableBuilder(
      column: $table.species, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get sex => $composableBuilder(
      column: $table.sex, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get father => $composableBuilder(
      column: $table.father, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mother => $composableBuilder(
      column: $table.mother, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cage => $composableBuilder(
      column: $table.cage, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get brood => $composableBuilder(
      column: $table.brood, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get laidAt => $composableBuilder(
      column: $table.laidAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get hatchedAt => $composableBuilder(
      column: $table.hatchedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get fledgedAt => $composableBuilder(
      column: $table.fledgedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get bornAt => $composableBuilder(
      column: $table.bornAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get diedAt => $composableBuilder(
      column: $table.diedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get saleStatus => $composableBuilder(
      column: $table.saleStatus, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get listedAt => $composableBuilder(
      column: $table.listedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get soldAt => $composableBuilder(
      column: $table.soldAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get askingPrice => $composableBuilder(
      column: $table.askingPrice, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get finalPrice => $composableBuilder(
      column: $table.finalPrice, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get boughtAt => $composableBuilder(
      column: $table.boughtAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get boughtPrice => $composableBuilder(
      column: $table.boughtPrice, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get boughtFrom => $composableBuilder(
      column: $table.boughtFrom, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get soldTo => $composableBuilder(
      column: $table.soldTo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get owner => $composableBuilder(
      column: $table.owner, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get breeder => $composableBuilder(
      column: $table.breeder, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get unknownLifecycle => $composableBuilder(
      column: $table.unknownLifecycle,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get user => $composableBuilder(
      column: $table.user, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get created => $composableBuilder(
      column: $table.created, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updated => $composableBuilder(
      column: $table.updated, builder: (column) => ColumnFilters(column));
}

class $$BirdsTableOrderingComposer
    extends Composer<_$AppDatabase, $BirdsTable> {
  $$BirdsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get ringnumber => $composableBuilder(
      column: $table.ringnumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get species => $composableBuilder(
      column: $table.species, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get sex => $composableBuilder(
      column: $table.sex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get father => $composableBuilder(
      column: $table.father, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mother => $composableBuilder(
      column: $table.mother, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cage => $composableBuilder(
      column: $table.cage, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get brood => $composableBuilder(
      column: $table.brood, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get laidAt => $composableBuilder(
      column: $table.laidAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get hatchedAt => $composableBuilder(
      column: $table.hatchedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get fledgedAt => $composableBuilder(
      column: $table.fledgedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get bornAt => $composableBuilder(
      column: $table.bornAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get diedAt => $composableBuilder(
      column: $table.diedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get saleStatus => $composableBuilder(
      column: $table.saleStatus, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get listedAt => $composableBuilder(
      column: $table.listedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get soldAt => $composableBuilder(
      column: $table.soldAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get askingPrice => $composableBuilder(
      column: $table.askingPrice, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get finalPrice => $composableBuilder(
      column: $table.finalPrice, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get boughtAt => $composableBuilder(
      column: $table.boughtAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get boughtPrice => $composableBuilder(
      column: $table.boughtPrice, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get boughtFrom => $composableBuilder(
      column: $table.boughtFrom, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get soldTo => $composableBuilder(
      column: $table.soldTo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get owner => $composableBuilder(
      column: $table.owner, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get breeder => $composableBuilder(
      column: $table.breeder, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get unknownLifecycle => $composableBuilder(
      column: $table.unknownLifecycle,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get user => $composableBuilder(
      column: $table.user, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get created => $composableBuilder(
      column: $table.created, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updated => $composableBuilder(
      column: $table.updated, builder: (column) => ColumnOrderings(column));
}

class $$BirdsTableAnnotationComposer
    extends Composer<_$AppDatabase, $BirdsTable> {
  $$BirdsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get ringnumber => $composableBuilder(
      column: $table.ringnumber, builder: (column) => column);

  GeneratedColumn<String> get species =>
      $composableBuilder(column: $table.species, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<String> get sex =>
      $composableBuilder(column: $table.sex, builder: (column) => column);

  GeneratedColumn<String> get father =>
      $composableBuilder(column: $table.father, builder: (column) => column);

  GeneratedColumn<String> get mother =>
      $composableBuilder(column: $table.mother, builder: (column) => column);

  GeneratedColumn<String> get cage =>
      $composableBuilder(column: $table.cage, builder: (column) => column);

  GeneratedColumn<String> get brood =>
      $composableBuilder(column: $table.brood, builder: (column) => column);

  GeneratedColumn<DateTime> get laidAt =>
      $composableBuilder(column: $table.laidAt, builder: (column) => column);

  GeneratedColumn<DateTime> get hatchedAt =>
      $composableBuilder(column: $table.hatchedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get fledgedAt =>
      $composableBuilder(column: $table.fledgedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get bornAt =>
      $composableBuilder(column: $table.bornAt, builder: (column) => column);

  GeneratedColumn<DateTime> get diedAt =>
      $composableBuilder(column: $table.diedAt, builder: (column) => column);

  GeneratedColumn<String> get saleStatus => $composableBuilder(
      column: $table.saleStatus, builder: (column) => column);

  GeneratedColumn<DateTime> get listedAt =>
      $composableBuilder(column: $table.listedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get soldAt =>
      $composableBuilder(column: $table.soldAt, builder: (column) => column);

  GeneratedColumn<double> get askingPrice => $composableBuilder(
      column: $table.askingPrice, builder: (column) => column);

  GeneratedColumn<double> get finalPrice => $composableBuilder(
      column: $table.finalPrice, builder: (column) => column);

  GeneratedColumn<DateTime> get boughtAt =>
      $composableBuilder(column: $table.boughtAt, builder: (column) => column);

  GeneratedColumn<double> get boughtPrice => $composableBuilder(
      column: $table.boughtPrice, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<String> get boughtFrom => $composableBuilder(
      column: $table.boughtFrom, builder: (column) => column);

  GeneratedColumn<String> get soldTo =>
      $composableBuilder(column: $table.soldTo, builder: (column) => column);

  GeneratedColumn<String> get owner =>
      $composableBuilder(column: $table.owner, builder: (column) => column);

  GeneratedColumn<String> get breeder =>
      $composableBuilder(column: $table.breeder, builder: (column) => column);

  GeneratedColumn<bool> get unknownLifecycle => $composableBuilder(
      column: $table.unknownLifecycle, builder: (column) => column);

  GeneratedColumn<String> get user =>
      $composableBuilder(column: $table.user, builder: (column) => column);

  GeneratedColumn<DateTime> get created =>
      $composableBuilder(column: $table.created, builder: (column) => column);

  GeneratedColumn<DateTime> get updated =>
      $composableBuilder(column: $table.updated, builder: (column) => column);
}

class $$BirdsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BirdsTable,
    Bird,
    $$BirdsTableFilterComposer,
    $$BirdsTableOrderingComposer,
    $$BirdsTableAnnotationComposer,
    $$BirdsTableCreateCompanionBuilder,
    $$BirdsTableUpdateCompanionBuilder,
    (Bird, BaseReferences<_$AppDatabase, $BirdsTable, Bird>),
    Bird,
    PrefetchHooks Function()> {
  $$BirdsTableTableManager(_$AppDatabase db, $BirdsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BirdsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BirdsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BirdsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String?> ringnumber = const Value.absent(),
            Value<String?> species = const Value.absent(),
            Value<String?> color = const Value.absent(),
            Value<String> sex = const Value.absent(),
            Value<String?> father = const Value.absent(),
            Value<String?> mother = const Value.absent(),
            Value<String?> cage = const Value.absent(),
            Value<String?> brood = const Value.absent(),
            Value<DateTime?> laidAt = const Value.absent(),
            Value<DateTime?> hatchedAt = const Value.absent(),
            Value<DateTime?> fledgedAt = const Value.absent(),
            Value<DateTime?> bornAt = const Value.absent(),
            Value<DateTime?> diedAt = const Value.absent(),
            Value<String> saleStatus = const Value.absent(),
            Value<DateTime?> listedAt = const Value.absent(),
            Value<DateTime?> soldAt = const Value.absent(),
            Value<double?> askingPrice = const Value.absent(),
            Value<double?> finalPrice = const Value.absent(),
            Value<DateTime?> boughtAt = const Value.absent(),
            Value<double?> boughtPrice = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<String?> boughtFrom = const Value.absent(),
            Value<String?> soldTo = const Value.absent(),
            Value<String?> owner = const Value.absent(),
            Value<String?> breeder = const Value.absent(),
            Value<bool?> unknownLifecycle = const Value.absent(),
            Value<String?> user = const Value.absent(),
            Value<DateTime?> created = const Value.absent(),
            Value<DateTime?> updated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              BirdsCompanion(
            id: id,
            ringnumber: ringnumber,
            species: species,
            color: color,
            sex: sex,
            father: father,
            mother: mother,
            cage: cage,
            brood: brood,
            laidAt: laidAt,
            hatchedAt: hatchedAt,
            fledgedAt: fledgedAt,
            bornAt: bornAt,
            diedAt: diedAt,
            saleStatus: saleStatus,
            listedAt: listedAt,
            soldAt: soldAt,
            askingPrice: askingPrice,
            finalPrice: finalPrice,
            boughtAt: boughtAt,
            boughtPrice: boughtPrice,
            notes: notes,
            boughtFrom: boughtFrom,
            soldTo: soldTo,
            owner: owner,
            breeder: breeder,
            unknownLifecycle: unknownLifecycle,
            user: user,
            created: created,
            updated: updated,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String?> ringnumber = const Value.absent(),
            Value<String?> species = const Value.absent(),
            Value<String?> color = const Value.absent(),
            Value<String> sex = const Value.absent(),
            Value<String?> father = const Value.absent(),
            Value<String?> mother = const Value.absent(),
            Value<String?> cage = const Value.absent(),
            Value<String?> brood = const Value.absent(),
            Value<DateTime?> laidAt = const Value.absent(),
            Value<DateTime?> hatchedAt = const Value.absent(),
            Value<DateTime?> fledgedAt = const Value.absent(),
            Value<DateTime?> bornAt = const Value.absent(),
            Value<DateTime?> diedAt = const Value.absent(),
            Value<String> saleStatus = const Value.absent(),
            Value<DateTime?> listedAt = const Value.absent(),
            Value<DateTime?> soldAt = const Value.absent(),
            Value<double?> askingPrice = const Value.absent(),
            Value<double?> finalPrice = const Value.absent(),
            Value<DateTime?> boughtAt = const Value.absent(),
            Value<double?> boughtPrice = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<String?> boughtFrom = const Value.absent(),
            Value<String?> soldTo = const Value.absent(),
            Value<String?> owner = const Value.absent(),
            Value<String?> breeder = const Value.absent(),
            Value<bool?> unknownLifecycle = const Value.absent(),
            Value<String?> user = const Value.absent(),
            Value<DateTime?> created = const Value.absent(),
            Value<DateTime?> updated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              BirdsCompanion.insert(
            id: id,
            ringnumber: ringnumber,
            species: species,
            color: color,
            sex: sex,
            father: father,
            mother: mother,
            cage: cage,
            brood: brood,
            laidAt: laidAt,
            hatchedAt: hatchedAt,
            fledgedAt: fledgedAt,
            bornAt: bornAt,
            diedAt: diedAt,
            saleStatus: saleStatus,
            listedAt: listedAt,
            soldAt: soldAt,
            askingPrice: askingPrice,
            finalPrice: finalPrice,
            boughtAt: boughtAt,
            boughtPrice: boughtPrice,
            notes: notes,
            boughtFrom: boughtFrom,
            soldTo: soldTo,
            owner: owner,
            breeder: breeder,
            unknownLifecycle: unknownLifecycle,
            user: user,
            created: created,
            updated: updated,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$BirdsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $BirdsTable,
    Bird,
    $$BirdsTableFilterComposer,
    $$BirdsTableOrderingComposer,
    $$BirdsTableAnnotationComposer,
    $$BirdsTableCreateCompanionBuilder,
    $$BirdsTableUpdateCompanionBuilder,
    (Bird, BaseReferences<_$AppDatabase, $BirdsTable, Bird>),
    Bird,
    PrefetchHooks Function()>;
typedef $$BreedingPairsTableCreateCompanionBuilder = BreedingPairsCompanion
    Function({
  required String id,
  required String father,
  required String mother,
  required String status,
  Value<String?> cage,
  Value<DateTime?> start,
  Value<DateTime?> end,
  Value<String?> notes,
  Value<String?> user,
  Value<DateTime?> created,
  Value<DateTime?> updated,
  Value<int> rowid,
});
typedef $$BreedingPairsTableUpdateCompanionBuilder = BreedingPairsCompanion
    Function({
  Value<String> id,
  Value<String> father,
  Value<String> mother,
  Value<String> status,
  Value<String?> cage,
  Value<DateTime?> start,
  Value<DateTime?> end,
  Value<String?> notes,
  Value<String?> user,
  Value<DateTime?> created,
  Value<DateTime?> updated,
  Value<int> rowid,
});

class $$BreedingPairsTableFilterComposer
    extends Composer<_$AppDatabase, $BreedingPairsTable> {
  $$BreedingPairsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get father => $composableBuilder(
      column: $table.father, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mother => $composableBuilder(
      column: $table.mother, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cage => $composableBuilder(
      column: $table.cage, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get start => $composableBuilder(
      column: $table.start, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get end => $composableBuilder(
      column: $table.end, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get user => $composableBuilder(
      column: $table.user, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get created => $composableBuilder(
      column: $table.created, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updated => $composableBuilder(
      column: $table.updated, builder: (column) => ColumnFilters(column));
}

class $$BreedingPairsTableOrderingComposer
    extends Composer<_$AppDatabase, $BreedingPairsTable> {
  $$BreedingPairsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get father => $composableBuilder(
      column: $table.father, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mother => $composableBuilder(
      column: $table.mother, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cage => $composableBuilder(
      column: $table.cage, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get start => $composableBuilder(
      column: $table.start, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get end => $composableBuilder(
      column: $table.end, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get user => $composableBuilder(
      column: $table.user, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get created => $composableBuilder(
      column: $table.created, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updated => $composableBuilder(
      column: $table.updated, builder: (column) => ColumnOrderings(column));
}

class $$BreedingPairsTableAnnotationComposer
    extends Composer<_$AppDatabase, $BreedingPairsTable> {
  $$BreedingPairsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get father =>
      $composableBuilder(column: $table.father, builder: (column) => column);

  GeneratedColumn<String> get mother =>
      $composableBuilder(column: $table.mother, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get cage =>
      $composableBuilder(column: $table.cage, builder: (column) => column);

  GeneratedColumn<DateTime> get start =>
      $composableBuilder(column: $table.start, builder: (column) => column);

  GeneratedColumn<DateTime> get end =>
      $composableBuilder(column: $table.end, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<String> get user =>
      $composableBuilder(column: $table.user, builder: (column) => column);

  GeneratedColumn<DateTime> get created =>
      $composableBuilder(column: $table.created, builder: (column) => column);

  GeneratedColumn<DateTime> get updated =>
      $composableBuilder(column: $table.updated, builder: (column) => column);
}

class $$BreedingPairsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BreedingPairsTable,
    BreedingPair,
    $$BreedingPairsTableFilterComposer,
    $$BreedingPairsTableOrderingComposer,
    $$BreedingPairsTableAnnotationComposer,
    $$BreedingPairsTableCreateCompanionBuilder,
    $$BreedingPairsTableUpdateCompanionBuilder,
    (
      BreedingPair,
      BaseReferences<_$AppDatabase, $BreedingPairsTable, BreedingPair>
    ),
    BreedingPair,
    PrefetchHooks Function()> {
  $$BreedingPairsTableTableManager(_$AppDatabase db, $BreedingPairsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BreedingPairsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BreedingPairsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BreedingPairsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> father = const Value.absent(),
            Value<String> mother = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String?> cage = const Value.absent(),
            Value<DateTime?> start = const Value.absent(),
            Value<DateTime?> end = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<String?> user = const Value.absent(),
            Value<DateTime?> created = const Value.absent(),
            Value<DateTime?> updated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              BreedingPairsCompanion(
            id: id,
            father: father,
            mother: mother,
            status: status,
            cage: cage,
            start: start,
            end: end,
            notes: notes,
            user: user,
            created: created,
            updated: updated,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String father,
            required String mother,
            required String status,
            Value<String?> cage = const Value.absent(),
            Value<DateTime?> start = const Value.absent(),
            Value<DateTime?> end = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<String?> user = const Value.absent(),
            Value<DateTime?> created = const Value.absent(),
            Value<DateTime?> updated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              BreedingPairsCompanion.insert(
            id: id,
            father: father,
            mother: mother,
            status: status,
            cage: cage,
            start: start,
            end: end,
            notes: notes,
            user: user,
            created: created,
            updated: updated,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$BreedingPairsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $BreedingPairsTable,
    BreedingPair,
    $$BreedingPairsTableFilterComposer,
    $$BreedingPairsTableOrderingComposer,
    $$BreedingPairsTableAnnotationComposer,
    $$BreedingPairsTableCreateCompanionBuilder,
    $$BreedingPairsTableUpdateCompanionBuilder,
    (
      BreedingPair,
      BaseReferences<_$AppDatabase, $BreedingPairsTable, BreedingPair>
    ),
    BreedingPair,
    PrefetchHooks Function()>;
typedef $$BroodsTableCreateCompanionBuilder = BroodsCompanion Function({
  required String id,
  Value<String?> breedingPair,
  Value<String?> cage,
  Value<DateTime?> start,
  Value<DateTime?> end,
  Value<String?> notes,
  Value<String?> user,
  Value<DateTime?> created,
  Value<DateTime?> updated,
  Value<int> rowid,
});
typedef $$BroodsTableUpdateCompanionBuilder = BroodsCompanion Function({
  Value<String> id,
  Value<String?> breedingPair,
  Value<String?> cage,
  Value<DateTime?> start,
  Value<DateTime?> end,
  Value<String?> notes,
  Value<String?> user,
  Value<DateTime?> created,
  Value<DateTime?> updated,
  Value<int> rowid,
});

class $$BroodsTableFilterComposer
    extends Composer<_$AppDatabase, $BroodsTable> {
  $$BroodsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get breedingPair => $composableBuilder(
      column: $table.breedingPair, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cage => $composableBuilder(
      column: $table.cage, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get start => $composableBuilder(
      column: $table.start, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get end => $composableBuilder(
      column: $table.end, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get user => $composableBuilder(
      column: $table.user, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get created => $composableBuilder(
      column: $table.created, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updated => $composableBuilder(
      column: $table.updated, builder: (column) => ColumnFilters(column));
}

class $$BroodsTableOrderingComposer
    extends Composer<_$AppDatabase, $BroodsTable> {
  $$BroodsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get breedingPair => $composableBuilder(
      column: $table.breedingPair,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cage => $composableBuilder(
      column: $table.cage, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get start => $composableBuilder(
      column: $table.start, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get end => $composableBuilder(
      column: $table.end, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get user => $composableBuilder(
      column: $table.user, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get created => $composableBuilder(
      column: $table.created, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updated => $composableBuilder(
      column: $table.updated, builder: (column) => ColumnOrderings(column));
}

class $$BroodsTableAnnotationComposer
    extends Composer<_$AppDatabase, $BroodsTable> {
  $$BroodsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get breedingPair => $composableBuilder(
      column: $table.breedingPair, builder: (column) => column);

  GeneratedColumn<String> get cage =>
      $composableBuilder(column: $table.cage, builder: (column) => column);

  GeneratedColumn<DateTime> get start =>
      $composableBuilder(column: $table.start, builder: (column) => column);

  GeneratedColumn<DateTime> get end =>
      $composableBuilder(column: $table.end, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<String> get user =>
      $composableBuilder(column: $table.user, builder: (column) => column);

  GeneratedColumn<DateTime> get created =>
      $composableBuilder(column: $table.created, builder: (column) => column);

  GeneratedColumn<DateTime> get updated =>
      $composableBuilder(column: $table.updated, builder: (column) => column);
}

class $$BroodsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BroodsTable,
    Brood,
    $$BroodsTableFilterComposer,
    $$BroodsTableOrderingComposer,
    $$BroodsTableAnnotationComposer,
    $$BroodsTableCreateCompanionBuilder,
    $$BroodsTableUpdateCompanionBuilder,
    (Brood, BaseReferences<_$AppDatabase, $BroodsTable, Brood>),
    Brood,
    PrefetchHooks Function()> {
  $$BroodsTableTableManager(_$AppDatabase db, $BroodsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BroodsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BroodsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BroodsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String?> breedingPair = const Value.absent(),
            Value<String?> cage = const Value.absent(),
            Value<DateTime?> start = const Value.absent(),
            Value<DateTime?> end = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<String?> user = const Value.absent(),
            Value<DateTime?> created = const Value.absent(),
            Value<DateTime?> updated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              BroodsCompanion(
            id: id,
            breedingPair: breedingPair,
            cage: cage,
            start: start,
            end: end,
            notes: notes,
            user: user,
            created: created,
            updated: updated,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String?> breedingPair = const Value.absent(),
            Value<String?> cage = const Value.absent(),
            Value<DateTime?> start = const Value.absent(),
            Value<DateTime?> end = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<String?> user = const Value.absent(),
            Value<DateTime?> created = const Value.absent(),
            Value<DateTime?> updated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              BroodsCompanion.insert(
            id: id,
            breedingPair: breedingPair,
            cage: cage,
            start: start,
            end: end,
            notes: notes,
            user: user,
            created: created,
            updated: updated,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$BroodsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $BroodsTable,
    Brood,
    $$BroodsTableFilterComposer,
    $$BroodsTableOrderingComposer,
    $$BroodsTableAnnotationComposer,
    $$BroodsTableCreateCompanionBuilder,
    $$BroodsTableUpdateCompanionBuilder,
    (Brood, BaseReferences<_$AppDatabase, $BroodsTable, Brood>),
    Brood,
    PrefetchHooks Function()>;
typedef $$EggsTableCreateCompanionBuilder = EggsCompanion Function({
  required String id,
  required String brood,
  required int number,
  required DateTime laidAt,
  Value<DateTime?> hatchedAt,
  Value<DateTime?> fertilizedAt,
  Value<DateTime?> unfertilizedAt,
  Value<DateTime?> fledgedAt,
  Value<DateTime?> diedAt,
  Value<String> status,
  Value<String?> ringnumber,
  Value<String?> color,
  Value<String?> cage,
  Value<String?> species,
  Value<String?> birdId,
  Value<String?> notes,
  Value<DateTime?> created,
  Value<DateTime?> updated,
  Value<int> rowid,
});
typedef $$EggsTableUpdateCompanionBuilder = EggsCompanion Function({
  Value<String> id,
  Value<String> brood,
  Value<int> number,
  Value<DateTime> laidAt,
  Value<DateTime?> hatchedAt,
  Value<DateTime?> fertilizedAt,
  Value<DateTime?> unfertilizedAt,
  Value<DateTime?> fledgedAt,
  Value<DateTime?> diedAt,
  Value<String> status,
  Value<String?> ringnumber,
  Value<String?> color,
  Value<String?> cage,
  Value<String?> species,
  Value<String?> birdId,
  Value<String?> notes,
  Value<DateTime?> created,
  Value<DateTime?> updated,
  Value<int> rowid,
});

class $$EggsTableFilterComposer extends Composer<_$AppDatabase, $EggsTable> {
  $$EggsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get brood => $composableBuilder(
      column: $table.brood, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get number => $composableBuilder(
      column: $table.number, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get laidAt => $composableBuilder(
      column: $table.laidAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get hatchedAt => $composableBuilder(
      column: $table.hatchedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get fertilizedAt => $composableBuilder(
      column: $table.fertilizedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get unfertilizedAt => $composableBuilder(
      column: $table.unfertilizedAt,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get fledgedAt => $composableBuilder(
      column: $table.fledgedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get diedAt => $composableBuilder(
      column: $table.diedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get ringnumber => $composableBuilder(
      column: $table.ringnumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cage => $composableBuilder(
      column: $table.cage, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get species => $composableBuilder(
      column: $table.species, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get birdId => $composableBuilder(
      column: $table.birdId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get created => $composableBuilder(
      column: $table.created, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updated => $composableBuilder(
      column: $table.updated, builder: (column) => ColumnFilters(column));
}

class $$EggsTableOrderingComposer extends Composer<_$AppDatabase, $EggsTable> {
  $$EggsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get brood => $composableBuilder(
      column: $table.brood, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get number => $composableBuilder(
      column: $table.number, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get laidAt => $composableBuilder(
      column: $table.laidAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get hatchedAt => $composableBuilder(
      column: $table.hatchedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get fertilizedAt => $composableBuilder(
      column: $table.fertilizedAt,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get unfertilizedAt => $composableBuilder(
      column: $table.unfertilizedAt,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get fledgedAt => $composableBuilder(
      column: $table.fledgedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get diedAt => $composableBuilder(
      column: $table.diedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get ringnumber => $composableBuilder(
      column: $table.ringnumber, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cage => $composableBuilder(
      column: $table.cage, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get species => $composableBuilder(
      column: $table.species, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get birdId => $composableBuilder(
      column: $table.birdId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get created => $composableBuilder(
      column: $table.created, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updated => $composableBuilder(
      column: $table.updated, builder: (column) => ColumnOrderings(column));
}

class $$EggsTableAnnotationComposer
    extends Composer<_$AppDatabase, $EggsTable> {
  $$EggsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get brood =>
      $composableBuilder(column: $table.brood, builder: (column) => column);

  GeneratedColumn<int> get number =>
      $composableBuilder(column: $table.number, builder: (column) => column);

  GeneratedColumn<DateTime> get laidAt =>
      $composableBuilder(column: $table.laidAt, builder: (column) => column);

  GeneratedColumn<DateTime> get hatchedAt =>
      $composableBuilder(column: $table.hatchedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get fertilizedAt => $composableBuilder(
      column: $table.fertilizedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get unfertilizedAt => $composableBuilder(
      column: $table.unfertilizedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get fledgedAt =>
      $composableBuilder(column: $table.fledgedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get diedAt =>
      $composableBuilder(column: $table.diedAt, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get ringnumber => $composableBuilder(
      column: $table.ringnumber, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<String> get cage =>
      $composableBuilder(column: $table.cage, builder: (column) => column);

  GeneratedColumn<String> get species =>
      $composableBuilder(column: $table.species, builder: (column) => column);

  GeneratedColumn<String> get birdId =>
      $composableBuilder(column: $table.birdId, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<DateTime> get created =>
      $composableBuilder(column: $table.created, builder: (column) => column);

  GeneratedColumn<DateTime> get updated =>
      $composableBuilder(column: $table.updated, builder: (column) => column);
}

class $$EggsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $EggsTable,
    Egg,
    $$EggsTableFilterComposer,
    $$EggsTableOrderingComposer,
    $$EggsTableAnnotationComposer,
    $$EggsTableCreateCompanionBuilder,
    $$EggsTableUpdateCompanionBuilder,
    (Egg, BaseReferences<_$AppDatabase, $EggsTable, Egg>),
    Egg,
    PrefetchHooks Function()> {
  $$EggsTableTableManager(_$AppDatabase db, $EggsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EggsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EggsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EggsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> brood = const Value.absent(),
            Value<int> number = const Value.absent(),
            Value<DateTime> laidAt = const Value.absent(),
            Value<DateTime?> hatchedAt = const Value.absent(),
            Value<DateTime?> fertilizedAt = const Value.absent(),
            Value<DateTime?> unfertilizedAt = const Value.absent(),
            Value<DateTime?> fledgedAt = const Value.absent(),
            Value<DateTime?> diedAt = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String?> ringnumber = const Value.absent(),
            Value<String?> color = const Value.absent(),
            Value<String?> cage = const Value.absent(),
            Value<String?> species = const Value.absent(),
            Value<String?> birdId = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<DateTime?> created = const Value.absent(),
            Value<DateTime?> updated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              EggsCompanion(
            id: id,
            brood: brood,
            number: number,
            laidAt: laidAt,
            hatchedAt: hatchedAt,
            fertilizedAt: fertilizedAt,
            unfertilizedAt: unfertilizedAt,
            fledgedAt: fledgedAt,
            diedAt: diedAt,
            status: status,
            ringnumber: ringnumber,
            color: color,
            cage: cage,
            species: species,
            birdId: birdId,
            notes: notes,
            created: created,
            updated: updated,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String brood,
            required int number,
            required DateTime laidAt,
            Value<DateTime?> hatchedAt = const Value.absent(),
            Value<DateTime?> fertilizedAt = const Value.absent(),
            Value<DateTime?> unfertilizedAt = const Value.absent(),
            Value<DateTime?> fledgedAt = const Value.absent(),
            Value<DateTime?> diedAt = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String?> ringnumber = const Value.absent(),
            Value<String?> color = const Value.absent(),
            Value<String?> cage = const Value.absent(),
            Value<String?> species = const Value.absent(),
            Value<String?> birdId = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<DateTime?> created = const Value.absent(),
            Value<DateTime?> updated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              EggsCompanion.insert(
            id: id,
            brood: brood,
            number: number,
            laidAt: laidAt,
            hatchedAt: hatchedAt,
            fertilizedAt: fertilizedAt,
            unfertilizedAt: unfertilizedAt,
            fledgedAt: fledgedAt,
            diedAt: diedAt,
            status: status,
            ringnumber: ringnumber,
            color: color,
            cage: cage,
            species: species,
            birdId: birdId,
            notes: notes,
            created: created,
            updated: updated,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$EggsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $EggsTable,
    Egg,
    $$EggsTableFilterComposer,
    $$EggsTableOrderingComposer,
    $$EggsTableAnnotationComposer,
    $$EggsTableCreateCompanionBuilder,
    $$EggsTableUpdateCompanionBuilder,
    (Egg, BaseReferences<_$AppDatabase, $EggsTable, Egg>),
    Egg,
    PrefetchHooks Function()>;
typedef $$ContactsTableCreateCompanionBuilder = ContactsCompanion Function({
  required String id,
  Value<String?> number,
  Value<String?> phone,
  Value<String?> cellPhoneNumber,
  Value<String?> title,
  Value<String?> firstName,
  Value<String?> lastName,
  Value<String?> email,
  Value<String?> address,
  Value<String?> city,
  Value<String?> country,
  Value<String?> postalCode,
  Value<String?> website,
  Value<bool> isAppUser,
  Value<String?> user,
  Value<DateTime?> created,
  Value<DateTime?> updated,
  Value<int> rowid,
});
typedef $$ContactsTableUpdateCompanionBuilder = ContactsCompanion Function({
  Value<String> id,
  Value<String?> number,
  Value<String?> phone,
  Value<String?> cellPhoneNumber,
  Value<String?> title,
  Value<String?> firstName,
  Value<String?> lastName,
  Value<String?> email,
  Value<String?> address,
  Value<String?> city,
  Value<String?> country,
  Value<String?> postalCode,
  Value<String?> website,
  Value<bool> isAppUser,
  Value<String?> user,
  Value<DateTime?> created,
  Value<DateTime?> updated,
  Value<int> rowid,
});

class $$ContactsTableFilterComposer
    extends Composer<_$AppDatabase, $ContactsTable> {
  $$ContactsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get number => $composableBuilder(
      column: $table.number, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cellPhoneNumber => $composableBuilder(
      column: $table.cellPhoneNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get firstName => $composableBuilder(
      column: $table.firstName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lastName => $composableBuilder(
      column: $table.lastName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get country => $composableBuilder(
      column: $table.country, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get postalCode => $composableBuilder(
      column: $table.postalCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get website => $composableBuilder(
      column: $table.website, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isAppUser => $composableBuilder(
      column: $table.isAppUser, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get user => $composableBuilder(
      column: $table.user, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get created => $composableBuilder(
      column: $table.created, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updated => $composableBuilder(
      column: $table.updated, builder: (column) => ColumnFilters(column));
}

class $$ContactsTableOrderingComposer
    extends Composer<_$AppDatabase, $ContactsTable> {
  $$ContactsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get number => $composableBuilder(
      column: $table.number, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cellPhoneNumber => $composableBuilder(
      column: $table.cellPhoneNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get firstName => $composableBuilder(
      column: $table.firstName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lastName => $composableBuilder(
      column: $table.lastName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get city => $composableBuilder(
      column: $table.city, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get country => $composableBuilder(
      column: $table.country, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get postalCode => $composableBuilder(
      column: $table.postalCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get website => $composableBuilder(
      column: $table.website, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isAppUser => $composableBuilder(
      column: $table.isAppUser, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get user => $composableBuilder(
      column: $table.user, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get created => $composableBuilder(
      column: $table.created, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updated => $composableBuilder(
      column: $table.updated, builder: (column) => ColumnOrderings(column));
}

class $$ContactsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ContactsTable> {
  $$ContactsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get number =>
      $composableBuilder(column: $table.number, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get cellPhoneNumber => $composableBuilder(
      column: $table.cellPhoneNumber, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get firstName =>
      $composableBuilder(column: $table.firstName, builder: (column) => column);

  GeneratedColumn<String> get lastName =>
      $composableBuilder(column: $table.lastName, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get city =>
      $composableBuilder(column: $table.city, builder: (column) => column);

  GeneratedColumn<String> get country =>
      $composableBuilder(column: $table.country, builder: (column) => column);

  GeneratedColumn<String> get postalCode => $composableBuilder(
      column: $table.postalCode, builder: (column) => column);

  GeneratedColumn<String> get website =>
      $composableBuilder(column: $table.website, builder: (column) => column);

  GeneratedColumn<bool> get isAppUser =>
      $composableBuilder(column: $table.isAppUser, builder: (column) => column);

  GeneratedColumn<String> get user =>
      $composableBuilder(column: $table.user, builder: (column) => column);

  GeneratedColumn<DateTime> get created =>
      $composableBuilder(column: $table.created, builder: (column) => column);

  GeneratedColumn<DateTime> get updated =>
      $composableBuilder(column: $table.updated, builder: (column) => column);
}

class $$ContactsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ContactsTable,
    Contact,
    $$ContactsTableFilterComposer,
    $$ContactsTableOrderingComposer,
    $$ContactsTableAnnotationComposer,
    $$ContactsTableCreateCompanionBuilder,
    $$ContactsTableUpdateCompanionBuilder,
    (Contact, BaseReferences<_$AppDatabase, $ContactsTable, Contact>),
    Contact,
    PrefetchHooks Function()> {
  $$ContactsTableTableManager(_$AppDatabase db, $ContactsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ContactsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ContactsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ContactsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String?> number = const Value.absent(),
            Value<String?> phone = const Value.absent(),
            Value<String?> cellPhoneNumber = const Value.absent(),
            Value<String?> title = const Value.absent(),
            Value<String?> firstName = const Value.absent(),
            Value<String?> lastName = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<String?> city = const Value.absent(),
            Value<String?> country = const Value.absent(),
            Value<String?> postalCode = const Value.absent(),
            Value<String?> website = const Value.absent(),
            Value<bool> isAppUser = const Value.absent(),
            Value<String?> user = const Value.absent(),
            Value<DateTime?> created = const Value.absent(),
            Value<DateTime?> updated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ContactsCompanion(
            id: id,
            number: number,
            phone: phone,
            cellPhoneNumber: cellPhoneNumber,
            title: title,
            firstName: firstName,
            lastName: lastName,
            email: email,
            address: address,
            city: city,
            country: country,
            postalCode: postalCode,
            website: website,
            isAppUser: isAppUser,
            user: user,
            created: created,
            updated: updated,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String?> number = const Value.absent(),
            Value<String?> phone = const Value.absent(),
            Value<String?> cellPhoneNumber = const Value.absent(),
            Value<String?> title = const Value.absent(),
            Value<String?> firstName = const Value.absent(),
            Value<String?> lastName = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<String?> city = const Value.absent(),
            Value<String?> country = const Value.absent(),
            Value<String?> postalCode = const Value.absent(),
            Value<String?> website = const Value.absent(),
            Value<bool> isAppUser = const Value.absent(),
            Value<String?> user = const Value.absent(),
            Value<DateTime?> created = const Value.absent(),
            Value<DateTime?> updated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ContactsCompanion.insert(
            id: id,
            number: number,
            phone: phone,
            cellPhoneNumber: cellPhoneNumber,
            title: title,
            firstName: firstName,
            lastName: lastName,
            email: email,
            address: address,
            city: city,
            country: country,
            postalCode: postalCode,
            website: website,
            isAppUser: isAppUser,
            user: user,
            created: created,
            updated: updated,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ContactsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ContactsTable,
    Contact,
    $$ContactsTableFilterComposer,
    $$ContactsTableOrderingComposer,
    $$ContactsTableAnnotationComposer,
    $$ContactsTableCreateCompanionBuilder,
    $$ContactsTableUpdateCompanionBuilder,
    (Contact, BaseReferences<_$AppDatabase, $ContactsTable, Contact>),
    Contact,
    PrefetchHooks Function()>;
typedef $$FinancesTableCreateCompanionBuilder = FinancesCompanion Function({
  required String id,
  required String category,
  required String title,
  required double amount,
  Value<String?> notes,
  Value<String?> bird,
  Value<DateTime?> date,
  Value<DateTime?> created,
  Value<DateTime?> updated,
  Value<int> rowid,
});
typedef $$FinancesTableUpdateCompanionBuilder = FinancesCompanion Function({
  Value<String> id,
  Value<String> category,
  Value<String> title,
  Value<double> amount,
  Value<String?> notes,
  Value<String?> bird,
  Value<DateTime?> date,
  Value<DateTime?> created,
  Value<DateTime?> updated,
  Value<int> rowid,
});

class $$FinancesTableFilterComposer
    extends Composer<_$AppDatabase, $FinancesTable> {
  $$FinancesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get bird => $composableBuilder(
      column: $table.bird, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get created => $composableBuilder(
      column: $table.created, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updated => $composableBuilder(
      column: $table.updated, builder: (column) => ColumnFilters(column));
}

class $$FinancesTableOrderingComposer
    extends Composer<_$AppDatabase, $FinancesTable> {
  $$FinancesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get category => $composableBuilder(
      column: $table.category, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get bird => $composableBuilder(
      column: $table.bird, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get created => $composableBuilder(
      column: $table.created, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updated => $composableBuilder(
      column: $table.updated, builder: (column) => ColumnOrderings(column));
}

class $$FinancesTableAnnotationComposer
    extends Composer<_$AppDatabase, $FinancesTable> {
  $$FinancesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<String> get bird =>
      $composableBuilder(column: $table.bird, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<DateTime> get created =>
      $composableBuilder(column: $table.created, builder: (column) => column);

  GeneratedColumn<DateTime> get updated =>
      $composableBuilder(column: $table.updated, builder: (column) => column);
}

class $$FinancesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $FinancesTable,
    Finance,
    $$FinancesTableFilterComposer,
    $$FinancesTableOrderingComposer,
    $$FinancesTableAnnotationComposer,
    $$FinancesTableCreateCompanionBuilder,
    $$FinancesTableUpdateCompanionBuilder,
    (Finance, BaseReferences<_$AppDatabase, $FinancesTable, Finance>),
    Finance,
    PrefetchHooks Function()> {
  $$FinancesTableTableManager(_$AppDatabase db, $FinancesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FinancesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FinancesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FinancesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> category = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<double> amount = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<String?> bird = const Value.absent(),
            Value<DateTime?> date = const Value.absent(),
            Value<DateTime?> created = const Value.absent(),
            Value<DateTime?> updated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FinancesCompanion(
            id: id,
            category: category,
            title: title,
            amount: amount,
            notes: notes,
            bird: bird,
            date: date,
            created: created,
            updated: updated,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String category,
            required String title,
            required double amount,
            Value<String?> notes = const Value.absent(),
            Value<String?> bird = const Value.absent(),
            Value<DateTime?> date = const Value.absent(),
            Value<DateTime?> created = const Value.absent(),
            Value<DateTime?> updated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FinancesCompanion.insert(
            id: id,
            category: category,
            title: title,
            amount: amount,
            notes: notes,
            bird: bird,
            date: date,
            created: created,
            updated: updated,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$FinancesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $FinancesTable,
    Finance,
    $$FinancesTableFilterComposer,
    $$FinancesTableOrderingComposer,
    $$FinancesTableAnnotationComposer,
    $$FinancesTableCreateCompanionBuilder,
    $$FinancesTableUpdateCompanionBuilder,
    (Finance, BaseReferences<_$AppDatabase, $FinancesTable, Finance>),
    Finance,
    PrefetchHooks Function()>;
typedef $$FinanceCategoriesTableCreateCompanionBuilder
    = FinanceCategoriesCompanion Function({
  required String id,
  required String name,
  required String color,
  required String kind,
  Value<String?> notes,
  Value<DateTime?> created,
  Value<DateTime?> updated,
  Value<int> rowid,
});
typedef $$FinanceCategoriesTableUpdateCompanionBuilder
    = FinanceCategoriesCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<String> color,
  Value<String> kind,
  Value<String?> notes,
  Value<DateTime?> created,
  Value<DateTime?> updated,
  Value<int> rowid,
});

class $$FinanceCategoriesTableFilterComposer
    extends Composer<_$AppDatabase, $FinanceCategoriesTable> {
  $$FinanceCategoriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get kind => $composableBuilder(
      column: $table.kind, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get created => $composableBuilder(
      column: $table.created, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updated => $composableBuilder(
      column: $table.updated, builder: (column) => ColumnFilters(column));
}

class $$FinanceCategoriesTableOrderingComposer
    extends Composer<_$AppDatabase, $FinanceCategoriesTable> {
  $$FinanceCategoriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get color => $composableBuilder(
      column: $table.color, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get kind => $composableBuilder(
      column: $table.kind, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get created => $composableBuilder(
      column: $table.created, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updated => $composableBuilder(
      column: $table.updated, builder: (column) => ColumnOrderings(column));
}

class $$FinanceCategoriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $FinanceCategoriesTable> {
  $$FinanceCategoriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<String> get kind =>
      $composableBuilder(column: $table.kind, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<DateTime> get created =>
      $composableBuilder(column: $table.created, builder: (column) => column);

  GeneratedColumn<DateTime> get updated =>
      $composableBuilder(column: $table.updated, builder: (column) => column);
}

class $$FinanceCategoriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $FinanceCategoriesTable,
    FinanceCategory,
    $$FinanceCategoriesTableFilterComposer,
    $$FinanceCategoriesTableOrderingComposer,
    $$FinanceCategoriesTableAnnotationComposer,
    $$FinanceCategoriesTableCreateCompanionBuilder,
    $$FinanceCategoriesTableUpdateCompanionBuilder,
    (
      FinanceCategory,
      BaseReferences<_$AppDatabase, $FinanceCategoriesTable, FinanceCategory>
    ),
    FinanceCategory,
    PrefetchHooks Function()> {
  $$FinanceCategoriesTableTableManager(
      _$AppDatabase db, $FinanceCategoriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FinanceCategoriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FinanceCategoriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FinanceCategoriesTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> color = const Value.absent(),
            Value<String> kind = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<DateTime?> created = const Value.absent(),
            Value<DateTime?> updated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FinanceCategoriesCompanion(
            id: id,
            name: name,
            color: color,
            kind: kind,
            notes: notes,
            created: created,
            updated: updated,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            required String color,
            required String kind,
            Value<String?> notes = const Value.absent(),
            Value<DateTime?> created = const Value.absent(),
            Value<DateTime?> updated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FinanceCategoriesCompanion.insert(
            id: id,
            name: name,
            color: color,
            kind: kind,
            notes: notes,
            created: created,
            updated: updated,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$FinanceCategoriesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $FinanceCategoriesTable,
    FinanceCategory,
    $$FinanceCategoriesTableFilterComposer,
    $$FinanceCategoriesTableOrderingComposer,
    $$FinanceCategoriesTableAnnotationComposer,
    $$FinanceCategoriesTableCreateCompanionBuilder,
    $$FinanceCategoriesTableUpdateCompanionBuilder,
    (
      FinanceCategory,
      BaseReferences<_$AppDatabase, $FinanceCategoriesTable, FinanceCategory>
    ),
    FinanceCategory,
    PrefetchHooks Function()>;
typedef $$SpeciesTableTableCreateCompanionBuilder = SpeciesTableCompanion
    Function({
  required String id,
  Value<String?> name,
  Value<String?> latName,
  Value<String?> imageUrl,
  Value<int?> incubationDays,
  Value<int?> fledgeDays,
  Value<String?> notes,
  Value<String?> user,
  Value<DateTime?> created,
  Value<DateTime?> updated,
  Value<int> rowid,
});
typedef $$SpeciesTableTableUpdateCompanionBuilder = SpeciesTableCompanion
    Function({
  Value<String> id,
  Value<String?> name,
  Value<String?> latName,
  Value<String?> imageUrl,
  Value<int?> incubationDays,
  Value<int?> fledgeDays,
  Value<String?> notes,
  Value<String?> user,
  Value<DateTime?> created,
  Value<DateTime?> updated,
  Value<int> rowid,
});

class $$SpeciesTableTableFilterComposer
    extends Composer<_$AppDatabase, $SpeciesTableTable> {
  $$SpeciesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get latName => $composableBuilder(
      column: $table.latName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get incubationDays => $composableBuilder(
      column: $table.incubationDays,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get fledgeDays => $composableBuilder(
      column: $table.fledgeDays, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get user => $composableBuilder(
      column: $table.user, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get created => $composableBuilder(
      column: $table.created, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updated => $composableBuilder(
      column: $table.updated, builder: (column) => ColumnFilters(column));
}

class $$SpeciesTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SpeciesTableTable> {
  $$SpeciesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get latName => $composableBuilder(
      column: $table.latName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get incubationDays => $composableBuilder(
      column: $table.incubationDays,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get fledgeDays => $composableBuilder(
      column: $table.fledgeDays, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get user => $composableBuilder(
      column: $table.user, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get created => $composableBuilder(
      column: $table.created, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updated => $composableBuilder(
      column: $table.updated, builder: (column) => ColumnOrderings(column));
}

class $$SpeciesTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SpeciesTableTable> {
  $$SpeciesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get latName =>
      $composableBuilder(column: $table.latName, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<int> get incubationDays => $composableBuilder(
      column: $table.incubationDays, builder: (column) => column);

  GeneratedColumn<int> get fledgeDays => $composableBuilder(
      column: $table.fledgeDays, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<String> get user =>
      $composableBuilder(column: $table.user, builder: (column) => column);

  GeneratedColumn<DateTime> get created =>
      $composableBuilder(column: $table.created, builder: (column) => column);

  GeneratedColumn<DateTime> get updated =>
      $composableBuilder(column: $table.updated, builder: (column) => column);
}

class $$SpeciesTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SpeciesTableTable,
    SpeciesTableData,
    $$SpeciesTableTableFilterComposer,
    $$SpeciesTableTableOrderingComposer,
    $$SpeciesTableTableAnnotationComposer,
    $$SpeciesTableTableCreateCompanionBuilder,
    $$SpeciesTableTableUpdateCompanionBuilder,
    (
      SpeciesTableData,
      BaseReferences<_$AppDatabase, $SpeciesTableTable, SpeciesTableData>
    ),
    SpeciesTableData,
    PrefetchHooks Function()> {
  $$SpeciesTableTableTableManager(_$AppDatabase db, $SpeciesTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SpeciesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SpeciesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SpeciesTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> latName = const Value.absent(),
            Value<String?> imageUrl = const Value.absent(),
            Value<int?> incubationDays = const Value.absent(),
            Value<int?> fledgeDays = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<String?> user = const Value.absent(),
            Value<DateTime?> created = const Value.absent(),
            Value<DateTime?> updated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SpeciesTableCompanion(
            id: id,
            name: name,
            latName: latName,
            imageUrl: imageUrl,
            incubationDays: incubationDays,
            fledgeDays: fledgeDays,
            notes: notes,
            user: user,
            created: created,
            updated: updated,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String?> name = const Value.absent(),
            Value<String?> latName = const Value.absent(),
            Value<String?> imageUrl = const Value.absent(),
            Value<int?> incubationDays = const Value.absent(),
            Value<int?> fledgeDays = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<String?> user = const Value.absent(),
            Value<DateTime?> created = const Value.absent(),
            Value<DateTime?> updated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SpeciesTableCompanion.insert(
            id: id,
            name: name,
            latName: latName,
            imageUrl: imageUrl,
            incubationDays: incubationDays,
            fledgeDays: fledgeDays,
            notes: notes,
            user: user,
            created: created,
            updated: updated,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SpeciesTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SpeciesTableTable,
    SpeciesTableData,
    $$SpeciesTableTableFilterComposer,
    $$SpeciesTableTableOrderingComposer,
    $$SpeciesTableTableAnnotationComposer,
    $$SpeciesTableTableCreateCompanionBuilder,
    $$SpeciesTableTableUpdateCompanionBuilder,
    (
      SpeciesTableData,
      BaseReferences<_$AppDatabase, $SpeciesTableTable, SpeciesTableData>
    ),
    SpeciesTableData,
    PrefetchHooks Function()>;
typedef $$CagesTableCreateCompanionBuilder = CagesCompanion Function({
  required String id,
  Value<String?> name,
  Value<String?> description,
  Value<int?> width,
  Value<int?> height,
  Value<int?> depth,
  Value<String?> type,
  Value<String?> location,
  Value<int?> capacity,
  Value<String?> notes,
  Value<String?> user,
  Value<DateTime?> created,
  Value<DateTime?> updated,
  Value<int> rowid,
});
typedef $$CagesTableUpdateCompanionBuilder = CagesCompanion Function({
  Value<String> id,
  Value<String?> name,
  Value<String?> description,
  Value<int?> width,
  Value<int?> height,
  Value<int?> depth,
  Value<String?> type,
  Value<String?> location,
  Value<int?> capacity,
  Value<String?> notes,
  Value<String?> user,
  Value<DateTime?> created,
  Value<DateTime?> updated,
  Value<int> rowid,
});

class $$CagesTableFilterComposer extends Composer<_$AppDatabase, $CagesTable> {
  $$CagesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get depth => $composableBuilder(
      column: $table.depth, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get location => $composableBuilder(
      column: $table.location, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get capacity => $composableBuilder(
      column: $table.capacity, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get user => $composableBuilder(
      column: $table.user, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get created => $composableBuilder(
      column: $table.created, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updated => $composableBuilder(
      column: $table.updated, builder: (column) => ColumnFilters(column));
}

class $$CagesTableOrderingComposer
    extends Composer<_$AppDatabase, $CagesTable> {
  $$CagesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get depth => $composableBuilder(
      column: $table.depth, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get location => $composableBuilder(
      column: $table.location, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get capacity => $composableBuilder(
      column: $table.capacity, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get user => $composableBuilder(
      column: $table.user, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get created => $composableBuilder(
      column: $table.created, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updated => $composableBuilder(
      column: $table.updated, builder: (column) => ColumnOrderings(column));
}

class $$CagesTableAnnotationComposer
    extends Composer<_$AppDatabase, $CagesTable> {
  $$CagesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<int> get width =>
      $composableBuilder(column: $table.width, builder: (column) => column);

  GeneratedColumn<int> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);

  GeneratedColumn<int> get depth =>
      $composableBuilder(column: $table.depth, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get location =>
      $composableBuilder(column: $table.location, builder: (column) => column);

  GeneratedColumn<int> get capacity =>
      $composableBuilder(column: $table.capacity, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<String> get user =>
      $composableBuilder(column: $table.user, builder: (column) => column);

  GeneratedColumn<DateTime> get created =>
      $composableBuilder(column: $table.created, builder: (column) => column);

  GeneratedColumn<DateTime> get updated =>
      $composableBuilder(column: $table.updated, builder: (column) => column);
}

class $$CagesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CagesTable,
    Cage,
    $$CagesTableFilterComposer,
    $$CagesTableOrderingComposer,
    $$CagesTableAnnotationComposer,
    $$CagesTableCreateCompanionBuilder,
    $$CagesTableUpdateCompanionBuilder,
    (Cage, BaseReferences<_$AppDatabase, $CagesTable, Cage>),
    Cage,
    PrefetchHooks Function()> {
  $$CagesTableTableManager(_$AppDatabase db, $CagesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CagesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CagesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CagesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<int?> width = const Value.absent(),
            Value<int?> height = const Value.absent(),
            Value<int?> depth = const Value.absent(),
            Value<String?> type = const Value.absent(),
            Value<String?> location = const Value.absent(),
            Value<int?> capacity = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<String?> user = const Value.absent(),
            Value<DateTime?> created = const Value.absent(),
            Value<DateTime?> updated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CagesCompanion(
            id: id,
            name: name,
            description: description,
            width: width,
            height: height,
            depth: depth,
            type: type,
            location: location,
            capacity: capacity,
            notes: notes,
            user: user,
            created: created,
            updated: updated,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String?> name = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<int?> width = const Value.absent(),
            Value<int?> height = const Value.absent(),
            Value<int?> depth = const Value.absent(),
            Value<String?> type = const Value.absent(),
            Value<String?> location = const Value.absent(),
            Value<int?> capacity = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<String?> user = const Value.absent(),
            Value<DateTime?> created = const Value.absent(),
            Value<DateTime?> updated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CagesCompanion.insert(
            id: id,
            name: name,
            description: description,
            width: width,
            height: height,
            depth: depth,
            type: type,
            location: location,
            capacity: capacity,
            notes: notes,
            user: user,
            created: created,
            updated: updated,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CagesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CagesTable,
    Cage,
    $$CagesTableFilterComposer,
    $$CagesTableOrderingComposer,
    $$CagesTableAnnotationComposer,
    $$CagesTableCreateCompanionBuilder,
    $$CagesTableUpdateCompanionBuilder,
    (Cage, BaseReferences<_$AppDatabase, $CagesTable, Cage>),
    Cage,
    PrefetchHooks Function()>;
typedef $$BirdColorsTableCreateCompanionBuilder = BirdColorsCompanion Function({
  required String id,
  Value<String?> name,
  Value<String?> hex,
  Value<String?> inheritance,
  Value<String?> notes,
  Value<String?> user,
  Value<DateTime?> created,
  Value<DateTime?> updated,
  Value<int> rowid,
});
typedef $$BirdColorsTableUpdateCompanionBuilder = BirdColorsCompanion Function({
  Value<String> id,
  Value<String?> name,
  Value<String?> hex,
  Value<String?> inheritance,
  Value<String?> notes,
  Value<String?> user,
  Value<DateTime?> created,
  Value<DateTime?> updated,
  Value<int> rowid,
});

class $$BirdColorsTableFilterComposer
    extends Composer<_$AppDatabase, $BirdColorsTable> {
  $$BirdColorsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get hex => $composableBuilder(
      column: $table.hex, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get inheritance => $composableBuilder(
      column: $table.inheritance, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get user => $composableBuilder(
      column: $table.user, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get created => $composableBuilder(
      column: $table.created, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updated => $composableBuilder(
      column: $table.updated, builder: (column) => ColumnFilters(column));
}

class $$BirdColorsTableOrderingComposer
    extends Composer<_$AppDatabase, $BirdColorsTable> {
  $$BirdColorsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get hex => $composableBuilder(
      column: $table.hex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get inheritance => $composableBuilder(
      column: $table.inheritance, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get user => $composableBuilder(
      column: $table.user, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get created => $composableBuilder(
      column: $table.created, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updated => $composableBuilder(
      column: $table.updated, builder: (column) => ColumnOrderings(column));
}

class $$BirdColorsTableAnnotationComposer
    extends Composer<_$AppDatabase, $BirdColorsTable> {
  $$BirdColorsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get hex =>
      $composableBuilder(column: $table.hex, builder: (column) => column);

  GeneratedColumn<String> get inheritance => $composableBuilder(
      column: $table.inheritance, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<String> get user =>
      $composableBuilder(column: $table.user, builder: (column) => column);

  GeneratedColumn<DateTime> get created =>
      $composableBuilder(column: $table.created, builder: (column) => column);

  GeneratedColumn<DateTime> get updated =>
      $composableBuilder(column: $table.updated, builder: (column) => column);
}

class $$BirdColorsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BirdColorsTable,
    BirdColor,
    $$BirdColorsTableFilterComposer,
    $$BirdColorsTableOrderingComposer,
    $$BirdColorsTableAnnotationComposer,
    $$BirdColorsTableCreateCompanionBuilder,
    $$BirdColorsTableUpdateCompanionBuilder,
    (BirdColor, BaseReferences<_$AppDatabase, $BirdColorsTable, BirdColor>),
    BirdColor,
    PrefetchHooks Function()> {
  $$BirdColorsTableTableManager(_$AppDatabase db, $BirdColorsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BirdColorsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BirdColorsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BirdColorsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
            Value<String?> hex = const Value.absent(),
            Value<String?> inheritance = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<String?> user = const Value.absent(),
            Value<DateTime?> created = const Value.absent(),
            Value<DateTime?> updated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              BirdColorsCompanion(
            id: id,
            name: name,
            hex: hex,
            inheritance: inheritance,
            notes: notes,
            user: user,
            created: created,
            updated: updated,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String?> name = const Value.absent(),
            Value<String?> hex = const Value.absent(),
            Value<String?> inheritance = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<String?> user = const Value.absent(),
            Value<DateTime?> created = const Value.absent(),
            Value<DateTime?> updated = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              BirdColorsCompanion.insert(
            id: id,
            name: name,
            hex: hex,
            inheritance: inheritance,
            notes: notes,
            user: user,
            created: created,
            updated: updated,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$BirdColorsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $BirdColorsTable,
    BirdColor,
    $$BirdColorsTableFilterComposer,
    $$BirdColorsTableOrderingComposer,
    $$BirdColorsTableAnnotationComposer,
    $$BirdColorsTableCreateCompanionBuilder,
    $$BirdColorsTableUpdateCompanionBuilder,
    (BirdColor, BaseReferences<_$AppDatabase, $BirdColorsTable, BirdColor>),
    BirdColor,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$BirdsTableTableManager get birds =>
      $$BirdsTableTableManager(_db, _db.birds);
  $$BreedingPairsTableTableManager get breedingPairs =>
      $$BreedingPairsTableTableManager(_db, _db.breedingPairs);
  $$BroodsTableTableManager get broods =>
      $$BroodsTableTableManager(_db, _db.broods);
  $$EggsTableTableManager get eggs => $$EggsTableTableManager(_db, _db.eggs);
  $$ContactsTableTableManager get contacts =>
      $$ContactsTableTableManager(_db, _db.contacts);
  $$FinancesTableTableManager get finances =>
      $$FinancesTableTableManager(_db, _db.finances);
  $$FinanceCategoriesTableTableManager get financeCategories =>
      $$FinanceCategoriesTableTableManager(_db, _db.financeCategories);
  $$SpeciesTableTableTableManager get speciesTable =>
      $$SpeciesTableTableTableManager(_db, _db.speciesTable);
  $$CagesTableTableManager get cages =>
      $$CagesTableTableManager(_db, _db.cages);
  $$BirdColorsTableTableManager get birdColors =>
      $$BirdColorsTableTableManager(_db, _db.birdColors);
}
