import 'package:ecommerce/core/classes/Status_Request.dart';
import 'package:ecommerce/core/constant/routes_name.dart';
import 'package:ecommerce/core/functions/handling_data_controller.dart';
import 'package:ecommerce/data/data_source/remote/Forgetpassword/Verifiy_fogetPassword_data.dart';
import 'package:get/get.dart';

abstract class VerfiyCodeController extends GetxController {
  checkCode();
  goToResetpassword(String verfiyCode );
}

class VerfiyCodeControlleriImp extends VerfiyCodeController {

  StatusRequest? statusRequest;
  String? email;
  String? verfiyCode;

  VerifiyForgetData verifiyForgetData = VerifiyForgetData(Get.find());

  @override
  VerfiyCodeControlleriImp() {}

  @override
  checkCode() {}

  @override
  goToResetpassword(verfiyCode)async {
     statusRequest = StatusRequest.loading;
    update();

    var response = await verifiyForgetData.postData(email!, verfiyCode);
    print("==================$response");

    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(Approutes.resetpassword,arguments: {"email":email});
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
    email = Get.arguments['email'];
    super.onInit();
  }
}
