import 'package:drift/drift.dart';

class ProductEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get externalId => text()();
  TextColumn get name => text().nullable()();
  TextColumn get image => text().nullable()();
  TextColumn get currency => text().nullable()();
  DateTimeColumn get createdAt => dateTime().nullable()();
  TextColumn get description => text().nullable()();
  TextColumn get price => text().withDefault(const Constant('0.00'))();
  TextColumn get departament => text().nullable()();
  TextColumn get stock => text()();
  BoolColumn get isSelect => boolean().withDefault(const Constant(false))();

  @override
  String? get tableName => 'product';
}
