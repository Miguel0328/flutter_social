import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_social/icons/custom_icons.dart';
import 'package:flutter_social/social_ui/widgets/avatar.dart';
import 'package:flutter_social/social_ui/widgets/circle_button.dart';
import 'package:flutter_social/social_ui/widgets/what_is_on_your_mind.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialUI extends StatelessWidget {
  const SocialUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 150,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: SvgPicture.asset(
            "assets/logos/facebook.svg",
            colorFilter: const ColorFilter.mode(
              Colors.blueAccent,
              BlendMode.srcIn,
            ),
            width: 150,
            alignment: Alignment.centerLeft,
          ),
        ),
        actions: const [
          CircleButtom(
            color: Color(0xffBFBFBF),
            iconData: CustomIcons.search,
          ),
          SizedBox(width: 10),
          CircleButtom(
            color: Color(0xffFE7574),
            iconData: CustomIcons.bell,
          ),
          SizedBox(width: 10),
          CircleButtom(
            color: Color(0xff7BBAFF),
            iconData: CustomIcons.userFriends,
            showBadge: true,
          ),
          SizedBox(width: 10),
          CircleButtom(
            color: Color(0xff1C86E4),
            iconData: CustomIcons.messenger,
          ),
          SizedBox(width: 10),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ).copyWith(
          top: 10,
        ),
        children: const [
          WhatIsOnYourMind(),
        ],
      ),
    );
  }
}
