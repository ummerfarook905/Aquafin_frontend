

import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var data = "Loading";

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    try {
      var response = await Dio().get('https://jsonplaceholder.typicode.com/posts/1');
      data = response.data.toString();
    } catch (e) {
      data = "Error: $e";
    }
  }
}