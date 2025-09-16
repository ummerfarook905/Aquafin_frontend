import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget{

  final String title;

  const CommonAppbar({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(
        onPressed: () =>Get.back(), 
        icon: const Icon(Icons.arrow_back, color: Colors.white)
        ),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);

}