import 'package:aquafin_frontend/views/product_screen.dart';
import 'package:aquafin_frontend/views/wishlist_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {

  var selectedIndex = 0.obs;
  
  final List<Widget> pages = [
    ProductScreen(),
    WishlistScreen(),
  ];

  void changeTab(int index) {
    selectedIndex.value = index;
  }

}