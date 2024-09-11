import 'package:ecommerce/core/classes/Status_Request.dart';
import 'package:ecommerce/core/constant/routes_name.dart';
import 'package:ecommerce/core/functions/handling_data_controller.dart';
import 'package:ecommerce/data/data_source/remote/auth/login_data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
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
  StatusRequest statusRequest = StatusRequest.inital;
  late TextEditingController email;
  late TextEditingController password;

  @override
  login() async {
    var formdata = formState.currentState;

    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;

      var response = await loginData.postData(password.text, email.text);
      print("==================$response");
      statusRequest = handlingData(response);

      if (StatusRequest.success == statusRequest) {
        // اذا كانت البيانات الراجعة صحيحة اعرضها
        if (response['status'] == "success") {
          Get.offNamed(Approutes.home);
        } else {
          Get.defaultDialog(
              title: "Warning", middleText: "Phone number or Email Incorrect");
          statusRequest = StatusRequest.failuer;
        }
      }
      update();
      print('Data valid');
    } else {
      print('Data not valid');
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
    FirebaseMessaging.instance.getToken().then((value) {
      print("token is =   $value");
      String? token = value;
    });
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
