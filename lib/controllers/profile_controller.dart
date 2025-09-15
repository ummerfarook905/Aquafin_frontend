import 'package:aquafin_frontend/models/users_model.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController{
  var user = Rx<UsersModel?>(null);

  Future<void> fetchUserProfile() async {
    await Future.delayed(const Duration(seconds: 2)); // fake API delay

    user.value = UsersModel(
      name: "Fahad",
      mobile: "9447824514",
      email: "fahad12@gmail.com",
      dob: "08/04/1995",
    );

    @override
  void onInit() {
    super.onInit();
    fetchUserProfile();
  }
 }
}