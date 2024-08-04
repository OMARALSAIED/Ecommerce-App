import 'package:ecommerce/core/services/sservices.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/views/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.playfairDisplayTextTheme(),
      ),
      home: const OnBoarding(),
      routes: routes,
    );
  }
}
