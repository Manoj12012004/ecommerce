import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/services/api.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [];
  List<Product> get products => _products;

  Future<void> fetchProducts() async {
    try {
      _products = await Api.fetchProducts();
      notifyListeners();
    } catch (e) {
      print("Error in fetching products: $e");
    }
  }
}
