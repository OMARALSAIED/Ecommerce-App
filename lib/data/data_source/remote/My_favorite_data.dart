import 'package:ecommerce/core/classes/crud._requests.dart';
import 'package:ecommerce/link_api.dart';

class MyFavoriteData {
  Crud crud;

  MyFavoriteData(this.crud);

  getData(String id) async {
    var response = await crud.postData(AppLink.MyfavoriteView, {"id":id});
    print(response);
   return response.fold((l) => l, (r) => r);
  }


   DleteData(String id) async {
    var response = await crud.postData(AppLink.Myfavoritedelete, {"id":id});
    print(response);
   return response.fold((l) => l, (r) => r);
  }
}
