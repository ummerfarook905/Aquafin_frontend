
import 'package:aquafin_frontend/widgets/gradient.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Example Image
          Expanded(
            flex: 5,
            child: Center(
              child: Image.asset(
                "assets/360_F_714796903_IN2WlLEghO5wVtMnyoDysOCN2ttqFOJi.png",
                width: 250,
                fit: BoxFit.contain,
              ),
            ),
          ),

          // Register Button
          Expanded(
            flex: 3,
            child: Column(
              children: [
                SizedBox(
                  width: 220,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Get.toNamed('/signup');
                    },
                    child: const Text(
                      "REGISTER",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                TextButton(
                  onPressed: (){
                    Get.toNamed('/login');
                  }, 
                  child: Text("Already have a account login")),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
      
    );

  }
}