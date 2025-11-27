import 'package:aquafin_frontend/controllers/profile_controller.dart';
import 'package:aquafin_frontend/widgets/common_appbar.dart';
import 'package:aquafin_frontend/widgets/gradient.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileController controller = Get.put(ProfileController());
    return GradientScaffold(
      appBar: const CommonAppbar(title: "Profile"),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.account_circle, size: 100, color: Colors.white),
                  const SizedBox(width: 20),
                  IconButton(
                    icon:
                        const Icon(Icons.edit, size: 30, color: Colors.white),
                    onPressed: controller.toggleEditing,
                  ),
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
                  buildProfileDetail("Name", user.name, controller.isEditing.value),
                  buildProfileDetail("Mobile no", user.mobile, controller.isEditing.value),
                  buildProfileDetail("Email id", user.email, controller.isEditing.value),
                  buildProfileDetail("DOB", user.dob, controller.isEditing.value),

                  const SizedBox(height: 20),

                  controller.isEditing.value
                  ? ElevatedButton(
                    onPressed: controller.disableEditing,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ), 
                    child: const Text("Update"))
                    :const SizedBox(),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }

  /// ✅ helper function moved outside build()
  Widget buildProfileDetail(String title, String value, bool isEditing) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              color: Colors.black,
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
