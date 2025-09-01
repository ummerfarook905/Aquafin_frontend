import 'package:aquafin_frontend/controllers/home_controller.dart';
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
      appBar: AppBar(title: const Text("Home")),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Farook"), 
              accountEmail: Text("Farook@gmail.com"))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.blue,
          ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.blue,
          ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.blue,
          ),
      ],
      currentIndex: 0,
      ),
      body: Center(
      //   child: ElevatedButton(onPressed: () {
      //       Navigator.pushReplacementNamed(context, '/login');
      //     }, child: const Text("Logout"),
      // ),
      child: Text(controller.data)
    )
    );
  }
}