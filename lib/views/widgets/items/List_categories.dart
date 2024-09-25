import 'package:ecommerce/controller/home_Controller.dart';
import 'package:ecommerce/controller/items_controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/data/models/catgeories_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomcategoiresListViewItems extends GetView<ItemsControllerImp> {
  const CustomcategoiresListViewItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90, // هنا نحدد الارتفاع بشكل واضح
        child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
            itemCount: controller.catgeories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Categories(
                catgeoriesModel:
                    CatgeoriesModel.fromJson(controller.catgeories[index]),
                i: index,
              );
            }));
  }
}

class Categories extends GetView<ItemsControllerImp> {
  final CatgeoriesModel catgeoriesModel;
  final int i;
  Categories({super.key, required this.catgeoriesModel, required this.i});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.chnageCat(i!);
      },
      child: Column(
        children: [
          GetBuilder<ItemsControllerImp>(
            builder: (controller) => Container(
                alignment: Alignment.center,
                decoration: controller.selectedCat == i
                    ? const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 3, color: APPColors.primaryColor)),
                      )
                    : null,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "${catgeoriesModel.categoiesNameAr}",
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ],
      ),
    );
  }
}
