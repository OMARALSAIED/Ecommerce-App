import 'package:ecommerce/controller/on_Boarding_Controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/data/data_source/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DotsController extends StatelessWidget {
  const DotsController({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBardingList.length,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 5),
                          duration: const Duration(milliseconds: 900),
                          width: controller.currentPage == index ? 20 : 5,
                          height: 6,
                          decoration: BoxDecoration(
                              color: APPColors.primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                        )),
              ],
            ));
  }
}
