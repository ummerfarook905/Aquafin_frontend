
import 'package:aquafin_frontend/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){}, 
              child: const Text("Profile",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
              ),
              ),
            TextButton(
              onPressed: (){}, 
              child: Text(
                "Address",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
              )
              ),
            TextButton(
              onPressed: (){}, 
              child: Text(
                "Logout",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
              )
              ),

          
                Align(
                  alignment: Alignment.centerLeft, // ⬅ moves to left
                  child: TextButton(
                    onPressed: () {
                      Get.offAll(() => HomeScreen());
                    },
                    child: const Text(
                      "Back",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
          ],
        ),
      ),

    );
  }
}