import 'package:aquafin_frontend/models/users_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController{
  var user = Rx<UsersModel?>(null);

  var isEditing = false.obs;

  final Dio dio = Dio();

   @override
  void onInit() {
    super.onInit();
    loadUserData();
  }

  Future<void> loadUserData() async {
    try {
      final response = await dio.get(
        "https://37b35100-6d2e-447e-ab8b-968e070baf2c.mock.pstmn.io/profile", // replace with your API
      );

      if (response.statusCode == 200) {
        user.value = UsersModel.fromJson(response.data);
      }
    } catch (e) {
      // no print
    }
  }

  void toggleEditing() {
    isEditing.value = !isEditing.value;
  }

  void disableEditing() {
    isEditing.value = false;
  }
}

