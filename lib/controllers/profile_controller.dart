import 'package:aquafin_frontend/models/users_model.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController{
  var user = Rx<UsersModel?>(null);

   @override
  void onInit() {
    super.onInit();
    fetchUserProfile();
  }

  Future<void> fetchUserProfile() async {

    user.value = UsersModel(
      name: "Fahad",
      mobile: "9447824514",
      email: "fahad12@gmail.com",
      dob: "08/04/1995",
    );
 }
}