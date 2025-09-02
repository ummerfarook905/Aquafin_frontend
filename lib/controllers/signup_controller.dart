import 'package:aquafin_frontend/models/signup_model.dart';
import 'package:get/get.dart';

class SignupController extends GetxController{
  var isLoading = false.obs;

  bool signup(SignupModel sign){
    if (sign.name.isEmpty ||
        sign.username.isEmpty ||
        sign.email.isEmpty ||
        sign.password.isEmpty) {
          return false;
        }
        return true;
  }
}