import 'package:aquafin_frontend/models/cart_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var items = <CartModel>[].obs;

  @override
  void onInit() {
    super.onInit();

    items.value = [
      CartModel(
        name: "Fish Tank Mini Aquarium",
        imageUrl: "assets/downloads1.png",
        price: 7899,
      ),
      CartModel(
        name: "Betta Japan",
        imageUrl: "assets/downloads.png",
        price: 3299,
      ),
    ];
  }
  double get totalPrice => items.fold(0, (sum, item) => sum + item.price);
}