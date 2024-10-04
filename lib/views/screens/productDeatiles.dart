import 'package:ecommerce/controller/productDeatiles_controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/imagesassets.dart';
import 'package:ecommerce/views/widgets/productdeatiels/Top_productDeatiles.dart';
import 'package:ecommerce/views/widgets/productdeatiels/price_and_counitiy.dart';
import 'package:ecommerce/views/widgets/productdeatiels/subitems_List.dart';
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
      body: TopProductDeatiles(controller: controller),
    );
  }
}



        // Container(
        //   alignment: Alignment.center,
        //   height: 60,
        //   width: 90,
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(10),
        //       border: Border.all(color: APPColors.kforctColore)),
        //   child: const Text(
        //     "Red",
        //     style: TextStyle(
        //         fontSize: 20,
        //         color: APPColors.kforctColore,
        //         fontWeight: FontWeight.bold),
        //   ),
        // ),
        // Container(
        //   margin: EdgeInsets.only(right: 12),
        //   alignment: Alignment.center,
        //   height: 60,
        //   width: 90,
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(10),
        //       border: Border.all(color: APPColors.kforctColore)),
        //   child: const Text(
        //     "Blue",
        //     style: TextStyle(
        //         fontSize: 20,
        //         color: APPColors.kforctColore,
        //         fontWeight: FontWeight.bold),
        //   ),
        // ),
