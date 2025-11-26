import 'package:aquafin_frontend/models/users_model.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController{
  var user = Rx<UsersModel?>(null);

  var isEditing = false.obs;

  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();
  final dobController = TextEditingController();


   @override
  void onInit() {
    super.onInit();

    user.value = UsersModel(
      name: "John Doe",
      mobile: "9876543210",
      email: "john@gmail.com",
      dob: "01-01-2000",
    );

    loadUserIntoControllers();
  }

  void loadUserIntoControllers() {
    final u = user.value!;
    nameController.text = u.name;
    mobileController.text = u.mobile;
    emailController.text = u.email;
    dobController.text = u.dob;
  }

  void toggleEditing() {
    isEditing.value = !isEditing.value;
  }

  void updateProfile() {
    user.value = UsersModel(
      name: nameController.text,
      mobile: mobileController.text,
      email: emailController.text,
      dob: dobController.text,
    );

    isEditing.value = false;

    Get.snackbar("Success", "Profile Updated!",
        snackPosition: SnackPosition.BOTTOM);
  }

  
}