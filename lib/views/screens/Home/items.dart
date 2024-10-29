import 'package:ecommerce/controller/items_controller.dart';
import 'package:ecommerce/core/classes/handling_data_view.dart';
import 'package:ecommerce/data/models/items_model.dart';
import 'package:ecommerce/views/widgets/Custom_App_bar.dart';
import 'package:ecommerce/views/widgets/items/Custom_ListItems.dart';
import 'package:ecommerce/views/widgets/items/List_categories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.all(15),
            child: ListView(
              children: [
                CustomAppbar(
                  hinttext: "Find Product",
                  prefixicon: const Icon(Icons.search),
                  secicon: Icons.notifications_active_outlined,
                  onpressedicon: () {},
                  ontapSearch: () {},
                ),
                const SizedBox(
                  height: 24,
                ),
                const CustomcategoiresListViewItems(),
                GetBuilder<ItemsControllerImp>(
                    builder: (controller) => HandlingDataView(
                        statusRequest: controller.statusRequest,
                        widget: GridView.builder(
                          itemCount: controller.data.length,
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, childAspectRatio: 0.7),
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, index) {
                            return CustomListItems(
                              
                              itemsModel:
                                  ItemsModel.fromJson(controller.data[index]),
                            );
                          },
                        ))),
              ],
            )));
  }
}
