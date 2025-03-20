// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    @JsonKey(name: 'id') required String id,
    required String name,
    required String image,
    required String currency,
    required DateTime createdAt,
    required String description,
    required String price,
    required String departament,
    required String stock,
    @JsonKey(ignore: true) @Default(false) bool isSelect,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
