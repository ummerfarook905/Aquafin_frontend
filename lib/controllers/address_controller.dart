import 'package:aquafin_frontend/models/address_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AddressController extends GetxController{
  var address = Rx<AddressModel?>(null);
  Dio dio = Dio();

  @override
  void onInit() {
    super.onInit();
    fetchAddress();
  }

  void fetchAddress() async {
      try {
        var response = await dio.get("https://37b35100-6d2e-447e-ab8b-968e070baf2c.mock.pstmn.io/address");

        if (response.statusCode == 200) {
          address.value = AddressModel.fromJson(response.data);
        }
      } catch (e) {
        print("Error: $e");
      }
    }
}