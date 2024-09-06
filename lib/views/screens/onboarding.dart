import 'package:ecommerce/controller/on_Boarding_Controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/views/widgets/OnBoarding/Custom_Button.dart';
import 'package:ecommerce/views/widgets/OnBoarding/Custom_Dot.dart';
import 'package:ecommerce/views/widgets/OnBoarding/Custom_silder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const Scaffold(
      backgroundColor: APPColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: CustomSilder(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  DotsController(),
                  Spacer(
                    flex: 1,
                  ),
                  CustomButtonOnBoarding()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
