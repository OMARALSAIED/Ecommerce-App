import 'package:ecommerce/core/constant/routes_name.dart';
import 'package:ecommerce/views/screens/auth/login/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToSuccessResetPassword();
}

class ResetPasswordControlleriImp extends ResetPasswordController {
  late TextEditingController newPassword;
  late TextEditingController rePassword;

  @override
  ResetPasswordControlleriImp() {}

  @override
  resetPassword() {}

  @override
  void onInit() {
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
    Get.offNamed(Approutes.verfiycode);
  }
}
