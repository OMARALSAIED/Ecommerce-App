import 'package:ecommerce/controller/test_controller.dart';

import 'package:ecommerce/core/classes/handling_data_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: GetBuilder<TestController>(builder: (controller) {


        return HandlingDataView(statusRequest: controller.statusRequest, widget:  ListView.builder(
          itemCount: controller.data.length,
          itemBuilder: (context,index)
          {
             return Text('${controller.data}');
          },

        ));
   
      }),
    );
  }
}














     //       itemCount: controller.data.length,
        //       itemBuilder: (context, index) {
        //         return Text('${controller.data}');
        //       });)
        
        // if (controller.statusRequest == StatusRequest.loading) {
        //   return const Center(
        //     child: Text("Loading"),
        //   );
        // } else if (controller.statusRequest == StatusRequest.offlinefailuer) {
        //   return const Center(
        //     child: Text("Offline Failuer"),
        //   );
        // } else if (controller.statusRequest == StatusRequest.serverfailuer) {
        //   return const Center(
        //     child: Text("Server Failuer"),
        //   );
        // } else if (controller.statusRequest == StatusRequest.failuer) {
        //   return const Center(
        //     child: Text("No Data"),
        //   );
        // } else {
        //   return ListView.builder(
        //       itemCount: controller.data.length,
        //       itemBuilder: (context, index) {
        //         return Text('${controller.data}');
        //       });
        // }