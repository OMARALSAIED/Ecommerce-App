import 'package:ecommerce/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Custom_Materal_Button.dart';

class CustomBottomnavgationbar extends StatelessWidget {
  const CustomBottomnavgationbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => BottomAppBar(
          color: Color.fromARGB(255, 206, 201, 201),
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Row(children: [
            ...List.generate(controller.listPage.length + 1, ((index) {
              int i = index > 2 ? index - 1 : index;
              return index == 2
                  ? const Spacer()
                  : CustomMaterilButton(
                      text: controller.titlebuttomappbar[i],
                      onPressed: () {
                        controller.ChangePage(i);
                      },
                      iconData: Icons.home,
                      active: controller.currentPag == i ? true : false,
                    );
            })),
          ])),
    );
  }
}
