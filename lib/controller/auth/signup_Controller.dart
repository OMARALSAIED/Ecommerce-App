import 'package:ecommerce/core/constant/routes_name.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  signup();
  goToLogin();
}

class SignupControllerImp extends SignupController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  @override
  signup() {
    var formdata = formstate.currentState;

    if (formdata!.validate()) {
      print('Data vaild');
      Get.offNamed(Approutes.verifiyCodeSignUp);
      // Get.delete<SignupControllerImp>();//to make sure there is no crash memory
    } else {
      print('Data not vaild');
    }
  }

  @override
  goToLogin() {
    Get.toNamed(Approutes.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();

    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
