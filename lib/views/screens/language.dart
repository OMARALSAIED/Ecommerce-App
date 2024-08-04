import 'package:ecommerce/core/constant/routes_name.dart';
import 'package:ecommerce/core/constant/styles.dart';
import 'package:ecommerce/core/localization/changelocal.dart';
import 'package:ecommerce/views/widgets/Languages/customButtonlanguage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LoacleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '1'.tr,
              style: Styles.textstyle25Bold,
            ),
            const SizedBox(
              height: 20,
            ),
            customButtonlanguage(
              onPressed: () {
                controller.changeLang('ar');
                Get.toNamed(Approutes.onBoarding);
              },
              textbutton: 'Ar',
            ),
            customButtonlanguage(
              onPressed: () {
                controller.changeLang('en');
                Get.toNamed(Approutes.onBoarding);
              },
              textbutton: 'En',
            )
          ],
        ),
      ),
    );
  }
}
