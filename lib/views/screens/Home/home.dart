import 'package:ecommerce/controller/home_Controller.dart';
import 'package:ecommerce/core/classes/handling_data_view.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/imagesassets.dart';
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
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 15),
                            child: Stack(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        color: APPColors.primaryColor,
                                        borderRadius:
                                            BorderRadiusDirectional.circular(
                                                20)),
                                    height: 150,
                                    child: const ListTile(
                                      title: Text(
                                        "A summer Suprise",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      subtitle: Text(
                                        "Cahback 20%",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 30),
                                      ),
                                    )),
                                Positioned(
                                  top: -25,
                                  right: -10,
                                  child: Container(
                                    height: 160,
                                    width: 160,
                                    decoration: BoxDecoration(
                                        color: APPColors.secondcolor,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                )
                              ],
                            ),
                          ),

                          // قائمة التصنيفات الأفقية
                          Container(
                            height: 90, // هنا نحدد الارتفاع بشكل واضح
                            child: ListView.separated(
                                separatorBuilder: (context, index) =>
                                    const SizedBox(
                                      width: 10,
                                    ),
                                itemCount: controlle.catgeories.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.black),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      height: 90,
                                      width: 90,
                                      child: Text(
                                        "${controller.catgeories[index]["categoies_name_en"]}",
                                        style: const TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      ));
                                }),
                          ),
                          const SizedBox(
                            height: 40,
                          ),

                          // عنوان منتجات مخصصة لك
                          const Text(
                            "Product for you",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: APPColors.secondcolor),
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          // عرض المنتجات بشكل أفقي
                          Container(
                            height: 200, // تحديد ارتفاع الـ ListView الأفقي
                            child: ListView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, i) {
                                return Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      padding:const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      height: 100,
                                      width: 150,
                                      child: Image.asset(
                                          height: 100,
                                          width: 150,
                                          fit: BoxFit.fill,
                                          AppImagesassets.dress),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.3),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      height: 120,
                                      width: 160,
                                    ),
                                    const Positioned(
                                        left: 10,
                                        child: Text(
                                          "Dress Surface Go 2",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ))
                                  ],
                                );
                              },
                            ),
                          )
                        ],
                      )),
                )));
  }
}
