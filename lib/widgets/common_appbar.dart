import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget{

  final String title;

  const CommonAppbar({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () => Get.back(), 
        icon: const Icon(Icons.arrow_back, color: Colors.black)
        ),
        title: Text(
          title,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);

}