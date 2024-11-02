import 'package:ecommerce/core/classes/Status_Request.dart';
import 'package:ecommerce/core/constant/imagesassets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child:
                Lottie.asset(AppImagesassets.progress, width: 250, height: 250))
        : statusRequest == StatusRequest.offlinefailuer
            ? Center(
                child: Lottie.asset(AppImagesassets.offline,
                    width: 250, height: 250))
            : statusRequest == StatusRequest.serverfailuer
                ? Center(
                    child: Lottie.asset(AppImagesassets.servererror404,
                        width: 300, height: 350),
                  )
                : statusRequest == StatusRequest.failuer
                    ? Center(
                        child: Lottie.asset(AppImagesassets.noData,
                            width: 250, height: 250))
                    : widget;
  }
}




class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRequest(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child:
                Lottie.asset(AppImagesassets.progress, width: 250, height: 250))
        : statusRequest == StatusRequest.offlinefailuer
            ? Center(
                child: Lottie.asset(AppImagesassets.offline,
                    width: 250, height: 250))
            : statusRequest == StatusRequest.serverfailuer
                ? Center(
                    child: Lottie.asset(AppImagesassets.servererror404,
                        width: 300, height: 350),
                  )
              
                    : widget;
  }
}
