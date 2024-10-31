
import 'package:ecommerce/core/classes/Status_Request.dart';
import 'package:ecommerce/core/constant/routes_name.dart';
import 'package:ecommerce/core/functions/handling_data_controller.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/data_source/remote/home_data.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  initialData();
  getdata();
  goToitems(String categoryid, List catgeoires, int selectedcat);
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();

  late StatusRequest statusRequest;

  late HomeData homeData = HomeData(Get.find());
 String? lang;

  List catgeories = [];
  List items = [];
  String? username;
  int? userid;

  @override
  initialData() {
    lang = myServices.sharedPreferences.getString("lang");
    username = myServices.sharedPreferences.getString("username");
    userid = myServices.sharedPreferences.getInt("userID");
  }

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;

    var response = await homeData.getData();
    print("==================$response");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        catgeories.addAll(response['categoies']);
        items.addAll(response['items']);
      } else {
        statusRequest = StatusRequest.failuer;
      }
    }
    update();
  }

  @override
  goToitems(categoryid, catgeories, selectedcat) {
    Get.toNamed(Approutes.items, arguments: {
      "catgeoies": catgeories,
      "selectedcat": selectedcat,
      "categoryid": categoryid
    });
  }

  @override
  void onInit() {
    initialData();
    getdata();
    super.onInit();
  }
}
