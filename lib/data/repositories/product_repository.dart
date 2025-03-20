import 'package:injectable/injectable.dart';
import 'package:todo_app/data/data.dart';

@injectable
class ProductRepository {
  ProductRepository(
    this._productDatasource,
    this._appDb,
  );

  final ProductDatasource _productDatasource;
  final AppDb _appDb;

  Future<Result<List<ProductEntityData>>> findAll(
    String search,
    int limit,
    int offset,
  ) async {
    try {
      final result = await _appDb.searchContracts(
        search,
        limit,
        offset,
      );

      return Result.success(result);
    } on Exception catch (e) {
      return Result.error(handleException(e));
    }
  }

  Future<Result<List<Product>>> findAllApi() async {
    try {
      final result = await _productDatasource.findAllApi();

      return Result.success(result);
    } on Exception catch (e) {
      return Result.error(handleException(e));
    }
  }

  Future<Result<bool>> delete(ProductEntityData product) async {
    try {
      final result = await _productDatasource.delete(product);

      return Result.success(result);
    } on Exception catch (e) {
      return Result.error(handleException(e));
    }
    // return Result.success(true);
  }

  Future<Result<bool>> insertProductFromApi(
    List<Product> productsFromApi,
  ) async {
    try {
      final result =
          await _productDatasource.insertProductFromApi(productsFromApi);

      return Result.success(result);
    } on Exception catch (e) {
      return Result.error(handleException(e));
    }
  }
}
