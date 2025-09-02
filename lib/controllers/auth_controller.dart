import 'package:aquafin_frontend/models/user_model.dart';

class AuthController {
  bool login(UserModel user) {
    if(user.username == "farook" && user.password == "1234"){
      return true;
    }
    return false;
  }
}