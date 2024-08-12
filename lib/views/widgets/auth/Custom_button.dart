import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButtonAuth extends StatelessWidget {
  String text;
  final void Function()? onPressed;
  CustomButtonAuth({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(vertical: 13),
        onPressed: onPressed,
        color: APPColors.primaryColor,
        textColor: Colors.white,
        child: Text(
          text,
          style: Styles.textstyle17,
        ),
      ),
    );
  }
}
