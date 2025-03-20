part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.loading() = _Loading;
  const factory ProductState.done(
    List<Product> products, {
    bool? loading,
    Error? error,
    @Default(<String>{}) Set<String> selectedItems,
    bool? successful,
    String? message,
  }) = _Done;
}
