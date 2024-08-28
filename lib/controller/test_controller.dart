import 'package:ecommerce/core/classes/Status_Request.dart';
import 'package:ecommerce/core/classes/crud._requests.dart';
import 'package:ecommerce/core/functions/handling_data_controller.dart';
import 'package:ecommerce/data/data_source/remote/test_data.dart';
import 'package:get/get.dart';

class TestController extends GetxController {
  Crud crud = Crud();
  TestData testData = TestData(Get.find());

  List data = [];

  late StatusRequest statusRequest;

  getData() async {
    statusRequest = StatusRequest.loading;

    var response = await testData.getData();

    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {//اذا كانت البيانات الراجعة صحيحة اعرضها
      data.addAll(response['data']);
    }
  }
}
