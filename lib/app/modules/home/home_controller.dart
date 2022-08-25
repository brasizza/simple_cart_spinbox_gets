// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dynamic_products/app/data/models/product_model.dart';
import 'package:dynamic_products/app/data/services/products/i_products_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final listProducts = <ProductModel>[].obs;

  final IProductsService _service;
  HomeController({
    required IProductsService service,
  }) : _service = service;

  @override
  void onInit() async {
    final products = await _service.getProducts();
    if (products != null) {
      listProducts.addAll(products.toList());
    }
    super.onInit();
  }

  Future<void> finalizarVenda() async {
    print(listProducts.toJson());
  }
}
