import 'package:aquafin_frontend/models/product_model.dart';

class HomeController {
  List<Product> getFeaturedProducts() {
    return [
      Product(name: "TripleBetta", image: "assets/downloads.png", price: 299.0),
      Product(name: "Taiyo Pluss", image: "assets/fishfood.png", price: 140.0),
      Product(name: "Rid All 3 in 1", image: "assets/medicine.png", price: 599.0),
      Product(name: "Fish Tank", image: "assets/tank.png", price: 1999.0),
      Product(name: "Red Betta", image: "assets/downloads1.png", price: 499.0),
    ];
  }
}