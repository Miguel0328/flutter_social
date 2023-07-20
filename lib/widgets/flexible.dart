import 'package:flutter/material.dart';

class MyFlexible extends StatelessWidget {
  const MyFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTextStyle(
      style: TextStyle(color: Colors.black),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: FlutterLogo(
              size: 100,
            ),
          ),
          Flexible(
            flex: 2,
            child: FlutterLogo(
              size: 200,
            ),
          ),
          Flexible(
            child: FlutterLogo(
              size: 300,
            ),
          ),
        ],
      ),
      // child: Container(
      //   color: Colors.white,
      //   alignment: Alignment.centerLeft,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Container(
      //         width: 50,
      //         height: 50,
      //         color: Colors.red,
      //       ),
      //       const Flexible(
      //         child: Text(
      //             "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
      //       ),
      //       Container(
      //         width: 50,
      //         height: 50,
      //         color: Colors.red,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
