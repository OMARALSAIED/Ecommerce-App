import 'package:ecommerce/core/constant/routes_name.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddelwaer extends GetMiddleware {
  @override
  int? priority = 0;
  @override
  MyServices myServices = Get.find();
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString('step') == "2") {
      return const RouteSettings(name: Approutes.home);
    }
    if (myServices.sharedPreferences.getString('step') == "1") {
      return const RouteSettings(name: Approutes.login);
    }
  }
}
