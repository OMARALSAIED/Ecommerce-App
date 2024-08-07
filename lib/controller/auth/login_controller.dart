import 'package:ecommerce/core/constant/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  login();
  goToSignUp();
  goToforgetpassword();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;
  @override
  login() {
    var formdata = formState.currentState;
    if (formdata!.validate()) {
      print('Data vaild');
    } else {
      print('Data not vaild');
    }
  }

  @override
  goToSignUp() {
    Get.offNamed(Approutes.SignUp);
  }

  @override
  goToforgetpassword() {
    Get.toNamed(Approutes.forgertpassword);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
