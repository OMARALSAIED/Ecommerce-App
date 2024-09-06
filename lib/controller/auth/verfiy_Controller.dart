import 'package:ecommerce/core/constant/routes_name.dart';
import 'package:get/get.dart';

abstract class VerfiyCodeController extends GetxController {
  checkCode();
  goToResetpassword();
}

class VerfiyCodeControlleriImp extends VerfiyCodeController {
  late String verfiyCode;

  @override
  VerfiyCodeControlleriImp() {}

  @override
  checkCode() {}

  @override
  goToResetpassword() {
    Get.offNamed(Approutes.resetpassword);
  }

  @override
  void onInit() {
    super.onInit();
  }

 
}
