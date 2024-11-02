import 'package:ecommerce/core/classes/crud._requests.dart';
import 'package:ecommerce/link_api.dart';

class VerifiysingupData {
  Crud crud;

  VerifiysingupData(this.crud);

  postData(String email,String verifiy) async {
    
    var response = await crud.postData(AppLink.signup, 
    {
    
      "email":email,
      "verifiy":verifiy,
      
    });
    print(response);
   return response.fold((l) => l, (r) => r);
  }
}
