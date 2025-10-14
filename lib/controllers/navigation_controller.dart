import 'package:aquafin_frontend/views/cart_screen.dart';
import 'package:aquafin_frontend/views/product_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {

  var selectedIndex = 0.obs;
  
  final List<Widget> pages = [
    ProductScreen(),
    CartScreen(),
  ];

  final pageTitles = [
    "Home",
    "Cart",
    "Orders",
    "Profile",
    "Settings",
  ];

  void changeTab(int index) {
    selectedIndex.value = index;
  }

}