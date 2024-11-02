
import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {

  if (val.isEmpty) {
    return "value can't be empty";
  }

  if (val.length < min) {
    return "value can't be less than $min";
  }
  if (val.length > max) {
    return "value can't be larger than $max";
  }
  if (type == 'username') {
    if (!GetUtils.isUsername(val)) {
      return "not vaild username";
    }
  }

  if (type == 'email') {
    if (!GetUtils.isEmail(val)) {
      return "not vaild email";
    }
  }

  if (type == 'Phone') {
    if (!GetUtils.isPhoneNumber(val)) {
      return "not vaild phone";
    }
  }
 
}
