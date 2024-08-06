import 'package:ecommerce/core/constant/routes_name.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  checkemail();
  goToVerifiyCode();
}

class CheckEmailControllerImp extends CheckEmailController {
 
  late TextEditingController email;

  @override
  CheckEmailControllerImp() {}

  @override
  goToVerifiyCode() {
    Get.toNamed(Approutes.successSignUp);
  }

  @override
  checkemail() {
   
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
  
  
  
 
}
