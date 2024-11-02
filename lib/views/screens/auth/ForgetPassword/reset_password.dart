import 'package:ecommerce/controller/FotgetPassword/reset_password_controller.dart';
import 'package:ecommerce/core/classes/handling_data_view.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/styles.dart';
import 'package:ecommerce/views/widgets/auth/Custom_button.dart';
import 'package:ecommerce/views/widgets/auth/text_form_app.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControlleriImp controller =
        Get.put(ResetPasswordControlleriImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: APPColors.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'Reset Password',
            style: Styles.textstyle17Bold.copyWith(color: Colors.grey),
          ),
        ),
        body:GetBuilder<ResetPasswordControlleriImp>(builder: (controller) => HandlingDataRequest(statusRequest: controller.statusRequest, widget:  Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            child: Form(
              key: controller.formState,
              child: ListView(
                children: [
                 Text(
                    '35'.tr,
                    textAlign: TextAlign.center,
                    style: Styles.textstyle25Bold,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      '35'.tr,
                      textAlign: TextAlign.center,
                      style: Styles.textstyle13.copyWith(color: APPColors.gery),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AppTextFormField(
                    isNumber: false,
                    controller: controller.newPassword,
                    hinttext: '34'.tr,
                    validator: (val) {},
                    suffixIcon: const Icon(Icons.lock_outline),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AppTextFormField(
                    isNumber: false,
                    controller: controller.rePassword,
                    hinttext: '42'.tr,
                    validator: (val) {},
                    suffixIcon: const Icon(Icons.lock_outline),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomButtonAuth(
                      text: '33'.tr,
                      onPressed: () {
                        controller.resetPassword();
                      }),
                ],
              ),
            ))),));
  }
}
