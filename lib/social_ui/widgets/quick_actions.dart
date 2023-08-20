import 'package:flutter/material.dart';
import 'package:flutter_social/social_ui/widgets/circle_button.dart';

import '../../icons/custom_icons.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        QuickButton(
          color: Colors.red,
          iconData: CustomIcons.photos,
        ),
      ],
    );
  }
}

class QuickButton extends StatelessWidget {
  final IconData iconData;
  final Color color;

  const QuickButton({
    super.key,
    required this.iconData,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 25,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffECF8E9),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          CircleButton(
            color: Color(0xffAEE2A4),
            iconData: iconData,
          ),
          // SizedBox(
          // const   width: 15,
          // ),
          Text(
            "Gallery",
            style: TextStyle(color: color),
          )
        ],
      ),
    );
  }
}
