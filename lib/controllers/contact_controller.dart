import 'package:aquafin_frontend/models/contact_model.dart';
import 'package:get/get.dart';

class ContactController extends GetxController{
  var contact = ContactModel(
    phone: "7558912508", 
    email: "aquafin905@gmail.com",
    ).obs;
}