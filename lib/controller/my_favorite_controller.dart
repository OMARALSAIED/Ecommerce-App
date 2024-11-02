import 'package:ecommerce/core/classes/Status_Request.dart';
import 'package:ecommerce/core/functions/handling_data_controller.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/data_source/remote/My_favorite_data.dart';

import 'package:ecommerce/data/models/My_FavoriteModel.dart';

import 'package:get/get.dart';

class MYFavoriteController extends GetxController {
  List<myFavoriteModel> data = [];

  MyFavoriteData myfavoriteData = MyFavoriteData(Get.find());
  late StatusRequest statusRequest;

  MyServices myServices = Get.find();

  getData() async {
    data.clear();
    statusRequest = StatusRequest.loading;

    var response = await myfavoriteData
        .getData(myServices.sharedPreferences.getInt("userID")!.toString());
    print("==================$response");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      //اذا كانت البيانات الراجعة صحيحة اعرضها
      if (response['status'] == "success") {
        List responseData = response['data'];
        data.addAll(responseData.map(
          (e) => myFavoriteModel.fromJson(e),
        ));

        print(data);
      } else {
        statusRequest = StatusRequest.failuer;
      }
    }
    update();
  }

  DleteData(String favoriteid) {
    data.clear();

    var response = myfavoriteData.DleteData(favoriteid);
    print("==================$response");

    data.removeWhere((element) => element.itemId == favoriteid);

    print(data);
    update();
  }

  @override
  void onInit() {
    getData();

    super.onInit();
  }
}
