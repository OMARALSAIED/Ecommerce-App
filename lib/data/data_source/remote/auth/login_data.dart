import 'package:ecommerce/core/classes/crud._requests.dart';
import 'package:ecommerce/link_api.dart';

class LoginData {
  Crud crud;

  LoginData(this.crud);

  postData(String password,String email) async {
    var response = await crud.postData(AppLink.login, 
    {
      
      "password_user":password,
      "email":email,
      
 
    });
    print(response);
   return response.fold((l) => l, (r) => r);
  }
}
