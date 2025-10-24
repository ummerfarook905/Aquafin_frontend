import 'package:aquafin_frontend/controllers/order_controller.dart';
import 'package:aquafin_frontend/widgets/common_appbar.dart';
import 'package:aquafin_frontend/widgets/gradient.dart';
import 'package:aquafin_frontend/widgets/order_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderScreen extends StatelessWidget {
  final OrderController controller = Get.put(OrderController());

  OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      appBar: CommonAppbar(title: "Orders"),
      body: Obx(() {
        return ListView.builder(
          padding: const EdgeInsets.only(bottom: 16),
          itemCount: controller.orders.length,
          itemBuilder: (context, index) {
            final order = controller.orders[index];
            return OrderCard(order: order);
          },
          );
      })
      );
  }
}