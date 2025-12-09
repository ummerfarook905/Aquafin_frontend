import 'package:aquafin_frontend/controllers/address_controller.dart';
import 'package:aquafin_frontend/controllers/cart_controller.dart';
import 'package:aquafin_frontend/widgets/add_address_form.dart';
import 'package:aquafin_frontend/widgets/cart_card.dart';
import 'package:aquafin_frontend/widgets/common_appbar.dart';
import 'package:aquafin_frontend/widgets/gradient.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {

  final CartController controller = Get.put(CartController());
  final AddressController addressController = Get.put(AddressController());
   CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      appBar: const CommonAppbar(title: "Cart"),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.blue[100],
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                const Icon(Icons.location_on, color: Colors.blue),
                const SizedBox(width: 8),
                 Expanded(
                  child: Obx(() {
                    final addr = addressController.address.value;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Delivery Address",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      SizedBox(height: 4),
                      Text("${addr?.name ?? 'No Name'}\n${addr?.addressLine ?? ''}"),
                    ],
                  );
                  }
                  )
                  ),
                  IconButton(
                  icon: const Icon(Icons.add_circle_outline, color: Colors.blue),
                  onPressed: () {
                    Get.dialog(AddAddressForm());
                  },
                )
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text("Shopping List",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            ),
          
          Expanded(
            child: Obx(() {
              return ListView.builder(
                itemCount: controller.items.length,
                itemBuilder: (context, index) {
                  return CartCard(item: controller.items[index]);
                },
              );
            }),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16),
            child: Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Total:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text("${controller.totalPrice}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18
                ),)
              ],
            )
              
            ),
          ),
          SizedBox(height: 10),

          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: (){
                Get.toNamed('/checkout');
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
              child: const Text(
                "Proceeded to payment",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                )),
          ),

          SizedBox(height: 10)
        ],
      ),
      );
  }
}