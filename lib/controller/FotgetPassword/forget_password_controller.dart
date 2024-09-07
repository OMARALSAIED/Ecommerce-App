import 'package:ecommerce/core/classes/Status_Request.dart';
import 'package:ecommerce/core/constant/routes_name.dart';
import 'package:ecommerce/core/functions/handling_data_controller.dart';
import 'package:ecommerce/data/data_source/remote/Forgetpassword/chcekemail_data.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordControllerController extends GetxController {
  GlobalKey<FormState> formstat = GlobalKey<FormState>();

  checkemail();
  
}

class ForgetPasswordControllerImp extends ForgetPasswordControllerController {
  CehckEmailData cehckEmailData = CehckEmailData(Get.find());

  StatusRequest? statusRequest;
  late TextEditingController email;

  @override
  ForgetPasswordControllerImp() {}

 

  @override
  checkemail() async {
    if (formstat.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await cehckEmailData.postData(email.text);
      print("==================$response");
      statusRequest = handlingData(response);

      if (StatusRequest.success == statusRequest) {
        // اذا كانت البيانات الراجعة صحيحة اعرضها
        if (response['status'] == "success") {
          Get.offNamed(Approutes.verfiycode, arguments: {"email": email.text});
        } else {
          Get.defaultDialog(title: "Warning", middleText: "Not found email");
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
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }


  //  @override
  // goToVeryfiyCode() {
  //   var formdata = formstat.currentState;
  //   if (formdata!.validate()) {
  //     print('Data vaild');
  //     Get.toNamed(Approutes.verfiycode);
  //   } else {
  //     print('Data not vaild');
  //   }
  // }
}
