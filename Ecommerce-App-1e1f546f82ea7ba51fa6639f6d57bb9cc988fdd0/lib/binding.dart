import 'package:ecommerce/controller/auth/signup_Controller.dart';
import 'package:get/get.dart';

class Mybinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupControllerImp(),fenix:  true);
  }
}
