import 'package:ecommerce/controller/my_favorite_controller.dart';
import 'package:ecommerce/core/classes/handling_data_view.dart';
import 'package:ecommerce/views/widgets/Custom_App_bar.dart';
import 'package:ecommerce/views/widgets/My_favorite/custom_List_favoriteItems.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MYFavoriteController());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: GetBuilder<MYFavoriteController>(
            builder: (controller) => ListView(
                  children: [
                    CustomAppbar(
                      FavonPressed: () {},
                      hinttext: "Find Product",
                      prefixicon: Icon(Icons.search),
                      secicon: Icons.notifications_active_outlined,
                    ),
           const         SizedBox(
                      height: 20,
                    ),
                    HandlingDataView(
                        statusRequest: controller.statusRequest,
                        widget: GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: controller.data.length,
                          gridDelegate:
                          const    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, childAspectRatio: 0.7),
                          itemBuilder: (context, index) {
                            return CustomListMyFavoriteItems(
                                itemsModel: controller.data[index]);
                          },
                        ))
                  ],
                )),
      ),
    );
  }
}
