import 'package:ecommerce/controller/home_Controller.dart';
import 'package:ecommerce/core/classes/handling_data_view.dart';
import 'package:ecommerce/views/widgets/Custom_App_bar.dart';
import 'package:ecommerce/views/widgets/Home/Custom_Categories_ListView.dart';
import 'package:ecommerce/views/widgets/Home/Custom_new_thinks_Card.dart';
import 'package:ecommerce/views/widgets/Home/Custom_title_home.dart';
import 'package:ecommerce/views/widgets/Home/List_Items_view_Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controlle = Get.put(HomeControllerImp());
    return Scaffold(
        body: GetBuilder<HomeControllerImp>(
            builder: (controller) => HandlingDataView(
                  statusRequest: controlle.statusRequest,
                  widget: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: ListView(
                        children:  [
                          // شريط البحث
                   CustomAppbar(
                            hinttext: "Find Product",
                            prefixicon: Icon(Icons.search),
                            secicon: Icons.notifications_active_outlined,
                          ),

                          // عرض الصورة والإعلان
                          CustomNewThinksCard(
                            title: "A summer suprise",
                            subtitle: "Casback 20",
                          ),
                          CustomTitleHome(
                            title: "43".tr,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // قائمة التصنيفات الأفقية
                          CustomcategoiresListView(),
                          SizedBox(
                            height: 10,
                          ),

                          // عنوان منتجات مخصصة لك
                          CustomTitleHome(
                            title: "44".tr,
                          ),

                          SizedBox(
                            height: 10,
                          ),

                          // عرض المنتجات بشكل أفقي
                          ListItemsView(),

                          CustomTitleHome(
                            title: "45".tr,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ListItemsView(),
                        ],
                      )),
                )));
  }
}
