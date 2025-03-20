import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/core/constants/urls.dart';
import 'package:todo_app/core/core.dart';
import 'package:todo_app/data/data.dart';
// import 'package:shared_preferences/shared_preferences.dart';

@injectable
class ProductDatasource {
  ProductDatasource(
    this._http,
    // this._storage,
    this._appDb,
  );

  final HttpClient _http;
  // final SharedPreferences _storage;
  final AppDb _appDb;

  Future<List<Product>> findAllApi() async {
    try {
      final response = await _http.get<List<dynamic>>(
        URL.products,
        queryParameters: {
          'limit': 10,
          'page': 1,
        },
      );
      final data = response.data;

      if (data != null) {
        return data
            .map(
              (f) => Product.fromJson(f as Map<String, dynamic>),
            )
            .toList();
      }

      throw ServerException();
    } on DioException catch (e) {
      log(e.toString(), name: runtimeType.toString());
      throw handleDioException(e);
    }
  }

  Future<bool> insertProductFromApi(List<Product> productsFromApi) async {
    final productCompanions = productsFromApi.map((product) {
      return ProductEntityCompanion(
        externalId: Value(product.id),
        name: Value(product.name),
        price: Value(product.price),
        stock: Value(product.stock),
        image: Value(product.image),
        currency: Value(product.currency),
        createdAt: Value(product.createdAt),
        description: Value(product.description),
        departament: Value(product.departament),
        isSelect: Value(product.isSelect),
      );
    }).toList();

    await _appDb.insertProducts(productCompanions);
    return true;
  }

  Future<bool> delete(ProductEntityData product) async {
    try {
      await _appDb.deleteProduct(product.id);
      return true;
    } catch (e) {
      rethrow;
    }
  }
}
