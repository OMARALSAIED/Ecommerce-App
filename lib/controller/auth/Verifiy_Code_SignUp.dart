<<<<<<< HEAD
import 'package:ecommerce/core/constant/routes_name.dart';
=======
import 'package:ecommerce/core/classes/Status_Request.dart';
import 'package:ecommerce/core/constant/routes_name.dart';
import 'package:ecommerce/core/functions/handling_data_controller.dart';
import 'package:ecommerce/data/data_source/remote/auth/verifiy_Code_signUp_data.dart';
import 'package:ecommerce/views/screens/auth/signUp/Verifiy_code_SignUp.dart';
>>>>>>> 280f663fe86c80d1942237ce889a3f7ea71dd254
import 'package:get/get.dart';

abstract class VerfiyCodeControllerSignUp extends GetxController {
  checkCode();
  goToSuccessSignUp();
}

class VerfiyCodeControllerSignUpiImp extends VerfiyCodeControllerSignUp {
  late String verfiyCode;

<<<<<<< HEAD
=======
  VerifiysingupData verifiysingupData = VerifiysingupData(Get.find());

  String? email;
  

  StatusRequest? statusRequest;
>>>>>>> 280f663fe86c80d1942237ce889a3f7ea71dd254
  @override
  VerfiyCodeControllerSignUpiImp() {}

  @override
  checkCode() {}

  @override
<<<<<<< HEAD
  goToSuccessSignUp() {
    Get.offNamed(Approutes.successSignUp);
=======
  goToSuccessSignUp()async {
     statusRequest = StatusRequest.loading;
      update();
      var response = await verifiysingupData.postData(
          email!,verfiyCode);
      print("==================$response");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        //اذا كانت البيانات الراجعة صحيحة اعرضها
        if (response['status'] == "success") {
          
           Get.offNamed(Approutes.successSignUp);
          
        } else {
          Get.defaultDialog(
              title: "Waning",
              middleText: "Warning phone number or email already Exists");
          statusRequest = StatusRequest.failuer;
        }
      }
      update();
      // print('Data vaild');
      // Get.offNamed(Approutes.verifiyCodeSignUp,arguments: {"email":email.text});
      // Get.delete<SignupControllerImp>();//to make sure there is no crash memory
   
>>>>>>> 280f663fe86c80d1942237ce889a3f7ea71dd254
  }

  @override
  void onInit() {
<<<<<<< HEAD
    super.onInit();
  }

 
=======
    email = Get.arguments['email'];
    super.onInit();
  }
>>>>>>> 280f663fe86c80d1942237ce889a3f7ea71dd254
}
