import 'package:flutter/material.dart';

class MyImages extends StatelessWidget {
  const MyImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/avatar.png",
          width: 200,
          height: 400,
          // fit: BoxFit.fill,
        ),
      ),
    );
  }
}
