import 'package:ecommerce/data/models/items_model.dart';
import 'package:get/get.dart';

abstract class ProductdeatilesController extends GetxController {}

class ProductdeatilesControllerImp extends ProductdeatilesController {
  late ItemsModel itemsModel;

  initalData() {
    itemsModel = Get.arguments['itemsmodel'];
  }

  @override
  void onInit() {
    initalData();

    super.onInit();
  }
}
