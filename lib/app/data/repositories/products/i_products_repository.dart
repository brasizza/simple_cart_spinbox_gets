import 'package:dynamic_products/app/data/models/product_model.dart';

abstract class IProductsRepository {
  Future<List<ProductModel>?> getProducts();
}
