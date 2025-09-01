import 'package:aquafin_frontend/views/home_screen.dart';
import 'package:aquafin_frontend/views/login_screen.dart';
import 'package:aquafin_frontend/views/signup_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String initial = '/login';

  static final Map<String, WidgetBuilder> routes = {
    '/login': (context) => LoginScreen(),
    '/home': (context) => HomeScreen(),
    '/signup': (context) => SignupScreen(),
  };
}