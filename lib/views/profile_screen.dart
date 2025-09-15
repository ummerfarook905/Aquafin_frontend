import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: const 
          [
            Icon(Icons.account_circle, size: 100, color: Colors.white),
            SizedBox(height: 10),
            Text("Profile",
              style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold)
              ),
          ],
        ),
      ),
      
    );
  }
}