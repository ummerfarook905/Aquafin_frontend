import 'package:aquafin_frontend/models/address_model.dart';
import 'package:get/get.dart';

class AddressController extends GetxController{
  var address = Rx<AddressModel?>(null);

  @override
  void onInit() {
    super.onInit();
    fetchAddress();
  }

  void fetchAddress() {
    address.value = AddressModel(
      addressLine: "Ottapalam", 
      landmark: "ALP school", 
      pinCode: "679514"
      );
  }
}