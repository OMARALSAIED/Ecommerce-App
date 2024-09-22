import 'package:ecommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomTitleHome extends StatelessWidget {
  final String title;
  const CustomTitleHome({
   required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Text(
      "$title",
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: APPColors.secondcolor),
    );
  }
}
