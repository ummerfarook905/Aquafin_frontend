import 'package:aquafin_frontend/models/cart_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var items = <CartModel>[].obs;
   final Dio dio = Dio();

  @override
  void onInit() {
    super.onInit();
    fetchCartItems();
  }

  Future<void> fetchCartItems() async {
    try {
      final response = await dio.get(
        "https://37b35100-6d2e-447e-ab8b-968e070baf2c.mock.pstmn.io/cart"
      );

      if (response.statusCode == 200) {
        List data = response.data;
        items.value = data.map((e) => CartModel.fromJson(e)).toList();
      }
    } catch (e) {
      // no print
    }
  }

  double get totalPrice => items.fold(0, (sum, item) => sum + item.price);
}