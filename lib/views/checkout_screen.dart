import 'package:aquafin_frontend/controllers/payment_controller.dart';
import 'package:aquafin_frontend/views/payment_done_screen.dart';
import 'package:aquafin_frontend/widgets/common_appbar.dart';
import 'package:aquafin_frontend/widgets/gradient.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  final PaymentController paymentController = Get.put(PaymentController());

  CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      appBar: const CommonAppbar(title: "Checkout"),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Order", style: TextStyle(fontSize: 16)),
                Text("₹ 899", style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 8),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Shipping", style: TextStyle(fontSize: 16)),
                Text("₹ 50", style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 8),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Total", style: TextStyle(fontSize: 16)),
                Text("₹ 949", style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 20),

            const Divider(
              thickness: 1,
              color: Colors.black,
            ),

            const Text(
              "Payment",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            GestureDetector(
              onTap: () {
                paymentController.selectMethod("card");
              },
              child: Obx(() {
                return Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        // Payment Icon
                        Icon(Icons.payment, size: 30, color: Colors.blue),

                        const SizedBox(width: 10),

                        // Text
                        const Text(
                          "Card Payment",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),

                        Spacer(),

                        // ✅ Check Button (Radio-style)
                        Icon(
                          paymentController.selectedMethod.value == "card"
                              ? Icons.radio_button_checked
                              : Icons.radio_button_unchecked,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),


            const SizedBox(height: 20),

            GestureDetector(
              onTap: () {
                paymentController.selectMethod("cash");
              },
              child: Obx(() {
                return Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        // Payment Icon
                        Icon(Icons.currency_rupee, size: 30, color: Colors.blue),

                        const SizedBox(width: 10),

                        // Text
                        const Text(
                          "Cash On Delivery",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),

                        Spacer(),

                        // ✅ Check Button (Radio-style)
                        Icon(
                          paymentController.selectedMethod.value == "cash"
                              ? Icons.radio_button_checked
                              : Icons.radio_button_unchecked,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: (){
                  Get.dialog(
                    const PaymentDoneScreen()
                  );
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text("Continue"),
              ),
            )
          ],
        ),
        ),

    );
  }
}