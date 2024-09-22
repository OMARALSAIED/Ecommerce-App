import 'package:ecommerce/core/constant/routes_name.dart';
import 'package:ecommerce/core/middleware/my_middelwaer.dart';
import 'package:ecommerce/test.dart';
import 'package:ecommerce/test_view.dart';

import 'package:ecommerce/views/screens/Home/home.dart';
import 'package:ecommerce/views/screens/Home/home_screen.dart';

import 'package:ecommerce/views/screens/auth/ForgetPassword/forget_password.dart';

import 'package:ecommerce/views/screens/auth/login/login.dart';
import 'package:ecommerce/views/screens/auth/ForgetPassword/reset_password.dart';
import 'package:ecommerce/views/screens/auth/ForgetPassword/success_reset_password.dart';
import 'package:ecommerce/views/screens/auth/ForgetPassword/verfiy_code.dart';
import 'package:ecommerce/views/screens/auth/signUp/Verifiy_code_SignUp.dart';
import 'package:ecommerce/views/screens/auth/signUp/signup.dart';
import 'package:ecommerce/views/screens/auth/signUp/success_signUp.dart';
import 'package:ecommerce/views/screens/language.dart';

import 'package:ecommerce/views/screens/onboarding.dart';
import 'package:get/get.dart';

import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name:"/", page: () =>const  Language(),middlewares: [
    MyMiddelwaer()
  ]),


  // GetPage(name: '/', page:()=> TestView()),
  GetPage(name: Approutes.login, page: () => const Login()),
  GetPage(name: Approutes.onBoarding, page: () => const OnBoarding()),
  GetPage(name: Approutes.SignUp, page: () => const Signup()),
  GetPage(name: Approutes.forgertpassword, page: () => const ForgetPassword()),
  GetPage(name: Approutes.resetpassword, page: () => const ResetPassword()),
  GetPage(name: Approutes.verfiycode, page: () => const VerfiyCode()),
  GetPage(name: Approutes.successSignUp, page: () => const SuccessSignup()),
  GetPage(
      name: Approutes.successresetpassword,
      page: () => const SuccessResetPassword()),
  GetPage(
      name: Approutes.verifiyCodeSignUp, page: () => const VerifiyCodeSignup()),

       GetPage(
      name: Approutes.test, page: () => const Test()),
         GetPage(
      name: Approutes.testView, page: () => const TestView()),

         GetPage(
      name: Approutes.home, page: () =>  HomePage()),
         GetPage(
      name: Approutes.homescreen, page: () =>  HomeScreen()),


];




// Map<String, Widget Function(BuildContext)> routes = 
// {

//   Approutes.login : (context)=>const Login(),
//   Approutes.onBoarding : (context)=>const OnBoarding(),
//   Approutes.SignUp:(context)=>const Signup(),
//   Approutes.forgertpassword:(context)=>const ForgetPassword(),
//   Approutes.resetpassword:(context)=>const ResetPassword(),
//   Approutes.verfiycode:(context)=>const VerfiyCode(),
//   Approutes.successSignUp:(context)=>const SuccessSignup(),
//   Approutes.successresetpassword:(context)=>const SuccessResetPassword(),

//   Approutes.verifiyCodeSignUp:(context)=>const VerifiyCodeSignup()
  
// };
