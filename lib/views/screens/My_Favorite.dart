import 'package:ecommerce/views/widgets/Custom_App_bar.dart';
import 'package:flutter/material.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            CustomAppbar(
              FavonPressed: () {},
              hinttext: "Find Product",
              prefixicon: Icon(Icons.search),
              secicon: Icons.notifications_active_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
