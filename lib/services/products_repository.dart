import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/services/api_service.dart';

class ProductsRepository {
  Future<List<Product>> getProducts(int limit) async {
    final productList = await APIService.getAllProducts(limit);
    return productList;
  }
}

final productsRepositoryProvider = Provider<ProductsRepository>((ref) {
  return ProductsRepository();
});

final getProductsProvider =
    FutureProvider.family<List<Product>, int>((ref, limit) {
  return ref.read(productsRepositoryProvider).getProducts(limit);
});
