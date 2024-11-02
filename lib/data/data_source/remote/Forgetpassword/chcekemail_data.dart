import 'package:ecommerce/core/classes/crud._requests.dart';
import 'package:ecommerce/link_api.dart';

class CehckEmailData{
  Crud crud;

 CehckEmailData(this.crud);

  postData(String email) async {
    var response = await crud.postData(AppLink.chcekemail, 
    {
     
      "email":email,
    
  
    });
    print(response);
   return response.fold((l) => l, (r) => r);
  }
}
