import 'package:aquafin_frontend/controllers/contact_controller.dart';
import 'package:aquafin_frontend/widgets/common_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactScreen extends StatelessWidget {
  final ContactController controller = Get.put(ContactController());

  ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const CommonAppbar(title: "Contact Us"),
      body: Obx(() {
        final contact = controller.contact.value;

        return Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(height: 40),
                
                const Text(
                  "Contact us",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto"
                  ),
                ),
          
                const SizedBox(height: 40),
          
                const Text(
                  "Phone number",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(height: 8),
                Text(
                  contact.phone,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
          
                const Text(
                  "Email",
                  style: TextStyle(color: Colors.white,fontSize: 16),
                ),
                const SizedBox(height: 8),
                Text(
                  contact.email,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                ),
              ],
            ),
            ),
        );
      }),
    );
  }
}