import 'package:ecommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';

class PriceAndcounitiy extends StatelessWidget {
  final void Function()? onPressedAdd;
  final void Function()? onPressedremove;
  final String price;
  final String count;
  const PriceAndcounitiy({
    super.key,
    this.onPressedAdd,
    this.onPressedremove,
    required this.price,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            IconButton(onPressed: onPressedAdd, icon: Icon(Icons.add)),
            Container(
              alignment: Alignment.center,
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black)),
              child: Text(
                textAlign: TextAlign.center,
                "$count",
                style: TextStyle(fontSize: 20, color: APPColors.kgrey800),
              ),
            ),
            IconButton(onPressed: onPressedremove, icon: Icon(Icons.remove)),
        const    SizedBox(
              width: 120,
            ),
            Text(
              "$price\$",
              style: TextStyle(fontSize: 40, color: APPColors.secondcolor),
            ),
          ],
        ),
      ],
    );
  }
}
