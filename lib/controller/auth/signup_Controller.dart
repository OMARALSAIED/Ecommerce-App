import 'package:ecommerce/core/classes/Status_Request.dart';
import 'package:ecommerce/core/constant/routes_name.dart';
import 'package:ecommerce/core/functions/handling_data_controller.dart';
import 'package:ecommerce/data/data_source/remote/auth/signUp_Data.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  signup();
  goToLogin();
}

class SignupControllerImp extends SignupController {
  SignupData signupData = SignupData(Get.find());

  List data = [];

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;

  late StatusRequest statusRequest;
  @override
  signup() async {
    var formdata = formstate.currentState;

    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;

      var response = await signupData.postData(
          username.text, password.text, email.text, phone.text);
      print("==================$response");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        //اذا كانت البيانات الراجعة صحيحة اعرضها
        if (response['status'] == "success") {
          data.addAll(response['data']);
          Get.offNamed(Approutes.verifiyCodeSignUp);
        } else {
          Get.defaultDialog(
              title: "Waning",
              middleText: "Warning phone number or email already Exists");
          statusRequest = StatusRequest.failuer;
        }
      }
      update();
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
