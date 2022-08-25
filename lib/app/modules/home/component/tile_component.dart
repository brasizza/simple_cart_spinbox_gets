// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dynamic_products/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class TileComponent extends StatelessWidget {
  final HomeController controller;
  final int index;

  const TileComponent({Key? key, required this.controller, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 150,
                child: Obx(() => SpinBox(
                      value: controller.listProducts[index].quantidade.toDouble(),
                      readOnly: true,
                      onChanged: ((value) {
                        controller.listProducts[index].quantidade = value.toInt();
                        controller.listProducts.refresh();
                      }),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(controller.listProducts[index].nome),
              ),
            ],
          ),
          Obx(() => Text("Valor a pagar :" + (controller.listProducts[index].valor * controller.listProducts[index].quantidade).toString())),
        ],
      ),
    );
  }
}
