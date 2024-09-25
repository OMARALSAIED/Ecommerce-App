import 'package:get/get.dart';

abstract class ItemsController extends GetxController {
  initalData();
  chnageCat(int val);
}

class ItemsControllerImp extends ItemsController {
  List catgeories = [];
  int? selectedCat;

  @override
  void onInit() {
    initalData();
    super.onInit();
  }

  @override
  chnageCat(val) {
    selectedCat = val;
    update();
  }

  @override
  initalData() {
    //Data Coming from home
    catgeories = Get.arguments["catgeoies"];
    selectedCat = Get.arguments["selectedcat"];
  }
}
