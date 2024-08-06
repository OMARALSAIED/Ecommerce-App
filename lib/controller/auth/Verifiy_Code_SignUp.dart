import 'package:ecommerce/core/constant/routes_name.dart';
import 'package:get/get.dart';

abstract class VerfiyCodeControllerSignUp extends GetxController {
  checkCode();
  goToSuccessSignUp();
}

class VerfiyCodeControllerSignUpiImp extends VerfiyCodeControllerSignUp {
  late String verfiyCode;

  @override
  VerfiyCodeControllerSignUpiImp() {}

  @override
  checkCode() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(Approutes.successSignUp);
  }

  @override
  void onInit() {
    super.onInit();
  }

 
}
