import 'package:aquafin_frontend/controllers/address_controller.dart';
import 'package:aquafin_frontend/widgets/common_appbar.dart';
import 'package:aquafin_frontend/widgets/gradient.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final AddressController controller = Get.put(AddressController());

    return GradientScaffold(
      appBar: const CommonAppbar(title: "Address"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() {
          if(controller.address.value == null){
            return const Center(
              child: CircularProgressIndicator(color: Colors.white,),
            );
          }

          final address = controller.address.value!;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildAddressDetail("Address line", address.addressLine),
              buildAddressDetail("Landmark", address.landmark),
              buildAddressDetail("Pin code", address.pinCode),
            ],
          );
          
        }),
        ),
    );
  }
  Widget buildAddressDetail (String title, String value){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 5,),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(color: Colors.white24,)
        ],
      ),
      );
  }
}