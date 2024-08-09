import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learning_getcli/app/modules/products/views/product_item_view.dart';
import 'package:learning_getcli/app/routes/app_pages.dart';

import '../controllers/products_controller.dart';

class ProductsView extends GetView<ProductsController> {
  const ProductsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: const Text(
          'ProductsView',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: const SizedBox(),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.allProducts.length,
          itemBuilder: (context, index) =>
              ProductItem(controller.allProducts[index]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow[900],
        onPressed: () => Get.toNamed(Routes.ADD_PRODUCT),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
