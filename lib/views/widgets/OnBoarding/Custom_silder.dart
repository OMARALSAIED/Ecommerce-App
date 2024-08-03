import 'package:ecommerce/controller/on_Boarding_Controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/styles.dart';
import 'package:ecommerce/data/data_source/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSilder extends GetView<OnBoardingControllerImp> {
  const CustomSilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  onBardingList[i].image!,
                  // width: 200,
                  // height: 250,
                  // fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 110,
                ),
                Text(
                  onBardingList[i].title!,
                  style: Styles.textstyle25,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onBardingList[i].body!,
                      style: const TextStyle(
                          height: 2,
                          color: APPColors.gery,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    )),
              ],
            ));
  }
}
