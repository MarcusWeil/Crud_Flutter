import 'dart:convert';
import 'package:crud_and_dialoguebox/models/product.dart';
import 'package:http/http.dart';
import 'package:crud_and_dialoguebox/constants/constants.dart';

class HttpService {
  final dynamic productsURL = Uri.parse(URL_BASE);

  Future<List<Product>> getProducts() async {
    Response res = await get(productsURL);

    //HTTP statusCode 200 representa uma requisição http bem sucedida, conforme consta na lista em https://en.wikipedia.org/wiki/List_of_HTTP_status_codes.
    if (res.statusCode == 200) {
      List<dynamic> product = jsonDecode(res.body);

      List<Product> products = product
          .map(
            (dynamic item) => Product.fromJson(item),
          )
          .toList();

      return products;
    } else {
      throw "Unable to retrieve products.";
    }
  }
}
