import 'package:ecommerce/core/classes/crud._requests.dart';
import 'package:ecommerce/link_api.dart';

class SignupData {
  Crud crud;

  SignupData(this.crud);

  postData(String username,String password,String email, String phone) async {
    var response = await crud.postData(AppLink.signup, 
    {
      "username":username,
      "email":email,
      "password":password,
      "phone":phone,
    });
    print(response);
   return response.fold((l) => l, (r) => r);
  }
}
