import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/services/api_service.dart';

class ProductsRepository {
  Future<List<Product>> getProducts() async {
    final productList = await APIService.getAllProducts();
    return productList;
  }
}

final productsRepositoryProvider = Provider<ProductsRepository>((ref) {
  return ProductsRepository();
});

final getProductsProvider = FutureProvider<List<Product>>((ref) {
  return ref.read(productsRepositoryProvider).getProducts();
});
