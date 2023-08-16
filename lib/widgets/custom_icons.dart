import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.abc,
          size: 100,
          color: Color.fromARGB(255, 12, 115, 199),
        ),
      ),
    );
  }
}
