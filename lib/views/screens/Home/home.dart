import 'package:ecommerce/controller/home_Controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controlle = Get.put(HomeControllerImp());
    return Scaffold(
        body: Container(
            child: ListView(
      children: [
        Container(
          margin: EdgeInsets.only(top: 24),
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            children: [
              Expanded(
                  child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Find Product",
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20)),
                    filled: true,
                    fillColor: Color.fromARGB(34, 158, 158, 158)),
              )),
              const SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(34, 158, 158, 158),
                    borderRadius: BorderRadius.circular(15)),
                width: 60,
                height: 55,
                padding: EdgeInsets.symmetric(vertical: 8),
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
        Center(child: Text("${controlle.userid}"))
      ],
    )));
  }
}
