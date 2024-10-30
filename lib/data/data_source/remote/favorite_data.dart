import 'package:ecommerce/core/classes/crud._requests.dart';
import 'package:ecommerce/link_api.dart';

class FavoriteData {
  Crud crud;

  FavoriteData(this.crud);

  AddFavorite(String userid ,int itemid) async {
    var response = await crud.postData(AppLink.favoriteAdd, {
      "user_id":userid.toString(),
      "item_id":itemid.toString()
    });
    print(response);
   return response.fold((l) => l, (r) => r);
  }
  DeleteFavorite(String userid ,int itemid) async {
    var response = await crud.postData(AppLink.favoriteRemove, {
       "user_id":userid.toString(),
      "item_id":itemid.toString()
    });
    print(response);
   return response.fold((l) => l, (r) => r);
  }
}
