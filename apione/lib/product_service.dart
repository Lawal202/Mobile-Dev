import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:assignment/Product_model.dart';

class ProductService{

  final String apiUrl;

  ProductService(this.apiUrl);

  Future<List<Product>> getProducts() async{
    final response = await http.get(Uri.parse(apiUrl));

    if(response.statusCode == 200){
      Iterable<dynamic> data = json.decode(response.body);

      return List<Product>.from(data.map((ProductJson) => Product.fromJson(ProductJson)));
    }else{
      throw Exception('Failed to get products');
    }
  }
}