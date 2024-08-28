import 'package:ecommerce/core/classes/Status_Request.dart';
import 'package:flutter/material.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? const Center(
            child: Text("Loading"),
          )
        : statusRequest == StatusRequest.offlinefailuer
            ? const Center(child: Text("Offline Failuer"))
            : statusRequest == StatusRequest.serverfailuer
                ? const Center(
                    child: Text("Server Failuer"),
                  )
                : statusRequest == StatusRequest.failuer
                    ? const Center(
                        child: Text("No Data"),
                      )
                    : widget;
  }
}
