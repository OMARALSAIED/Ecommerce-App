import 'package:ecommerce/controller/items_controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/imagesassets.dart';
import 'package:ecommerce/views/widgets/Custom_App_bar.dart';
import 'package:ecommerce/views/widgets/items/List_categories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ItemsControllerImp());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            CustomAppbar(
              hinttext: "Find Product",
              prefixicon: Icon(Icons.search),
              secicon: Icons.notifications_active_outlined,
              onpressedicon: () {},
              ontapSearch: () {},
            ),
            const SizedBox(
              height: 24,
            ),
            CustomcategoiresListViewItems(),
            GridView.builder(
              itemCount: 2,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.7),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, index) {
                return InkWell(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(AppImagesassets.lap),
                          const Text(
                            "Laptop Services",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "desciption how are you omar",
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "200.10 \$",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: APPColors.secondcolor,
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.favorite_outline_outlined))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
