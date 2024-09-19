import 'package:ecommerce/core/services/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  String? username;
  int? userid;

  initialData() {
    username = myServices.sharedPreferences.getString("username");
    userid = myServices.sharedPreferences.getInt("userID");
  }

  @override
  void onInit() {
    initialData();

    super.onInit();
  }
}
