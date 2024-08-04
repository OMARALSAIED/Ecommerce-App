import 'package:ecommerce/core/constant/styles.dart';
import 'package:ecommerce/views/widgets/Languages/customButtonlanguage.dart';
import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Choose Language',
              style: Styles.textstyle25Bold,
            ),
         const   SizedBox(
              height: 20,
            ),
            customButtonlanguage(
              onPressed: () {},
              textbutton: 'Ar',
            ),
            customButtonlanguage(
              onPressed: () {},
              textbutton: 'En',
            )
          ],
        ),
      ),
    );
  }
}
