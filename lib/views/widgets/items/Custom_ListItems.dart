import 'package:ecommerce/controller/favorite_controller.dart';
import 'package:ecommerce/controller/items_controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/imagesassets.dart';
import 'package:ecommerce/data/models/items_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListItems extends GetView<ItemsControllerImp> {
  final ItemsModel itemsModel;
  const CustomListItems({
    super.key,
    required this.itemsModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToPageproductdeatiles(itemsModel);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: "${itemsModel.itemID}",
                child: Image.asset(
                  AppImagesassets.lap,
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                itemsModel.itemNameEn!,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              // Text(
              //   "${itemsModel.categoiesNameEn}",
              //   textAlign: TextAlign.center,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Rating 3.5",
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    height: 20,
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        ...List.generate(
                            5,
                            (index) => const Icon(
                                  Icons.star,
                                  size: 15,
                                ))
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${itemsModel.itemPrice} \$",
                    style: const TextStyle(
                        fontSize: 18,
                        color: APPColors.secondcolor,
                        fontWeight: FontWeight.bold),
                  ),
                  GetBuilder<FavoriteController>(
                    builder: (controller) => IconButton(
                        onPressed: () {
                          if (controller.isFavorite[itemsModel.itemID] == 1) {
                            controller.setFavorite(itemsModel.itemID, 0);
                          } else {
                            controller.setFavorite(itemsModel.itemID, 1);
                          }
                        },
                        icon: Icon(
                            color: APPColors.secondcolor,
                            controller.isFavorite[itemsModel.itemID] == 1
                                ? Icons.favorite
                                : Icons.favorite_outline_outlined)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
