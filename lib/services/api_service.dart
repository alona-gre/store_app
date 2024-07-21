import 'package:http/http.dart' as http;
import 'package:store_app/models/category.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/models/user.dart';
import 'package:store_app/services/api_const.dart';

class APIService {
  static Future<List<Product>> getAllProducts(int limit) async {
    try {
      final uri = Uri.https(
        BASE_URL,
        'api/v1/products',
        {'offset': '0', 'limit': '$limit'},
      );

      final response = await http.get(uri);
      return productsFromJson(response.body);
    } catch (error) {
      throw ('Error occurred when catching products: $error');
    }
  }

  static Future<List<Category>> getAllCategories() async {
    try {
      final uri = Uri.https(BASE_URL, 'api/v1/categories');

      final response = await http.get(uri);
      return categoriesFromJson(response.body);
    } catch (error) {
      throw ('Error occurred when fetching categories: $error');
    }
  }

  static Future<List<User>> getAllUsers() async {
    try {
      final uri = Uri.https(BASE_URL, 'api/v1/users');

      final response = await http.get(uri);
      return usersFromJson(response.body);
    } catch (error) {
      throw ('Error occurred when fetching users: $error');
    }
  }
}
