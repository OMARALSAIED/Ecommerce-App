import 'package:ecommerce/controller/home_screen_controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/views/widgets/Home/custom_bottom_navgationbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeScreenControllerImp);
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              shape: CircleBorder(),
              backgroundColor: APPColors.primaryColor,
              onPressed: () {},
              child: const Icon(
                Icons.shopping_basket_outlined,
                color: APPColors.backgroundColor,
              ),
            ),
            bottomNavigationBar: CustomBottomnavgationbar(),
            body: controller.listPage.elementAt(controller.currentPag)));
  }
}


    
          // Row(
          //   children: [
          //     CustomMaterilButton(
          //       active: controller.currentPag == 0 ? true : false,
          //       text: "Home",
          //       onPressed: () {
          //         controller.ChangePage(0);
          //       },
          //       iconData: Icons.home,
          //     ),
          //     CustomMaterilButton(
          //         active: controller.currentPag == 1 ? true : false,
          //         text: "Settinges",
          //         onPressed: () {
          //           controller.ChangePage(1);
          //         },
          //         iconData: Icons.settings),
          //     const SizedBox(
          //       width: 25,
          //     ),
          //     CustomMaterilButton(
          //         active: controller.currentPag == 2 ? true : false,
          //         text: "Profile",
          //         onPressed: () {
          //           controller.ChangePage(2);
          //         },
          //         iconData: Icons.person),
          //     CustomMaterilButton(
          //         active: controller.currentPag == 3 ? true : false,
          //         text: "Favorite",
          //         onPressed: () {
          //           controller.ChangePage(3);
          //         },
          //         iconData: Icons.favorite)
          //   ],
          // )
 