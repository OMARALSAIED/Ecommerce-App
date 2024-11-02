import 'package:ecommerce/controller/my_favorite_controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/imagesassets.dart';
import 'package:ecommerce/data/models/My_FavoriteModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomListMyFavoriteItems extends GetView<MYFavoriteController> {
  final myFavoriteModel itemsModel;
  const CustomListMyFavoriteItems({
    super.key,
    required this.itemsModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // controller.goToPageproductdeatiles(itemsModel);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: "${itemsModel.itemId}",
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
                  IconButton(
                      onPressed: () {
                        controller.DleteData(itemsModel.favoriteId.toString());
                      },
                      icon: Icon(
                        Icons.delete,
                        color: APPColors.secondcolor,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
