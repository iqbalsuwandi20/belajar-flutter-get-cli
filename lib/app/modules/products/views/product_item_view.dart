import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem(this.data, {super.key});

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(data["name"]),
      subtitle: Text("Rp.${data["price"]}"),
    );
  }
}
