import 'package:flutter/material.dart';

class CircleButtom extends StatelessWidget {
  final Color color;
  final IconData iconData;

  const CircleButtom({super.key, required this.color, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Icon(
        iconData,
        color: Colors.white,
        size: 16,
      ),
    );
  }
}
