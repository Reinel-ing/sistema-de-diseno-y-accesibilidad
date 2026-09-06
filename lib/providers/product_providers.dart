import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:servicios_modelos_app/models/Category.dart';
import 'package:servicios_modelos_app/models/product.dart';
import 'package:servicios_modelos_app/services/product_service.dart';

final productServiceProvider = Provider<ProductService>((ref){
  return ProductService();
}); 

final categoriesProvider = FutureProvider<List<Category>>((ref){
  final service = ref.watch(productServiceProvider);
  return service.getCategorys();
});

class CategoriaSeleccionada extends Notifier<String?>{
  @override
  String? build() => null;

  void seleccionar(String? slug){
    state = (state==slug) ?null:slug;

  }
}

final categoriaSeleccionadaProvider = NotifierProvider<CategoriaSeleccionada, String?>(CategoriaSeleccionada.new);

final productsProvider = FutureProvider<List<Product>>((ref){
  final sevice = ref.watch(productServiceProvider);
  final slug = ref.watch(categoriaSeleccionadaProvider);
  
  return slug == null ? sevice.getProduct() : sevice.getProductByCategory(slug);
});

final productByIdProvider= FutureProvider.family<Product, int>((ref, id){
  final service = ref.watch(productServiceProvider);
  return service.getProductById(id);
});