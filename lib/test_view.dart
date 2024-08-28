import 'package:ecommerce/controller/test_controller.dart';
import 'package:ecommerce/core/classes/Status_Request.dart';
import 'package:flutter/foundation.dart';
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
        if (controller.statusRequest == StatusRequest.loading) {
          return const Center(
            child: Text("Loading"),
          );
        } else if (controller.statusRequest == StatusRequest.offlinefailuer) {
          return const Center(
            child: Text("Offline Failuer"),
          );
        } else if (controller.statusRequest == StatusRequest.serverfailuer) {
          return const Center(
            child: Text("Server Failuer"),
          );
        } else {
          return ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: (context, index) {
                return Text('${controller.data}');
              });
        }
      }),
    );
  }
}
