
import 'package:ecommerce/core/constant/routes_name.dart';
import 'package:ecommerce/views/screens/auth/login.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = 
{
  Approutes.login : (context)=>const Login()
};
