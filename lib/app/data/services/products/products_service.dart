// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dynamic_products/app/data/models/product_model.dart';
import 'package:dynamic_products/app/data/repositories/products/i_products_repository.dart';

import 'i_products_service.dart';

class ProductsService implements IProductsService {
  final IProductsRepository _repository;
  ProductsService({
    required IProductsRepository repository,
  }) : _repository = repository;

  @override
  Future<List<ProductModel>?> getProducts() async {
    return await _repository.getProducts();
  }
}
