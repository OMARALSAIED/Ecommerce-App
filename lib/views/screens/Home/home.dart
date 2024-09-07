import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Center(
            child: Text(
              "Home Page ",
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}
