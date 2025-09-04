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
      FishModel(name: "Guppys", image: "https://imgs.search.brave.com/oVQMcwjdpAXu8p8iEwIjhIlNokE_Lt1oVwmHU0CFN04/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93d3cu/c2h1dHRlcnN0b2Nr/LmNvbS9pbWFnZS1w/aG90by9hbGJpbm8t/bGF6dXJpLWJsdWUt/dGFpbC1ndXBweS0y/NjBudy0yNDMxNDU2/MjU5LmpwZw"),
      FishModel(name: "Fighter", image: "https://imgs.search.brave.com/CXvKtdUjVYBGHg0O8VdC8G_sgG4VZCHtUisNI_38NG0/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly81Lmlt/aW1nLmNvbS9kYXRh/NS9TRUxMRVIvRGVm/YXVsdC8yMDI1Lzcv/NTMxMzAwNTIxL1lB/L0JML01RLzE4Njgw/NzQ1OS9maWdoZXIt/MS01MDB4NTAwLmpw/Zw"),
      FishModel(name: "Monster", image: "https://imgs.search.brave.com/a6_p8cdPfG3AkIenL0JkE80AcbPeeiegCTxbrM_csg0/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9jbG9z/ZS11cC1naWFudC1h/cmFwYWltYS1maXNo/LWJsYWNrLWJhY2tn/cm91bmQtZWR1Y2F0/aW9uYWwtem9vbG9n/aWNhbC1kb2N1bWVu/dGFyeS1uYXR1cmUt/dGhlbWVkLWNvbnRl/bnQtaGlnaC0zODg5/ODkwMTIuanBn"),
      FishModel(name: "Gold fish", image: "https://imgs.search.brave.com/azMFng2iCwDDudyQMMU097AGoiaIo3QQHgKTYo-8Uek/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93d3cu/c2h1dHRlcnN0b2Nr/LmNvbS9pbWFnZS1w/aG90by9nb2xkLWZp/c2gtaXNvbGF0ZWQt/b24td2hpdGUtMjYw/bnctNTgwMzA2NDY1/LmpwZw"),
      FishModel(name: "Koi fish", image: "https://imgs.search.brave.com/mzOVOGy7PoksZgz34tAcjUHCd1nPaXpiygR5RMqTFPc/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9uaW5l/LWJlc3Qta29pLWZp/c2gtYmxhY2stYmFj/a2dyb3VuZC1rb2kt/ZmlzaC1qYXBhbi1u/aW5lLWJlc3Qta29p/LWZpc2gtYmxhY2st/YmFja2dyb3VuZC0x/NTcyNTIxOTcuanBn"),
      FishModel(name: "Cultivated", image: "https://imgs.search.brave.com/NkoWv2LDRKaDr45SQIE0fJyo87wgF02_Ob6k35po4gk/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly80Lmlt/aW1nLmNvbS9kYXRh/NC9QSi9QRC9NWS0x/MTc2MzUzMS92YXJh/bC1maXNoLTEwMDB4/MTAwMC5qcGc"),
    ];
  }
}