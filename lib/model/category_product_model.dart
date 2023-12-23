import 'package:shopApp/model/product.dart';

class CategoryProductModel {
  late String kategoriTitle;
  late List<Product> products;

  CategoryProductModel({
    required this.kategoriTitle,
    required this.products,
  });
}