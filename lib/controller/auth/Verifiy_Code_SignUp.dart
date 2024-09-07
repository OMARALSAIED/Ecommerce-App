import 'package:ecommerce/core/classes/Status_Request.dart';
import 'package:ecommerce/core/constant/routes_name.dart';
import 'package:ecommerce/core/functions/handling_data_controller.dart';
import 'package:ecommerce/data/data_source/remote/auth/verifiy_Code_signUp_data.dart';
import 'package:get/get.dart';

abstract class VerfiyCodeControllerSignUp extends GetxController {
  checkCode();
  goToSuccessSignUp();
}

class VerfiyCodeControllerSignUpiImp extends VerfiyCodeControllerSignUp {
  late String verfiyCode;
  VerifiysingupData verifiysingupData = VerifiysingupData(Get.find());
  String? email;
  StatusRequest? statusRequest;

  @override
  VerfiyCodeControllerSignUpiImp() {}

  @override
  checkCode() {}

  @override
  goToSuccessSignUp() async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await verifiysingupData.postData(email!, verfiyCode);
    print("==================$response");

    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(Approutes.successSignUp);
      } else {
        Get.defaultDialog(
            title: "Warning",
            middleText: "Warning phone number or email already exists");
        statusRequest = StatusRequest.failuer;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email']; // يتم تمرير البريد الإلكتروني هنا من الصفحة السابقة
    super.onInit();
  }
}
