import 'dart:convert';
import 'package:servicios_modelos_app/models/Category.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:http/http.dart' as http;
import 'package:servicios_modelos_app/models/product.dart';

class ProductService {
  static const String _baseUrl = 'https://dummyjson.com';

  Future<List<Product>> getProduct({int limit = 30}) async {
    final url = Uri.parse('$_baseUrl/products?limit=$limit');
    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception('Error al obtener los productos ${response.statusCode}');
    }

    final Map<String, dynamic> data = jsonDecode(response.body);
    final List<dynamic> jsonList = data['products'];

    return jsonList.map((j) => Product.fromJson(j)).toList();
  }
Future<List<Category>> getCategorys() async{
  final url =Uri.parse('$_baseUrl/products/categories');
  final response = await http.get(url);
  
   if (response.statusCode != 200) {
      throw Exception('Error procesando categorias ${response.statusCode}');
    }
    final List<dynamic> jsonList = jsonDecode(response.body);
    
    return jsonList.map((j)=>Category.fromJson(j)).toList();

}

 Future<Product> getProductById(int id) async{
  final url= Uri.parse('$_baseUrl/products/$id');
  final response = await http.get(url);

  if(response.statusCode !=200){
    throw Exception('Error Consultando producto $id');
  }
  Map<String, dynamic> jsonProduct = jsonDecode(response.body);
  return  Product.fromJson(jsonProduct);
   

 }
  Future<List<Product>> getProductByCategory(String slug) async {
    final url = Uri.parse('$_baseUrl/products/category/$slug');
    final response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception('Error Procesando por categorias ${response.statusCode}');
    }

    final Map<String, dynamic> data = jsonDecode(response.body);
    final List<dynamic> jsonList = data['products'];

    return jsonList.map((j) => Product.fromJson(j)).toList();
  }



}
