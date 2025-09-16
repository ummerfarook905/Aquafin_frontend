import 'package:aquafin_frontend/views/account_screen.dart';
import 'package:aquafin_frontend/views/address_screen.dart';
import 'package:aquafin_frontend/views/contact_screen.dart';
import 'package:aquafin_frontend/views/fish_screen.dart';
import 'package:aquafin_frontend/views/home_screen.dart';
import 'package:aquafin_frontend/views/login_screen.dart';
import 'package:aquafin_frontend/views/profile_screen.dart';
import 'package:aquafin_frontend/views/signup_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {
  static const String initial = '/login';

  static final List<GetPage> routes = [
    GetPage(name: '/login', page: () => LoginScreen()),
    GetPage(name: '/home', page: () => HomeScreen()),
    GetPage(name: '/signup', page: () => SignupScreen()),
    GetPage(name: '/fish', page: () => FishScreen()),
    GetPage(name: '/contact', page: () => ContactScreen()),
    GetPage(name: '/account', page: () => AccountScreen()),
    GetPage(name: '/profile', page: () => ProfileScreen()),
    GetPage(name: '/address', page: () => AddressScreen()),
  ];
}