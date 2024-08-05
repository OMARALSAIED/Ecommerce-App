import 'package:ecommerce/core/constant/routes_name.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordControllerController extends GetxController {
  checkemail();
  goToVeryfiyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordControllerController {
 
  late TextEditingController email;

  @override
  ForgetPasswordControllerImp() {}

  @override
  goToVeryfiyCode() {
    Get.toNamed(Approutes.verfiycode);
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
