import 'package:ecommerce/core/classes/crud._requests.dart';
import 'package:ecommerce/link_api.dart';

class VerifiyForgetData {
  Crud crud;

  VerifiyForgetData(this.crud);

  postData(String verifiy,String email) async {
    var response = await crud.postData(AppLink.verifiyCodeforgetpass, 
    {
      
      "email":email,
      "verifiy":verifiy,
     
    });
    print(response);
   return response.fold((l) => l, (r) => r);
  }
}
