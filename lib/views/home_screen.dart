import 'package:aquafin_frontend/controllers/home_controller.dart';
import 'package:aquafin_frontend/views/contact_screen.dart';
import 'package:aquafin_frontend/views/fish_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final HomeController controller = Get.put(HomeController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Home",
        style: TextStyle(
          color: Colors.white
        ),),
        ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Farook"), 
              accountEmail: Text("Farook@gmail.com")),
            
            // Account button
            TextButton(
              onPressed: () {
              },
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Account",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),

            // Orders button
            TextButton(
              onPressed: () {
              },
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Your Orders",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),

             // Cart button
            TextButton(
              onPressed: () {
              },
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Cart",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),

             // About Us button
            TextButton(
              onPressed: () {
              },
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "About Us",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),

             // Contact Us button
            TextButton(
              onPressed: () {
                Get.off(ContactScreen());
              },
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Contact Us",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),

             // Logout button
            TextButton(
              onPressed: () {
              },
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Logout",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: (){
                    Get.off(() => FishScreen());
                  }, 
                  child: const Text(
                    "fish",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                    )
                  ),
                TextButton(
                  onPressed: (){
                    
                  }, 
                  child: const Text("food",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                  )
                  )
              ],
            )
          ],
        ),
    ),

    //floating cart icon
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.black,
      onPressed: (){},
      child: IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart, color: Colors.white, size: 50),
      ),
      ),
    );
  }
}