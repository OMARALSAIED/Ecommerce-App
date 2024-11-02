import 'package:ecommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomMaterilButton extends StatelessWidget {
  final void Function()? onPressed;
  final IconData iconData;
  final String text;
  final bool active;

  CustomMaterilButton(
      {super.key,
      required this.active,
      required this.text,
      required this.onPressed,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(iconData,
              color:
                  active == true ? APPColors.primaryColor : APPColors.kgrey800),
          Text(
            "$text",
            style: TextStyle(
                color: active == true
                    ? APPColors.primaryColor
                    : APPColors.kgrey800),
          )
        ],
      ),
    );
  }
}
