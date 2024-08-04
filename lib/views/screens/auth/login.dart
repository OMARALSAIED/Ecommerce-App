import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/styles.dart';
import 'package:ecommerce/views/widgets/auth/Login/logo_auth.dart';
import 'package:ecommerce/views/widgets/auth/Login/text_form_app.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: APPColors.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'Sign in',
            style: Styles.textstyle17Bold.copyWith(color: Colors.grey),
          ),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            child: ListView(
              children: [
                LogoAuth(),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Welcome Back',
                  textAlign: TextAlign.center,
                  style: Styles.textstyle25Bold,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'Sign In With Your Email And Password OR \n Continue With Scoial Media',
                    textAlign: TextAlign.center,
                    style: Styles.textstyle13.copyWith(color: APPColors.gery),
                  ),
                ),
                const SizedBox(
                  height: 75,
                ),
                AppTextFormField(
                  hinttext: 'Email',
                  validator: (val) {},
                  suffixIcon: Icon(Icons.email),
                ),
                const SizedBox(
                  height: 20,
                ),
                AppTextFormField(
                  hinttext: 'password',
                  validator: (val) {},
                  suffixIcon: const Icon(Icons.lock_outline),
                )
              ],
            )));
  }
}
