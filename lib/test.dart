import 'package:ecommerce/core/functions/check_internet.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {

  var res;

  initalDate()async
  {
    res=await ckeckInternet();
    print(res);
  }

  @override
  void initState()
  {
    initalDate();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(child:Text("") ,),
    );
  }
}