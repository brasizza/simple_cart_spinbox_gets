import 'dart:convert';

import 'package:dynamic_products/app/data/models/product_model.dart';

import 'i_products_repository.dart';

class ProductsRepository implements IProductsRepository {
  @override
  Future<List<ProductModel>?> getProducts() async {
    String data = '[{"nome":"Produto1","quantidade":0, "valor":20.00},{"nome":"Produto2","quantidade":0, "valor" : 22.80},{"nome":"Produto3","quantidade":0, "valor" : 31.45},{"nome":"Produto4","quantidade":0 , "valor" : 3.99},{"nome":"Produto5","quantidade":0, "valor": 0.99}]';
    final jsonData = json.decode(data);
    return (jsonData as List).map((e) => ProductModel.fromMap(e)).toList();
  }
}
