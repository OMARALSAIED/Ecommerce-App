import 'package:ecommerce/core/classes/crud._requests.dart';
import 'package:ecommerce/link_api.dart';

class ResetpasswordData {
  Crud crud;

  ResetpasswordData(this.crud);

  postData(String email,String password_user) async {
    var response = await crud.postData(AppLink.resetpassword,
    {
     
      "email":email,
      "password_user":password_user
     
    });
    print(response);
   return response.fold((l) => l, (r) => r);
  }
}
