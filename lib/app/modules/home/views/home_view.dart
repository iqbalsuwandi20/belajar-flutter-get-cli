import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/models/user_model.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: const Text(
          'Generate Model & Provider Get Connect',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: controller.getAllUsers(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.red[900],
                ),
              );
            }
            if (snapshot.data?.length == 0) {
              return const Center(
                child: Text("Tidak ada data user"),
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  User user = snapshot.data![index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(user.avatar!),
                    ),
                    title: Text("${user.firstName} ${user.lastName}"),
                    subtitle: Text("${user.email}"),
                  );
                },
              );
            }
          }),
    );
  }
}
