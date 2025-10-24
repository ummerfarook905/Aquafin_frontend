import 'package:aquafin_frontend/models/order_model.dart';
import 'package:get/get.dart';

class OrderController extends GetxController{
  var orders = <OrderModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchOrders();
  }

  void fetchOrders() {
    var fetchedOrders = [
      OrderModel(
        id: "ORD001",
        date: "2025-10-15",
        total: 899.0,
        status: "Delivered",
        items: ["TripleBetta", "Fish Tank"],
      ),
      OrderModel(
        id: "ORD002",
        date: "2025-09-30",
        total: 499.0,
        status: "Cancelled",
        items: ["Taiyo Pluss"],
      ),
      OrderModel(
        id: "ORD003",
        date: "2025-09-10",
        total: 1299.0,
        status: "Delivered",
        items: ["Rid All 3 in 1", "Red Betta"],
      ),
    ];

    orders.assignAll(fetchedOrders);
  }
}