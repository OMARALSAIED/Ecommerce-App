import 'package:ecommerce/controller/on_Boarding_Controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 35),
      height: 40,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 100),
        onPressed: () {
          controller.next();
        },
        color: APPColors.primaryColor,
        child: const Text(
          'Continue',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
