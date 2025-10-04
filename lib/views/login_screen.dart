import 'package:aquafin_frontend/controllers/auth_controller.dart';
import 'package:aquafin_frontend/models/user_model.dart';
import 'package:aquafin_frontend/views/product_screen.dart';
import 'package:aquafin_frontend/views/signup_screen.dart';
import 'package:aquafin_frontend/widgets/gradient.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthController authController = AuthController();

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CircleAvatar(
              //   radius: 50,
              //   backgroundImage: AssetImage(assetName),
              // )
              
               // Title
              const Text(
                "Sign-in",
                style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              //Username
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: TextField(
                  controller: usernameController,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person, color: Colors.black),
                    hintText: "username",
                    hintStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )
                  ),
                ),
              ),

              // Password
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock, color: Colors.black),
                    hintText: "password",
                    hintStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                )
              ),
              
              //Login Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding:
                   const EdgeInsets.symmetric(horizontal: 40,vertical: 12) 
                ),
                onPressed: () {
                  final user = UserModel(
                    username: usernameController.text, 
                    password: passwordController.text
                  );
                  bool success = authController.login(user);

                 if (success) {
                    Get.to(() =>  ProductScreen());// ✅ Navigate with GetX
                    Get.snackbar("Success", "Login Successful",
                        backgroundColor: Colors.green,
                        colorText: Colors.white);
                  } else {
                    Get.snackbar("Error", "Invalid credentials",
                        backgroundColor: Colors.red,
                        colorText: Colors.white);
                  }

                }, 
                child: const Text("Sign-in", style: TextStyle(color: Colors.white),),
                ),
                const SizedBox(height: 20),
              
              TextButton(
                onPressed: () {
                  Get.to(() => const SignupScreen());
                }, 
                child: const Text(
                  "Don't have an account? Sign Up",
                  style: TextStyle(color: Colors.black),
                ))
            ],
          ),
        ),
      ),
      
    );
  }
}