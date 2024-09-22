import 'package:ecommerce/controller/home_Controller.dart';
import 'package:ecommerce/data/models/catgeories_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomcategoiresListView extends GetView<HomeControllerImp> {
  const CustomcategoiresListView(
    {
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
              );
            }));
  }
}

class Categories extends GetView<HomeControllerImp> {
  final CatgeoriesModel catgeoriesModel;
  const Categories({super.key, required this.catgeoriesModel});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.black),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 90,
        width: 90,
        child: Text(
          "${catgeoriesModel.categoiesNameAr}",
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ));
  }
}
