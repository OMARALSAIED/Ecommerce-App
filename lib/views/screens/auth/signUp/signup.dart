import 'package:ecommerce/controller/auth/signup_Controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/styles.dart';
import 'package:ecommerce/views/widgets/auth/Custom_button.dart';
import 'package:ecommerce/views/widgets/auth/Sign_And_log_text.dart';
import 'package:ecommerce/views/widgets/auth/text_form_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    SignupControllerImp controller = Get.put(SignupControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: APPColors.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'Sign Up',
            style: Styles.textstyle17Bold.copyWith(color: Colors.grey),
          ),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            child: ListView(
              children: [
                const Text(
                  'Welcome Back',
                  textAlign: TextAlign.center,
                  style: Styles.textstyle25Bold,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'Sign In With Your Email And Password OR \n Continue With Scoial Media',
                    textAlign: TextAlign.center,
                    style: Styles.textstyle13.copyWith(color: APPColors.gery),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                AppTextFormField(
                  controller: controller.username,
                  hinttext: 'Username',
                  validator: (val) {},
                  suffixIcon: const Icon(Icons.person_outline),
                ),
                const SizedBox(
                  height: 10,
                ),
                AppTextFormField(
                  controller: controller.email,
                  hinttext: 'Email',
                  validator: (val) {},
                  suffixIcon: const Icon(Icons.email),
                ),
                const SizedBox(
                  height: 10,
                ),
                AppTextFormField(
                  controller: controller.phone,
                  hinttext: 'Phone',
                  validator: (val) {},
                  suffixIcon: const Icon(Icons.phone),
                ),
                const SizedBox(
                  height: 10,
                ),
                AppTextFormField(
                  controller: controller.password,
                  hinttext: 'password',
                  validator: (val) {},
                  suffixIcon: const Icon(Icons.lock_outline),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Foget Password',
                  textAlign: TextAlign.end,
                ),
                CustomButtonAuth(text: 'Sign Up', onPressed: () {}),
                const SizedBox(
                  height: 30,
                ),
                SignAndLogText(
                  text1: 'have an account ? ',
                  text2: 'Sign In',
                  onTap: controller.goToLogin,
                    
                  
                )
              ],
            )));
  }
}
