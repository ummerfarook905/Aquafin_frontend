import 'package:aquafin_frontend/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: Colors.transparent),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initial,
      getPages: AppRoutes.routes,
    );
  }
}         