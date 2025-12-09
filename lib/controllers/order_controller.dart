import 'package:aquafin_frontend/models/order_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class OrderController extends GetxController{
  var orders = <OrderModel>[].obs;
  final dio = Dio();

  @override
  void onInit() {
    super.onInit();
    fetchOrders();
  }

  Future<void> fetchOrders() async {
    try {
      final response = await dio.get("https://37b35100-6d2e-447e-ab8b-968e070baf2c.mock.pstmn.io/orders"); 

      if (response.statusCode == 200) {
        List<dynamic> data = response.data;

        orders.value = data
            .map((json) => OrderModel.fromJson(json))
            .toList();
      }
    } catch (e) {
      // no print
    }
  }
}