// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_datasource.dart';

// ignore_for_file: type=lint
class $ProductEntityTable extends ProductEntity
    with TableInfo<$ProductEntityTable, ProductEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _externalIdMeta =
      const VerificationMeta('externalId');
  @override
  late final GeneratedColumn<String> externalId = GeneratedColumn<String>(
      'external_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _currencyMeta =
      const VerificationMeta('currency');
  @override
  late final GeneratedColumn<String> currency = GeneratedColumn<String>(
      'currency', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<String> price = GeneratedColumn<String>(
      'price', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('0.00'));
  static const VerificationMeta _departamentMeta =
      const VerificationMeta('departament');
  @override
  late final GeneratedColumn<String> departament = GeneratedColumn<String>(
      'departament', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _stockMeta = const VerificationMeta('stock');
  @override
  late final GeneratedColumn<String> stock = GeneratedColumn<String>(
      'stock', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isSelectMeta =
      const VerificationMeta('isSelect');
  @override
  late final GeneratedColumn<bool> isSelect = GeneratedColumn<bool>(
      'is_select', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_select" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        externalId,
        name,
        image,
        currency,
        createdAt,
        description,
        price,
        departament,
        stock,
        isSelect
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product';
  @override
  VerificationContext validateIntegrity(Insertable<ProductEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('external_id')) {
      context.handle(
          _externalIdMeta,
          externalId.isAcceptableOrUnknown(
              data['external_id']!, _externalIdMeta));
    } else if (isInserting) {
      context.missing(_externalIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    }
    if (data.containsKey('currency')) {
      context.handle(_currencyMeta,
          currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    }
    if (data.containsKey('departament')) {
      context.handle(
          _departamentMeta,
          departament.isAcceptableOrUnknown(
              data['departament']!, _departamentMeta));
    }
    if (data.containsKey('stock')) {
      context.handle(
          _stockMeta, stock.isAcceptableOrUnknown(data['stock']!, _stockMeta));
    } else if (isInserting) {
      context.missing(_stockMeta);
    }
    if (data.containsKey('is_select')) {
      context.handle(_isSelectMeta,
          isSelect.isAcceptableOrUnknown(data['is_select']!, _isSelectMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      externalId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}external_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image']),
      currency: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}currency']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}price'])!,
      departament: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}departament']),
      stock: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}stock'])!,
      isSelect: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_select'])!,
    );
  }

  @override
  $ProductEntityTable createAlias(String alias) {
    return $ProductEntityTable(attachedDatabase, alias);
  }
}

class ProductEntityData extends DataClass
    implements Insertable<ProductEntityData> {
  final int id;
  final String externalId;
  final String? name;
  final String? image;
  final String? currency;
  final DateTime? createdAt;
  final String? description;
  final String price;
  final String? departament;
  final String stock;
  final bool isSelect;
  const ProductEntityData(
      {required this.id,
      required this.externalId,
      this.name,
      this.image,
      this.currency,
      this.createdAt,
      this.description,
      required this.price,
      this.departament,
      required this.stock,
      required this.isSelect});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['external_id'] = Variable<String>(externalId);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String>(image);
    }
    if (!nullToAbsent || currency != null) {
      map['currency'] = Variable<String>(currency);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['price'] = Variable<String>(price);
    if (!nullToAbsent || departament != null) {
      map['departament'] = Variable<String>(departament);
    }
    map['stock'] = Variable<String>(stock);
    map['is_select'] = Variable<bool>(isSelect);
    return map;
  }

  ProductEntityCompanion toCompanion(bool nullToAbsent) {
    return ProductEntityCompanion(
      id: Value(id),
      externalId: Value(externalId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
      currency: currency == null && nullToAbsent
          ? const Value.absent()
          : Value(currency),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      price: Value(price),
      departament: departament == null && nullToAbsent
          ? const Value.absent()
          : Value(departament),
      stock: Value(stock),
      isSelect: Value(isSelect),
    );
  }

  factory ProductEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductEntityData(
      id: serializer.fromJson<int>(json['id']),
      externalId: serializer.fromJson<String>(json['externalId']),
      name: serializer.fromJson<String?>(json['name']),
      image: serializer.fromJson<String?>(json['image']),
      currency: serializer.fromJson<String?>(json['currency']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      description: serializer.fromJson<String?>(json['description']),
      price: serializer.fromJson<String>(json['price']),
      departament: serializer.fromJson<String?>(json['departament']),
      stock: serializer.fromJson<String>(json['stock']),
      isSelect: serializer.fromJson<bool>(json['isSelect']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'externalId': serializer.toJson<String>(externalId),
      'name': serializer.toJson<String?>(name),
      'image': serializer.toJson<String?>(image),
      'currency': serializer.toJson<String?>(currency),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'description': serializer.toJson<String?>(description),
      'price': serializer.toJson<String>(price),
      'departament': serializer.toJson<String?>(departament),
      'stock': serializer.toJson<String>(stock),
      'isSelect': serializer.toJson<bool>(isSelect),
    };
  }

  ProductEntityData copyWith(
          {int? id,
          String? externalId,
          Value<String?> name = const Value.absent(),
          Value<String?> image = const Value.absent(),
          Value<String?> currency = const Value.absent(),
          Value<DateTime?> createdAt = const Value.absent(),
          Value<String?> description = const Value.absent(),
          String? price,
          Value<String?> departament = const Value.absent(),
          String? stock,
          bool? isSelect}) =>
      ProductEntityData(
        id: id ?? this.id,
        externalId: externalId ?? this.externalId,
        name: name.present ? name.value : this.name,
        image: image.present ? image.value : this.image,
        currency: currency.present ? currency.value : this.currency,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
        description: description.present ? description.value : this.description,
        price: price ?? this.price,
        departament: departament.present ? departament.value : this.departament,
        stock: stock ?? this.stock,
        isSelect: isSelect ?? this.isSelect,
      );
  @override
  String toString() {
    return (StringBuffer('ProductEntityData(')
          ..write('id: $id, ')
          ..write('externalId: $externalId, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('currency: $currency, ')
          ..write('createdAt: $createdAt, ')
          ..write('description: $description, ')
          ..write('price: $price, ')
          ..write('departament: $departament, ')
          ..write('stock: $stock, ')
          ..write('isSelect: $isSelect')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, externalId, name, image, currency,
      createdAt, description, price, departament, stock, isSelect);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductEntityData &&
          other.id == this.id &&
          other.externalId == this.externalId &&
          other.name == this.name &&
          other.image == this.image &&
          other.currency == this.currency &&
          other.createdAt == this.createdAt &&
          other.description == this.description &&
          other.price == this.price &&
          other.departament == this.departament &&
          other.stock == this.stock &&
          other.isSelect == this.isSelect);
}

class ProductEntityCompanion extends UpdateCompanion<ProductEntityData> {
  final Value<int> id;
  final Value<String> externalId;
  final Value<String?> name;
  final Value<String?> image;
  final Value<String?> currency;
  final Value<DateTime?> createdAt;
  final Value<String?> description;
  final Value<String> price;
  final Value<String?> departament;
  final Value<String> stock;
  final Value<bool> isSelect;
  const ProductEntityCompanion({
    this.id = const Value.absent(),
    this.externalId = const Value.absent(),
    this.name = const Value.absent(),
    this.image = const Value.absent(),
    this.currency = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.description = const Value.absent(),
    this.price = const Value.absent(),
    this.departament = const Value.absent(),
    this.stock = const Value.absent(),
    this.isSelect = const Value.absent(),
  });
  ProductEntityCompanion.insert({
    this.id = const Value.absent(),
    required String externalId,
    this.name = const Value.absent(),
    this.image = const Value.absent(),
    this.currency = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.description = const Value.absent(),
    this.price = const Value.absent(),
    this.departament = const Value.absent(),
    required String stock,
    this.isSelect = const Value.absent(),
  })  : externalId = Value(externalId),
        stock = Value(stock);
  static Insertable<ProductEntityData> custom({
    Expression<int>? id,
    Expression<String>? externalId,
    Expression<String>? name,
    Expression<String>? image,
    Expression<String>? currency,
    Expression<DateTime>? createdAt,
    Expression<String>? description,
    Expression<String>? price,
    Expression<String>? departament,
    Expression<String>? stock,
    Expression<bool>? isSelect,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (externalId != null) 'external_id': externalId,
      if (name != null) 'name': name,
      if (image != null) 'image': image,
      if (currency != null) 'currency': currency,
      if (createdAt != null) 'created_at': createdAt,
      if (description != null) 'description': description,
      if (price != null) 'price': price,
      if (departament != null) 'departament': departament,
      if (stock != null) 'stock': stock,
      if (isSelect != null) 'is_select': isSelect,
    });
  }

  ProductEntityCompanion copyWith(
      {Value<int>? id,
      Value<String>? externalId,
      Value<String?>? name,
      Value<String?>? image,
      Value<String?>? currency,
      Value<DateTime?>? createdAt,
      Value<String?>? description,
      Value<String>? price,
      Value<String?>? departament,
      Value<String>? stock,
      Value<bool>? isSelect}) {
    return ProductEntityCompanion(
      id: id ?? this.id,
      externalId: externalId ?? this.externalId,
      name: name ?? this.name,
      image: image ?? this.image,
      currency: currency ?? this.currency,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      price: price ?? this.price,
      departament: departament ?? this.departament,
      stock: stock ?? this.stock,
      isSelect: isSelect ?? this.isSelect,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (externalId.present) {
      map['external_id'] = Variable<String>(externalId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (price.present) {
      map['price'] = Variable<String>(price.value);
    }
    if (departament.present) {
      map['departament'] = Variable<String>(departament.value);
    }
    if (stock.present) {
      map['stock'] = Variable<String>(stock.value);
    }
    if (isSelect.present) {
      map['is_select'] = Variable<bool>(isSelect.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductEntityCompanion(')
          ..write('id: $id, ')
          ..write('externalId: $externalId, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('currency: $currency, ')
          ..write('createdAt: $createdAt, ')
          ..write('description: $description, ')
          ..write('price: $price, ')
          ..write('departament: $departament, ')
          ..write('stock: $stock, ')
          ..write('isSelect: $isSelect')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  late final $ProductEntityTable productEntity = $ProductEntityTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [productEntity];
}
