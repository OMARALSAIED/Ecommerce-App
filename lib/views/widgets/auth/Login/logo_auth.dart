import 'package:ecommerce/core/constant/imagesassets.dart';
import 'package:flutter/material.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImagesassets.logo,
      width: 170,
      height: 230,
    );
  }
}
