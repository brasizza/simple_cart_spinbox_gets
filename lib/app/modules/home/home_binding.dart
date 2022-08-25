import 'package:dynamic_products/app/data/repositories/products/i_products_repository.dart';
import 'package:dynamic_products/app/data/repositories/products/products_repository.dart';
import 'package:dynamic_products/app/data/services/products/i_products_service.dart';
import 'package:dynamic_products/app/data/services/products/products_service.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<IProductsRepository>(ProductsRepository());
    Get.put<IProductsService>(ProductsService(repository: Get.find()));
    Get.put<HomeController>(HomeController(service: Get.find()));
  }
}
