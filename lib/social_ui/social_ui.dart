import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_social/icons/custom_icons.dart';
import 'package:flutter_social/social_ui/widgets/circle_button.dart';
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
        leading: SvgPicture.asset(
          "assets/logos/facebook.svg",
          colorFilter: const ColorFilter.mode(
            Colors.blueAccent,
            BlendMode.srcIn,
          ),
          width: 150,
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
          ),
          SizedBox(width: 10),
          CircleButtom(
            color: Color(0xff1C86E4),
            iconData: CustomIcons.messenger,
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
