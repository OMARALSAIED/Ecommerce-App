import 'package:ecommerce/core/constant/routes_name.dart';
import 'package:get/get.dart';

abstract class VerfiyCodeController extends GetxController {
  checkCode();
  goToResetpassword();
  goToSuccessSignUp();
}

class VerfiyCodeControlleriImp extends VerfiyCodeController {
  late String verfiyCode;

  @override
  VerfiyCodeControlleriImp() {}

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

  @override
  goToResetpassword() {
    // TODO: implement goToResetpassword
    throw UnimplementedError();
  }
}
