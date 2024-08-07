import 'package:ecommerce/controller/auth/forget_password_controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/styles.dart';
import 'package:ecommerce/core/functions/vaild_Input.dart';
import 'package:ecommerce/views/widgets/auth/Custom_button.dart';
import 'package:ecommerce/views/widgets/auth/text_form_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: APPColors.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            '14'.tr,
            style: Styles.textstyle17Bold.copyWith(color: Colors.grey),
          ),
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            child: Form(
              key: controller.formstat,
              child: ListView(
                children: [
                  Text(
                    '27'.tr,
                    textAlign: TextAlign.center,
                    style: Styles.textstyle25Bold,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      '29'.tr,
                      textAlign: TextAlign.center,
                      style: Styles.textstyle13.copyWith(color: APPColors.gery),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AppTextFormField(
                    controller: controller.email,
                    hinttext: '12'.tr,
                    validator: (val) {
                      return validInput(val!, 10, 100, 'email');
                    },
                    suffixIcon: const Icon(Icons.email),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomButtonAuth(
                      text: '30'.tr,
                      onPressed: () {
                        controller.goToVeryfiyCode();
                      }),
                ],
              ),
            )));
  }
}
