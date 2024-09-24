import 'package:ecommerce/views/widgets/Custom_App_bar.dart';
import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomAppbar(
            hinttext: "Find Product",
            prefixicon: Icon(Icons.search),
            secicon: Icons.notifications_active_outlined,
            onpressedicon: () {},
            ontapSearch: () {},
          )
        ],
      ),
    );
  }
}
