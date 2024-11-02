import 'package:ecommerce/core/classes/crud._requests.dart';
import 'package:get/get.dart';

class InitalBindingss extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}
