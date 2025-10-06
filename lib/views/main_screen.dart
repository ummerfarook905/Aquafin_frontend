import 'package:aquafin_frontend/controllers/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController navigationController = NavigationController();
    return Obx(() => Scaffold(
      body: navigationController.pages[navigationController.selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationController.selectedIndex.value,
            onTap: navigationController.changeTab,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
        items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Wishlist"),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
            ],),
    ));
  }
}