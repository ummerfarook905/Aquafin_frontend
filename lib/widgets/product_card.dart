import 'package:aquafin_frontend/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12)),
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.network(product.image),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              product.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Row(
              children: [
                Text(
                  "${product.price}",
                  style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                )
              ],
              ),
          )
        ],
      ),
    );
  }
}