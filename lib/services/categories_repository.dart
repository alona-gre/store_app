import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:store_app/models/category.dart';
import 'package:store_app/services/api_service.dart';

class CategoriesRepository {
  Future<List<Category>> getCategories() async {
    final categories = await APIService.getAllCategories();
    return categories;
  }
}

final categoriesRepositoryProvider = Provider<CategoriesRepository>((ref) {
  return CategoriesRepository();
});

final getCategoriesProvider = FutureProvider<List<Category>>((ref) {
  return ref.read(categoriesRepositoryProvider).getCategories();
});
