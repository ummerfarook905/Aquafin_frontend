import 'package:aquafin_frontend/controllers/home_controller.dart';
import 'package:aquafin_frontend/widgets/gradient.dart';
import 'package:aquafin_frontend/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  final HomeController controller = HomeController();
   ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = controller.getFeaturedProducts();
    return GradientScaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue[800],
      //   title: const Text("Aquafin Store"),
      //   actions: [
      //     IconButton(icon: const Icon(Icons.search), onPressed: () {}),
      //     IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
      //   ],
      // ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search any product..",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("All Featured", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Icon(Icons.sort),
              ],
            ),
          ),

          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // two columns
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.75,
              ), 
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCard(product: products[index]);
              },
              )
          ),

          BottomNavigationBar(
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Wishlist"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
        )
        ],
      ),
    );
  }
}