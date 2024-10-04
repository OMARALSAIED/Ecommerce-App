import 'package:ecommerce/controller/productDeatiles_controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';

class SubitemsList extends StatelessWidget {
  const SubitemsList({
    super.key,
    required this.controller,
  });

  final ProductdeatilesControllerImp controller;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      ...List.generate(
          controller.subitems.length,
          (index) => Container(
                margin: EdgeInsets.only(right: 12),
                alignment: Alignment.center,
                height: 60,
                width: 90,
                decoration: BoxDecoration(
                    color: controller.subitems[index]['activ'] == "1"
                        ? APPColors.kforctColore
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: APPColors.kforctColore)),
                child: Text(
                  controller.subitems[index]['name'],
                  style: TextStyle(
                      fontSize: 20,
                      color: controller.subitems[index]['activ'] == "1"
                          ? Colors.white
                          : APPColors.kforctColore,
                      fontWeight: FontWeight.bold),
                ),
              ))
    ]);
  }
}
