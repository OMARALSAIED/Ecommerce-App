import 'package:ecommerce/controller/auth/check_email_controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/styles.dart';
import 'package:ecommerce/views/widgets/auth/Custom_button.dart';
import 'package:ecommerce/views/widgets/auth/text_form_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckEmai extends StatelessWidget {
  const CheckEmai({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: APPColors.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'Check Email',
            style: Styles.textstyle17Bold.copyWith(color: Colors.grey),
          ),
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            child: ListView(
              children: [
                const Text(
                  'Success Sign Up',
                  textAlign: TextAlign.center,
                  style: Styles.textstyle25Bold,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'please Enter Your Email Address To Recive A Verification Code',
                    textAlign: TextAlign.center,
                    style: Styles.textstyle13.copyWith(color: APPColors.gery),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                AppTextFormField(
                  controller: controller.email,
                  hinttext: 'Email',
                  validator: (val) {},
                  suffixIcon: const Icon(Icons.email),
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomButtonAuth(
                    text: 'Check',
                    onPressed: () {
                      controller.goToSuccessSignUp();
                    }),
              ],
            )));
  }
}
