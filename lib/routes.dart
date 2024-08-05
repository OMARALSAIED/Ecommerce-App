
import 'package:ecommerce/core/constant/routes_name.dart';
import 'package:ecommerce/views/screens/auth/login/forget_password.dart';
import 'package:ecommerce/views/screens/auth/login/login.dart';
import 'package:ecommerce/views/screens/auth/login/reset_password.dart';
import 'package:ecommerce/views/screens/auth/login/success_reset_password.dart';
import 'package:ecommerce/views/screens/auth/login/verfiy_code.dart';
import 'package:ecommerce/views/screens/auth/signUp/signup.dart';
import 'package:ecommerce/views/screens/auth/signUp/success_signUp.dart';
import 'package:ecommerce/views/screens/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = 
{
  Approutes.login : (context)=>const Login(),
  Approutes.onBoarding : (context)=>const OnBoarding(),
  Approutes.SignUp:(context)=>const Signup(),
  Approutes.forgertpassword:(context)=>const ForgetPassword(),
  Approutes.resetpassword:(context)=>const ResetPassword(),
  Approutes.verfiycode:(context)=>const VerfiyCode(),
  Approutes.successSignUp:(context)=>const SuccessSignup(),
   Approutes.successresetpassword:(context)=>const SuccessResetPassword()
};
