import 'package:aquafin_frontend/controllers/signup_controller.dart';
import 'package:aquafin_frontend/models/signup_model.dart';
import 'package:aquafin_frontend/views/login_screen.dart';
import 'package:aquafin_frontend/widgets/gradient.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  final SignupController signupController = Get.put(SignupController());
  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Create an account",
                style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              // Name
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: TextField(
                  controller: nameController,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person, color: Colors.black),
                    hintText: "name",
                    hintStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),

              // Username
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: TextField(
                  controller: usernameController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person, color: Colors.black),
                    hintText: "username",
                    hintStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
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
                ),
              ),

              //email
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: TextField(
                  controller: emailController,
                  obscureText: true,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email, color: Colors.black),
                    hintText: "email",
                    hintStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                ),
                onPressed: () {
                  final user = SignupModel(
                    name: nameController.text,
                    username: usernameController.text,
                    email: emailController.text,
                    password: passwordController.text,
                  );

                  bool success = signupController.signup(user);

                  if (success) {
                    Get.snackbar("Success", "Account Created Successfully",
                        backgroundColor: Colors.green,
                        colorText: Colors.white);

                    // Navigate back to Login
                    Get.off(() => const LoginScreen());
                  } else {
                    Get.snackbar("Error", "Please fill all fields",
                        backgroundColor: Colors.red,
                        colorText: Colors.white);
                  }
                }, 
                child: const Text("Sign Up",style: TextStyle(color: Colors.white),),
                ),
                const SizedBox(height: 20),
              
              // Already have account? Login
              TextButton(onPressed: () {
                Get.off(() => const LoginScreen());
              }, 
              child: const Text(
                  "Already have an account? Login",
                  style: TextStyle(color: Colors.black),
                ),
                )
            ],
          ),
        ),
      ),
    );
  }
}