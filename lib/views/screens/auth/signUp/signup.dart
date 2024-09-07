import 'package:ecommerce/controller/auth/signup_Controller.dart';
<<<<<<< HEAD
=======
import 'package:ecommerce/core/classes/Status_Request.dart';
>>>>>>> 280f663fe86c80d1942237ce889a3f7ea71dd254
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/styles.dart';
import 'package:ecommerce/core/functions/alertexit_App.dart';
import 'package:ecommerce/core/functions/vaild_Input.dart';
import 'package:ecommerce/views/widgets/auth/Custom_button.dart';
import 'package:ecommerce/views/widgets/auth/Sign_And_log_text.dart';
import 'package:ecommerce/views/widgets/auth/text_form_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
  Get.lazyPut(()=>SignupControllerImp());//lazy to delete memory after signup or login
=======
    Get.lazyPut(()=>SignupControllerImp());//lazy to delete memory after signup or login
>>>>>>> 280f663fe86c80d1942237ce889a3f7ea71dd254
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
        body: GetBuilder<SignupControllerImp>(
<<<<<<< HEAD
          builder: (controller) => Container(
=======
          builder: (controller) =>
          
          controller.statusRequest==StatusRequest.loading?
          Center(child: Text("Loadgin ...."),):
           Container(
>>>>>>> 280f663fe86c80d1942237ce889a3f7ea71dd254
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            child: Form(
              key: controller.formstate,
              child: WillPopScope(onWillPop: alertEixtApp, child: ListView(
                children: [
                  const Text(
                    'Make Your Account',
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
                    isNumber: false,
                    controller: controller.username,
                    hinttext: 'Username',
                    validator: (val) {
                      return validInput(val!, 5, 100, "username");
                    },
                    suffixIcon: const Icon(Icons.person_outline),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AppTextFormField(
                    isNumber: false,
                    controller: controller.email,
                    hinttext: 'Email',
                    validator: (val) {
                      return validInput(val!, 5, 100, "email");
                    },
                    suffixIcon: const Icon(Icons.email),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AppTextFormField(
                    isNumber: true,
                    controller: controller.phone,
                    hinttext: 'Phone',
                    validator: (val) {
                      return validInput(val!, 5, 100, "phone");
                    },
                    suffixIcon: const Icon(Icons.phone),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AppTextFormField(
                    isNumber: false,
                    controller: controller.password,
                    hinttext: 'password',
                    validator: (val) {
                      return validInput(val!, 5, 100, "password");
                    },
                    suffixIcon: const Icon(Icons.lock_outline),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomButtonAuth(
                      text: 'Sign Up',
                      onPressed: () {
                        controller.signup();
                      }),
                  const SizedBox(
                    height: 30,
                  ),
                  SignAndLogText(
                    text1: 'have an account ? ',
                    text2: 'Sign In',
                    onTap: controller.goToLogin,
                  )
                ],
              ))
            )),
        ));
  }
}
