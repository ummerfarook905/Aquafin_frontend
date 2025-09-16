
import 'package:aquafin_frontend/widgets/common_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const CommonAppbar(title: "Account"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){
                Get.toNamed('/profile');
              }, 
              child: const Text("Profile",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
              ),
              ),
            TextButton(
              onPressed: (){
                Get.toNamed('/address');
              }, 
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
          ],
        ),
      ),

    );
  }
}