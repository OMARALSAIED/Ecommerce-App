import 'package:ecommerce/controller/my_favorite_controller.dart';
import 'package:ecommerce/core/classes/handling_data_view.dart';
import 'package:ecommerce/views/widgets/Custom_App_bar.dart';
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
        child:GetBuilder<MYFavoriteController>(builder: (controller)=> ListView(
          children: [
            CustomAppbar(
              FavonPressed: () {},
              hinttext: "Find Product",
              prefixicon: Icon(Icons.search),
              secicon: Icons.notifications_active_outlined,
            ),


            HandlingDataView(statusRequest: controller.statusRequest, widget: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller.data.length,
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2) ,itemBuilder: (context,index){
              return Text(controller.data[index].itemNameEn!);
            }, ))

       
          ],)
        ),
      ),
    );
  }
}
