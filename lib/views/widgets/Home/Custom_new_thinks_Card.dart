import 'package:ecommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomNewThinksCard extends StatelessWidget {
  final String title;
  final String subtitle;
  const CustomNewThinksCard({
    super.key, required this.title, required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: APPColors.primaryColor,
                  borderRadius: BorderRadiusDirectional.circular(20)),
              height: 150,
              child:  ListTile(
                title: Text(
                  "$title",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                subtitle: Text(
                  "$subtitle",
                  style: TextStyle(color: Colors.white, fontSize: 30),
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
                  borderRadius: BorderRadius.circular(100)),
            ),
          )
        ],
      ),
    );
  }
}
