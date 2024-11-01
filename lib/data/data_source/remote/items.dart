import 'package:ecommerce/core/classes/crud._requests.dart';
import 'package:ecommerce/link_api.dart';

class ItemsData {
  Crud crud;

  ItemsData(this.crud);

  getData(String id ,int userid) async {
    var response = await crud.postData(AppLink.items, {
      "id":id.toString(),
      "userid":userid.toString()
    });
    print(response);
   return response.fold((l) => l, (r) => r);
  }
}
