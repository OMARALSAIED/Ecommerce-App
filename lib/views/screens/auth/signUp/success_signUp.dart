import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/styles.dart';
import 'package:ecommerce/views/widgets/auth/Custom_button.dart';
import 'package:flutter/material.dart';

class SuccessSignup extends StatelessWidget {
  const SuccessSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: APPColors.backgroundColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Success',
          style: Styles.textstyle17Bold.copyWith(color: Colors.grey),
        ),
      ),
      body: Container(
        padding:const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const Center(
              child: Icon(
                size: 200,
                Icons.check_circle_outline,
                color: APPColors.primaryColor,
              ),
            ),
         const   Text('.....'),
            Spacer(),
            Container(
                width: double.infinity,
                child: CustomButtonAuth(text: 'Go To Login', onPressed: () {})),
          const  SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
