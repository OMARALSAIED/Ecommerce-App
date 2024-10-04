import 'package:ecommerce/data/models/items_model.dart';
import 'package:get/get.dart';

abstract class ProductdeatilesController extends GetxController {}

class ProductdeatilesControllerImp extends ProductdeatilesController {
  late ItemsModel itemsModel;

  initalData() {
    itemsModel = Get.arguments['itemsmodel'];
  }

  List subitems = [
    {
      "name": "Red",
      "id": 1,
      "activ": "0",
    },
    {
      "name": "Black",
      "id": 1,
      "activ": "0",
    },
    {
      "name": "yllow",
      "id": 1,
      "activ": "1",
    }
  ];

  @override
  void onInit() {
    initalData();

    super.onInit();
  }
}
