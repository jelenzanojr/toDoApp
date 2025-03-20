import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

import 'package:todo_app/data/entity/product.dart';

part 'database_datasource.g.dart';

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    final dbFolder = await getApplicationDocumentsDirectory();

    // final othe1 = await getApplicationSupportDirectory(); // for windows

    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

@singleton
@DriftDatabase(
  tables: [
    ProductEntity,
  ],
)
class AppDb extends _$AppDb {
  AppDb() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {},
    );
  }

  Future<void> insertProduct(ProductEntityCompanion entry) async {
    return transaction(() async {
      await into(productEntity).insert(
        entry,
        mode: InsertMode.insertOrIgnore,
      );
    });
  }

  Future<void> deleteProduct(
    int id,
  ) async {
    return transaction(() async {
      await (delete(productEntity)..where((tbl) => tbl.id.equals(id))).go();
    });
  }

  Future<void> deleteAllProduct() async {
    return transaction(() async {
      await delete(productEntity).go();
    });
  }

  Future<ProductEntityData?> productOfId(int id) {
    return (select(productEntity)
          ..where(
            (tbl) => tbl.id.equals(id),
          ))
        .getSingleOrNull();
  }

  Future<List<ProductEntityData>> getAllProductEntries({
    int? limit,
    int? offset,
  }) async {
    final sol = select(productEntity)
      ..orderBy([
        (u) => OrderingTerm(
              expression: u.name,
            ),
      ]);
    if (limit != null) {
      return (sol
            ..limit(
              limit,
              offset: offset,
            ))
          .get();
    }
    return sol.get();
  }

  Future<void> insertProducts(List<ProductEntityCompanion> entries) async {
    await batch((batch) {
      batch.insertAll(productEntity, entries);
    });
  }

  Future<List<ProductEntityData>> searchContracts(
    String searchText,
    int limit,
    int offset,
  ) async {
    if (searchText.trim().isEmpty) {
      return getAllProductEntries(limit: limit, offset: offset);
    }
    final normalizedSearchText = searchText.toLowerCase();

    return (select(productEntity)
          ..where((product) {
            final search = '%$normalizedSearchText%';
            return product.name.lower().like(search) |
                product.description.lower().like(search);
          })
          ..limit(limit, offset: offset))
        .get();
  }
}
