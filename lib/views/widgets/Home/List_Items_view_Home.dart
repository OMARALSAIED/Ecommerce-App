import 'package:ecommerce/controller/home_Controller.dart';
import 'package:ecommerce/core/constant/imagesassets.dart';
import 'package:ecommerce/data/models/items_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListItemsView extends GetView<HomeControllerImp> {
  const ListItemsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, // تحديد ارتفاع الـ ListView الأفقي
      child: ListView.builder(
        itemCount: controller.items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return ItemsHome(
              itemsModel: ItemsModel.fromJson(controller.items[i]));
        },
      ),
    );
  }
}

class ItemsHome extends StatelessWidget {
  ItemsModel itemsModel;
  ItemsHome({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: 100,
          width: 150,
          child: Image.asset(
              height: 100, width: 150, fit: BoxFit.fill, AppImagesassets.lap),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20)),
          height: 120,
          width: 160,
        ),
        Positioned(
            left: 10,
            child: Text(
              "${itemsModel.itemNameEn}",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ))
      ],
    );
  }
}
