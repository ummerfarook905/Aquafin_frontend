import 'package:aquafin_frontend/controllers/profile_controller.dart';
import 'package:aquafin_frontend/widgets/common_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileController controller = Get.put(ProfileController());
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const CommonAppbar(title: "Profile"),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Center(
              child: Column(
                children: const [
                  Icon(Icons.account_circle, size: 100, color: Colors.white),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // ✅ Obx listens to controller.user
            Obx(() {
              if (controller.user.value == null) {
                return const Center(
                  child: CircularProgressIndicator(color: Colors.white),
                );
              }
              final user = controller.user.value!;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildProfileDetail("Name", user.name),
                  buildProfileDetail("Mobile no", user.mobile),
                  buildProfileDetail("Email id", user.email),
                  buildProfileDetail("DOB", user.dob),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }

  /// ✅ helper function moved outside build()
  Widget buildProfileDetail(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
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
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(color: Colors.white24, thickness: 1),
        ],
      ),
    );
  }
}
