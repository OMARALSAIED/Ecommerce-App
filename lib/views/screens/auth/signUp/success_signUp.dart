import 'package:ecommerce/controller/auth/success_signUp_Controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/styles.dart';
import 'package:ecommerce/views/widgets/auth/Custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignup extends StatelessWidget {
  const SuccessSignup({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =
        Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: APPColors.backgroundColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          '32'.tr,
          style: Styles.textstyle17Bold.copyWith(color: Colors.grey),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Icon(
                size: 200,
                Icons.check_circle_outline,
                color: APPColors.primaryColor,
              ),
            ),
            Text(
              '37'.tr,
              style: Styles.textstyle35Bold,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '28'.tr,
              style: Styles.textstyle15,
            ),
            Spacer(),
            Container(
                width: double.infinity,
                child: CustomButtonAuth(
                    text: '31'.tr,
                    onPressed: () {
                      controller.goToPageLogin();
                    })),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
