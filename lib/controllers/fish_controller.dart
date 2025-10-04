// import 'package:aquafin_frontend/models/product_model.dart';
// import 'package:dio/dio.dart';
// import 'package:get/get.dart';

// class FishController extends GetxController{

//   var categories = [].obs; // ✅ Reactive list
//   var isLoading = true.obs;
//    @override
//   void onInit() {
//     super.onInit();
//     fetchCategories();
//   }

//   void fetchCategories() async{
//     try{
//       isLoading.value = true;
//       var response = await Dio().get("https://7d6bb52b-a292-49da-b00c-86d9d9997a83.mock.pstmn.io");

//       var categoryList = (response.data as List)
//           .map((json) => FishModel.fromJson(json))
//           .toList();

//       categories.assignAll(categoryList);
//     }
//     catch (e) {
//       print("Error fetching categories: $e");
//     } finally {
//       isLoading(false);
//     }
//   }
// }