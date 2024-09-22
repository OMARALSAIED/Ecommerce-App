import 'package:ecommerce/controller/home_Controller.dart';
import 'package:ecommerce/core/classes/handling_data_view.dart';
import 'package:ecommerce/views/widgets/Home/Custom_Categories_ListView.dart';
import 'package:ecommerce/views/widgets/Home/Custom_new_thinks_Card.dart';
import 'package:ecommerce/views/widgets/Home/Custom_title_home.dart';
import 'package:ecommerce/views/widgets/Home/List_Items_view_Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controlle = Get.put(HomeControllerImp());
    return Scaffold(
        body: GetBuilder<HomeControllerImp>(
            builder: (controller) => HandlingDataView(
                  statusRequest: controlle.statusRequest,
                  widget: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: ListView(
                        children: [
                          // شريط البحث
                          Container(
                            margin: const EdgeInsets.only(top: 24),
                            child: Row(
                              children: [
                                Expanded(
                                    child: TextFormField(
                                  decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.search),
                                      hintText: "Find Product",
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      filled: true,
                                      fillColor: const Color.fromARGB(
                                          34, 158, 158, 158)),
                                )),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          34, 158, 158, 158),
                                      borderRadius: BorderRadius.circular(15)),
                                  width: 60,
                                  height: 55,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.notifications_active_outlined,
                                      size: 30,
                                      color: Color.fromARGB(255, 126, 114, 114),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),

                          // عرض الصورة والإعلان
                          const CustomNewThinksCard(
                            title: "A summer suprise",
                            subtitle: "Casback 20",
                          ),
                          const CustomTitleHome(
                            title: "Categories",
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          // قائمة التصنيفات الأفقية
                          const CustomcategoiresListView(),
                          const SizedBox(
                            height: 10,
                          ),

                          // عنوان منتجات مخصصة لك
                          const CustomTitleHome(
                            title: "Product for you",
                          ),

                          const SizedBox(
                            height: 10,
                          ),

                          // عرض المنتجات بشكل أفقي
                          const ListItemsView(),

                          const CustomTitleHome(
                            title: "Offers",
                          ),
                          const ListItemsView(),
                        ],
                      )),
                )));
  }
}
