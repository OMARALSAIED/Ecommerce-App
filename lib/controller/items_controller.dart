import 'package:ecommerce/core/functions/handling_data_controller.dart';
import 'package:ecommerce/data/data_source/remote/items.dart';
import 'package:get/get.dart';

import '../core/classes/Status_Request.dart';

abstract class ItemsController extends GetxController {
  initalData();
  getitems(String categoryid);
  chnageCat(int val, String catval);
}

class ItemsControllerImp extends ItemsController {
  late String categoryid;
  List catgeories = [];
  List data = [];

  int? selectedCat;
  ItemsData itemsData = ItemsData(Get.find());
  late StatusRequest statusRequest;

  @override
  void onInit() {
    initalData();
    super.onInit();
  }

  @override
  chnageCat(val, catval) {
    selectedCat = val;
    categoryid = catval;
    getitems(categoryid);
    update();
  }

  @override
  initalData() {
    //Data Coming from home
    catgeories = Get.arguments["catgeoies"];
    selectedCat = Get.arguments["selectedcat"];
    categoryid = Get.arguments["categoryid"];
    getitems(categoryid!);
  }

  @override
  getitems(categoryid) async {
    data.clear();
    statusRequest = StatusRequest.loading;

    var response = await itemsData.getData(categoryid);
    print("==================$response");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      //اذا كانت البيانات الراجعة صحيحة اعرضها
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failuer;
      }
    }
    update();
  }
}
