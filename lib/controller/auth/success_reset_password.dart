import 'package:ecommerce/core/constant/routes_name.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController {
  goToPageLogin();
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  goToPageLogin() {
    Get.offAllNamed(Approutes.login);
  }
}
