import 'package:get/get.dart';

class ProductsController extends GetxController {
  RxList<Map<String, dynamic>> allProducts = <Map<String, dynamic>>[
    {
      "id": DateTime.now().toIso8601String(),
      "name": "Sendal",
      "price": 15000,
    },
    {
      "id": DateTime.now().toIso8601String(),
      "name": "Sepatu",
      "price": 450000,
    },
    {
      "id": DateTime.now().toIso8601String(),
      "name": "Baju",
      "price": 175000,
    },
  ].obs;

  void addProduct(String name, String price) {
    if (name.isNotEmpty && price.isNotEmpty) {
      // eksekusi
      allProducts.add({
        "id": DateTime.now().toIso8601String(),
        "name": name,
        "price": int.parse(price),
      });
      Get.back();
    }
  }
}
