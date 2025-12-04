import 'package:aquafin_frontend/models/product_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  var products = <Product>[].obs;
  final Dio dio = Dio();

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    try {
      final response = await dio.get(
        "https://37b35100-6d2e-447e-ab8b-968e070baf2c.mock.pstmn.io/products"
      );

      if (response.statusCode == 200) {
        List data = response.data;
        products.value = data.map((e) => Product.fromJson(e)).toList();
      }
    } catch (e) {
      print("Error fetching products: $e");
    }
  }
}