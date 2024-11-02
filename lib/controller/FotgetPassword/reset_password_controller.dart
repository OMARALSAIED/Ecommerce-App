import 'package:ecommerce/core/classes/Status_Request.dart';
import 'package:ecommerce/core/constant/routes_name.dart';
import 'package:ecommerce/core/functions/handling_data_controller.dart';
import 'package:ecommerce/data/data_source/remote/Forgetpassword/resetpassword_data.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToSuccessResetPassword();
}

class ResetPasswordControlleriImp extends ResetPasswordController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  ResetpasswordData resetpasswordData = ResetpasswordData(Get.find());
  StatusRequest statusRequest=StatusRequest.inital;
  late TextEditingController newPassword;
  late TextEditingController rePassword;

  String? email;

  @override
  ResetPasswordControlleriImp() {}

  @override
  resetPassword() async {
    if (newPassword.text != rePassword.text) {
      return Get.defaultDialog(
          title: "Warning", middleText: "password not match");
    }
    statusRequest = StatusRequest.loading;

    var response = await resetpasswordData.postData(
      email!,
      newPassword.text,
    );
    print("==================$response");
    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // اذا كانت البيانات الراجعة صحيحة اعرضها
      if (response['status'] == "success") {
        Get.offNamed(Approutes.successresetpassword);
      } else {
        Get.defaultDialog(title: "Warning", middleText: "Try Again");
        statusRequest = StatusRequest.failuer;
      }
    }
    update();
    print('Data valid');
  }

  @override
  void onInit() {
    email = Get.arguments['email']; // التأكد من تمرير البريد الإلكتروني
    if (email == null) {
      print(
          "Error: email is null"); // التحقق من أن البريد الإلكتروني يتم تمريره
    }
    newPassword = TextEditingController();
    rePassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    newPassword.dispose();
    rePassword.dispose();

    super.dispose();
  }

  @override
  goToSuccessResetPassword() {
    Get.offNamed(Approutes.successresetpassword);
  }
}
