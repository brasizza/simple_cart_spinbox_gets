import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'component/tile_component.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'HomePage is working',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
              child: Obx(() => ListView.builder(
                    itemCount: controller.listProducts.length,
                    itemBuilder: ((context, index) {
                      return TileComponent(
                        controller: controller,
                        index: index,
                      );
                    }),
                  ))),
          ElevatedButton(
              onPressed: () async {
                await controller.finalizarVenda();
              },
              child: Text("ENVIAR PARA VENDA!"))
        ],
      ),
    );
  }
}
