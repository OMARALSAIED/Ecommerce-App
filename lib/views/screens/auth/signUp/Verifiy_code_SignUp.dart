import 'package:ecommerce/controller/auth/Verifiy_Code_SignUp.dart';
import 'package:ecommerce/core/classes/Status_Request.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifiyCodeSignup extends StatelessWidget {
  const VerifiyCodeSignup({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the controller
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
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        child: ListView(
          children: [
            Text(
              '40'.tr,
              textAlign: TextAlign.center,
              style: Styles.textstyle25Bold,
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                '41'.tr,
                textAlign: TextAlign.center,
                style: Styles.textstyle13.copyWith(color: APPColors.gery),
              ),
            ),
            const SizedBox(height: 20),
            OtpTextField(
              fieldWidth: 50,
              borderRadius: BorderRadius.circular(15),
              numberOfFields: 5,
              borderColor: const Color(0xFF512DA8),
              showFieldAsBox: true,
              onCodeChanged: (String code) {
                // Handle validation or checks here
              },
              onSubmit: (String verfiyCode) {
                controller.goToSuccessSignUp();
              },
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
