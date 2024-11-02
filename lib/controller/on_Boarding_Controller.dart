import 'package:ecommerce/core/constant/routes_name.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/data_source/static/static_onBoarding_List.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;
  MyServices myServices = Get.find();

  @override
  next() {
    currentPage++;
    if (currentPage > onBardingList.length - 1) {
      myServices.sharedPreferences.setString('step', "1");
      Get.offAllNamed(Approutes.login);
      print("page 4");
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(microseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
