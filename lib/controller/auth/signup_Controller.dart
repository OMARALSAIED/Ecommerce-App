import 'package:ecommerce/core/classes/Status_Request.dart';
import 'package:ecommerce/core/constant/routes_name.dart';
import 'package:ecommerce/core/functions/handling_data_controller.dart';
import 'package:ecommerce/data/data_source/remote/auth/signUp_Data.dart';
import 'package:flutter/material.dart';
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

  StatusRequest statusRequest = StatusRequest.inital; // دمج الاختلافات بشكل صحيح

  @override
  signup() async {
    var formdata = formstate.currentState;

    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update(); // تحديث حالة التطبيق لعرض حالة التحميل

      var response = await signupData.postData(
          username.text, password.text, email.text, phone.text);
      print("==================$response");

      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        // إذا كانت البيانات الراجعة صحيحة
        if (response['status'] == "success") {
          data.addAll(response['data']);
          Get.offNamed(Approutes.verifiyCodeSignUp, arguments: {"email": email.text});
        } else {
          Get.defaultDialog(
              title: "Warning",
              middleText: "Phone number or email already exists");
          statusRequest = StatusRequest.failuer;
        }
      }
      update(); // تحديث حالة التطبيق بعد المعالجة
      print('Data valid');
    } else {
      print('Data not valid');
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
