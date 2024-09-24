import 'package:ecommerce/views/screens/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {
  ChangePage(int currntpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentPag = 0;
  List<Widget> listPage = [
    const HomePage(),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text("Settings"),
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text("Profile"),
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text("Favorite"),
        ),
      ],
    )
  ];

  List titlebuttomappbar = [
    "home",
    "Settinges",
    "Profile",
    "Favorite",
  ];
  @override
  ChangePage(int i) {
    currentPag = i;
    update();
  }
}
