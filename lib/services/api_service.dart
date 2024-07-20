import 'package:http/http.dart' as http;
import 'package:store_app/models/product.dart';
import 'package:store_app/services/api_const.dart';

class APIService {
  static Future<List<Product>> getAllProducts() async {
    final uri = Uri.https(BASE_URL, 'api/v1/products');

    final response = await http.get(uri);
    // var data = jsonDecode(response.body);

    return productsFromJson(response.body);

    // List tempList = [];

    // for (var d in data) {
    //   tempList.add(d);
    // }
    // return Product.productsFromJson(tempList);
  }
}
