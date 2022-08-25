import 'package:dynamic_products/app/data/models/product_model.dart';

abstract class IProductsService {
  Future<List<ProductModel>?> getProducts();
}
