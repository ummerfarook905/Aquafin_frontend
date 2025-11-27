import 'package:aquafin_frontend/models/users_model.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController{
  var user = Rx<UsersModel?>(null);

  var isEditing = false.obs;

   @override
  void onInit() {
    super.onInit();
    loadUserData();
  }

  void loadUserData(){
    user.value = UsersModel(
      name: "John Doe",
      mobile: "9876543210",
      email: "john@gmail.com",
      dob: "01-01-2000",
    );
  }

  void toggleEditing() {
    isEditing.value = !isEditing.value;
  }

  void disableEditing() {
    isEditing.value = false;
  }
}

