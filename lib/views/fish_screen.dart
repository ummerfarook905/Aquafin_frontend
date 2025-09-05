import 'package:aquafin_frontend/controllers/fish_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FishScreen extends StatelessWidget {

  final FishController controller = Get.put(FishController());

   FishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Column(
        children: [
          const Text(
            "CAtegory",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),
            ),
            const SizedBox(height: 20),

            Expanded(
              child: Obx(() => GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1,
                   ),
                   itemCount: controller.categories.length, 
                itemBuilder: (context, index) {
                  final category = controller.categories[index];
                  return Column(
                    children: [
                      Expanded(
                        child: Image.network(
                          category.image,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(Icons.broken_image, color: Colors.white, size: 50);
                          },
                        )
                        ),
                        const SizedBox(height: 6),
                        Text(
                          category.name,
                          style: const TextStyle(color: Colors.white, fontSize: 14),
                        )
                    ],
                  );
                }
                )
                )
                )
        ],
      ),
    );
  }
}