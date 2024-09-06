
import 'package:ecommerce/controller/auth/verfiy_Controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerfiyCode extends StatelessWidget {
  const VerfiyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerfiyCodeControlleriImp controller = Get.put(VerfiyCodeControlleriImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: APPColors.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            '39'.tr,
            style: Styles.textstyle17Bold.copyWith(color: Colors.grey),
          ),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            child: ListView(
              children: [
                 Text(
                  '40'.tr,
                  textAlign: TextAlign.center,
                  style: Styles.textstyle25Bold,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    '41'.tr,
                    textAlign: TextAlign.center,
                    style: Styles.textstyle13.copyWith(color: APPColors.gery),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                OtpTextField(
                  fieldWidth: 50,
                  borderRadius: BorderRadius.circular(15),
                  numberOfFields: 5,
                  borderColor: Color(0xFF512DA8),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    controller.goToResetpassword();
                  }, // end onSubmit
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            )));
  }
}
