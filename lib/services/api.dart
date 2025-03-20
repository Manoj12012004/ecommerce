import 'dart:convert';
import 'package:ecommerce/models/product.dart';
import 'package:http/http.dart' as http;

class Api {
  static const String Url = 'https://fakestoreapi.com/products';
  static Future<List<Product>> fetchProducts() async {
    final resp = await http.get(Uri.parse(Url));
    if (resp.statusCode == 200) {
      final List<dynamic> products = json.decode(resp.body);
      return products.map((product) => Product.fromJson(product)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
