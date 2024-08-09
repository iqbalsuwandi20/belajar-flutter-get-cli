import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learning_getcli/app/modules/products/controllers/products_controller.dart';

import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  AddProductView({super.key});

  final productC = Get.find<ProductsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: const Text(
          'AddProductView',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: const SizedBox(),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            controller: controller.nameC,
            decoration: const InputDecoration(
                icon: Icon(Icons.production_quantity_limits_outlined),
                labelText: "Product Name",
                border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: controller.priceC,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                icon: Icon(Icons.price_change_outlined),
                labelText: "Product Price",
                border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.yellow[900]),
            onPressed: () => productC.addProduct(
                controller.nameC.text, controller.priceC.text),
            child: const Text(
              "Add Product",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
