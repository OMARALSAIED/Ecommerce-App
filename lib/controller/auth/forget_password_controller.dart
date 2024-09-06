import 'package:ecommerce/core/constant/routes_name.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordControllerController extends GetxController {
  GlobalKey<FormState> formstat = GlobalKey<FormState>();

  checkemail();
  goToVeryfiyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordControllerController {
  late TextEditingController email;

  @override
  ForgetPasswordControllerImp() {}

  @override
  goToVeryfiyCode() {
    var formdata = formstat.currentState;
    if (formdata!.validate()) {
      print('Data vaild');
      Get.toNamed(Approutes.verfiycode);
    } else {
      print('Data not vaild');
    }
  }

  @override
  checkemail() {}

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }
}
