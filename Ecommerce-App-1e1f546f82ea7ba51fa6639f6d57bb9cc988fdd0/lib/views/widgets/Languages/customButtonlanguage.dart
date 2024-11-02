import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/styles.dart';
import 'package:flutter/material.dart';

class customButtonlanguage extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;
  const customButtonlanguage({
    super.key,
    required this.textbutton,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        color: APPColors.primaryColor,
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(
          textbutton,
          style: Styles.textstyle15Bold,
        ),
      ),
    );
  }
}
