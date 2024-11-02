import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

 Future<bool>     alertEixtApp() {
  Get.defaultDialog(
      title: 'تنبيه',
      middleText: 'هل تريد الخروج من التطبيق',
      actions: [
        ElevatedButton(
            onPressed: () {
              exit(0);
            },
            child: Text('Ok')),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text('cancel'))
      ]);

  return Future.value(true);
}
