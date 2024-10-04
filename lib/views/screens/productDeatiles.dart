import 'package:ecommerce/controller/productDeatiles_controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/imagesassets.dart';
import 'package:ecommerce/views/widgets/productdeatiels/price_and_counitiy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Productdeatiles extends StatelessWidget {
  // final ItemsModel itemsModel;
  const Productdeatiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ProductdeatilesControllerImp controller =
        Get.put(ProductdeatilesControllerImp());
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 40,
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: APPColors.secondcolor,
          onPressed: () {},
          child: Text(
            "Add to Card",
            style: TextStyle(
                color: APPColors.backgroundColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView(
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
                top: 30.0,
                right: Get.width / 15,
                left: Get.height / 15,
                child: Hero(
                  tag: "${controller.itemsModel.itemID}",
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
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "${controller.itemsModel.itemNameEn}",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: APPColors.kforctColore)),
                      child: const Text(
                        "Red",
                        style: TextStyle(
                            fontSize: 20,
                            color: APPColors.kforctColore,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 12),
                      alignment: Alignment.center,
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: APPColors.kforctColore)),
                      child: const Text(
                        "Blue",
                        style: TextStyle(
                            fontSize: 20,
                            color: APPColors.kforctColore,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 12),
                      alignment: Alignment.center,
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                          color: APPColors.kforctColore,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: APPColors.kforctColore)),
                      child: const Text(
                        "Black",
                        style: TextStyle(
                            fontSize: 20,
                            color: APPColors.backgroundColor,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
