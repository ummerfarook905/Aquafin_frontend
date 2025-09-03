import 'package:aquafin_frontend/models/fish_model.dart';
import 'package:get/get.dart';

class FishController extends GetxController{

  var fish = <FishModel>[].obs;
   @override
  void onInit() {
    super.onInit();
    fetchCategories();
  }

  void fetchCategories() {
    fish.value= [
      FishModel(name: "Guppys", image: "assets/guppys.png"),
      FishModel(name: "Fighter", image: "assets/fighter.png"),
      FishModel(name: "Monster", image: "assets/monster.png"),
      FishModel(name: "Gold fish", image: "assets/goldfish.png"),
      FishModel(name: "Koi fish", image: "assets/koi.png"),
      FishModel(name: "Cultivated", image: "assets/cultivated.png"),
    ];
  }
}