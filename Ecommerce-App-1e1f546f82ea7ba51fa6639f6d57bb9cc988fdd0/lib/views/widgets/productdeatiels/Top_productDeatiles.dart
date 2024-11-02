import 'package:ecommerce/controller/home_Controller.dart';
import 'package:ecommerce/controller/productDeatiles_controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/imagesassets.dart';
import 'package:ecommerce/views/widgets/productdeatiels/price_and_counitiy.dart';
import 'package:ecommerce/views/widgets/productdeatiels/subitems_List.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class TopProductDeatiles extends GetView<HomeControllerImp> {
  const TopProductDeatiles({
    super.key,
    required this.controllerp,
  });

  final ProductdeatilesControllerImp controllerp;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 180,
              decoration: const BoxDecoration(
                  color: APPColors.secondcolor,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20))),
            ),
            Positioned(
              top: 30,
              left: controller.lang == 'ar' ? -30 : null,
              right: controller.lang == 'en' ? -10 : null,
              child: Hero(
                tag: "${controllerp.itemsModel.itemID}",
                child: Image.asset(
                  height: 250,
                  AppImagesassets.lap,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 80,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${controllerp.itemsModel.itemNameEn}",
                style: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 32,
              ),
              PriceAndcounitiy(
                onPressedAdd: () {},
                onPressedremove: () {},
                price: "200",
                count: "2",
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "laptop lenovo cor i7  gen 11 120 HR Storage 4T",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Color",
                style: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              SubitemsList(controller: controllerp)
            ],
          ),
        )
      ],
    );
  }
}
