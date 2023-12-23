import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopApp/model/category_product_model.dart';
import 'package:shopApp/model/product.dart';
import 'package:shopApp/riverpod/category_riverpod.dart';

class Wishlist extends ConsumerStatefulWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WishlistState();
}

class _WishlistState extends ConsumerState<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: y.map((product) {
        return ListTile(
          title: Text(product.title),
          subtitle: Text(product.price.toString()),
        );
      }).toList(),
    )
        // Center(child: Text("wishlist"),),
        );
  }
}

List<Product> getSavedProducts() {
  // Tüm kategorileri alın
  List<CategoryProductModel> categories = [
    kategori1,
    kategori2,
    kategori3,
    kategori4
  ];

  // Tüm kategorilerdeki ürünleri alın
  List<Product> products = [];
  for (var category in categories) {
    products.addAll(category.products);
  }

  // isSaved özelliği true olan ürünleri alın
  List<Product> savedProducts = [];
  for (var product in products) {
    if (product.isSaved) {
      savedProducts.add(product);
    }
  }

  return savedProducts;
}

var y = getSavedProducts();
