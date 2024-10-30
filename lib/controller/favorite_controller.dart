import 'package:ecommerce/core/classes/Status_Request.dart';
import 'package:ecommerce/core/functions/handling_data_controller.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/data_source/remote/favorite_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class FavoriteController extends GetxController {
  Map isFavorite = {};
  setFavorite(id, val) {
    isFavorite[id] = val;
    update();
  }
  List data = [];

  FavoriteData favoriteData = FavoriteData(Get.find());
  late StatusRequest statusRequest;

  MyServices myServices = Get.find();


  Addfavorite(int itemid) async {
    data.clear();
    statusRequest = StatusRequest.loading;

    var response = await favoriteData.AddFavorite(
        myServices.sharedPreferences.getInt("userID")!.toString(), itemid);
    print("==================$response");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      //اذا كانت البيانات الراجعة صحيحة اعرضها
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: 'إشعار',
            messageText: const Text(
              "تم إضافة المنتج الى المفضلة",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ));
        // data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failuer;
      }
    }
    update();
  }

  Removefavorite(int itemsid) async {
    data.clear();
    statusRequest = StatusRequest.loading;

    var response = await favoriteData.Removefavorite(
        myServices.sharedPreferences.getInt("userID")!.toString(), itemsid);
    print("==================$response");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      //اذا كانت البيانات الراجعة صحيحة اعرضها
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "إشعار",
            messageText: const Text("تم حذف المنتج من المفضلة",
                style: TextStyle(color: Colors.white, fontSize: 20)));
        // data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failuer;
      }
    }
    update();
  }
}
