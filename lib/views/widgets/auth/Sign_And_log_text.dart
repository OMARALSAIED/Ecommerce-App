import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/styles.dart';
import 'package:flutter/material.dart';

class SignAndLogText extends StatelessWidget {
  final String text1;
  final String text2;
  final void Function()? onTap;
  const SignAndLogText({
    super.key, required this.text1, required this.text2,required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1),
        InkWell(
          onTap: onTap,
          child: Text(
            text2,
            style: Styles.textstyle15.copyWith(color: APPColors.primaryColor),
          ),
        )
      ],
    );
  }
}
