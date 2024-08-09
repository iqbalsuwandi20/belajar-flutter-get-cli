import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learning_getcli/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: const Text(
          'HomeView',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.yellow[900]),
            onPressed: () {
              Get.toNamed(Routes.PRODUCTS);
            },
            child: const Text(
              "Go to product page",
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
