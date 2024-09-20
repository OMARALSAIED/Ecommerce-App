import 'dart:collection';

import 'package:ecommerce/core/classes/Status_Request.dart';
import 'package:ecommerce/core/functions/handling_data_controller.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/data_source/remote/home_data.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  initialData();
  getdata();
}

class HomeControllerImp extends HomeController {
 
  MyServices myServices = Get.find();
 
  late StatusRequest statusRequest;

  late HomeData homeData=HomeData(Get.find());

  List catgeories = [];
  String? username;
  int? userid;

  @override
  initialData() {
    username = myServices.sharedPreferences.getString("username");
    userid = myServices.sharedPreferences.getInt("userID");
  }

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;

    var response = await homeData.getData();
    print("==================$response");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
         catgeories.addAll(response['categoies']);
      } else {
        statusRequest = StatusRequest.failuer;
      }
    }
    update();
  }

  @override
  void onInit() {
    
    initialData();
    getdata();
    super.onInit();
  }
}


