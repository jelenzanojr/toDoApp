part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.loadData(String search) = _LoadData;
  const factory ProductEvent.load() = _Load;
  const factory ProductEvent.selectItem(String id, bool isSelected) =
      _SelectItem;
  const factory ProductEvent.importData() = _ImportData;

  // const factory UserEvent.loadProducts() = _LoadProducts;
  // const factory UserEvent.addProduct(Product product) = _AddProduct;
  // const factory UserEvent.init() = _Init;
}
