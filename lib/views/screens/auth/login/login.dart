import 'package:ecommerce/controller/auth/login_controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/styles.dart';
import 'package:ecommerce/views/widgets/auth/Custom_button.dart';
import 'package:ecommerce/views/widgets/auth/Sign_And_log_text.dart';
import 'package:ecommerce/views/widgets/auth/logo_auth.dart';
import 'package:ecommerce/views/widgets/auth/text_form_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: APPColors.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            '9'.tr,
            style: Styles.textstyle17Bold.copyWith(color: Colors.grey),
          ),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            child: ListView(
              children: [
                const LogoAuth(),
                Text(
                  '10'.tr,
                  textAlign: TextAlign.center,
                  style: Styles.textstyle25Bold,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    '11'.tr,
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
                  validator: (val) {},
                  suffixIcon: const Icon(Icons.email),
                ),
                const SizedBox(
                  height: 20,
                ),
                AppTextFormField(
                  controller: controller.password,
                  hinttext: '13'.tr,
                  validator: (val) {},
                  suffixIcon: const Icon(Icons.lock_outline),
                ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    controller.goToforgetpassword();
                  },
                  child: Text(
                    '14'.tr,
                    textAlign: TextAlign.end,
                  ),
                ),
                CustomButtonAuth(text: '15'.tr, onPressed: () {}),
                const SizedBox(
                  height: 30,
                ),
                SignAndLogText(
                  onTap: controller.goToSignUp,
                  text1: "16".tr,
                  text2: '17'.tr,
                )
              ],
            )));
  }
}
