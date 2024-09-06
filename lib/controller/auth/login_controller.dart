import 'package:ecommerce/core/classes/Status_Request.dart';
import 'package:ecommerce/core/constant/routes_name.dart';
import 'package:ecommerce/core/functions/handling_data_controller.dart';
import 'package:ecommerce/data/data_source/remote/auth/login_data.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  goToSignUp();
  login();
  goToforgetpassword();
}

class LoginControllerImp extends LoginController {
  LoginData loginData = LoginData(Get.find());
  StatusRequest? statusRequest;
  late TextEditingController email;
  late TextEditingController password;

  @override
  login() async {
    var formdata = formState.currentState;

    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;

      var response = await loginData.postData(
          password.text, email.text);
      print("==================$response");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        //اذا كانت البيانات الراجعة صحيحة اعرضها
        if (response['status'] == "success") {
          
          Get.offNamed(Approutes.home);
        } else {
          Get.defaultDialog(
              title: "Waning",
              middleText: "Warning phone number or email already Exists");
          statusRequest = StatusRequest.failuer;
        }
      }
      update();
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
