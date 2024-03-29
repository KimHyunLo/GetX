import 'package:getx_tutorial/product_module/models/product_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();

  static Future<List<ProductModel>?> fetchProducts() async {
    var res = await client.get(
      Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie'),
    );
    if (res.statusCode == 200) {
      var jsonString = res.body;
      return productFromJson(jsonString);
    } else {
      return null;
    }
  }
}
