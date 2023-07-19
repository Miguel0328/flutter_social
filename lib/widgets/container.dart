import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.centerLeft,
      child: DefaultTextStyle(
        style: const TextStyle(),
        child: Container(
          width: 200,
          height: 200,
          margin: const EdgeInsets.only(left: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            // shape: BoxShape.circle,
            gradient: const RadialGradient(
              colors: [
                Colors.green,
                Colors.yellow,
              ],
              stops: [
                .65,
                1,
              ],
            ),
            // gradient: const LinearGradient(
            //   colors: [
            //     Colors.blue,
            //     Colors.purple,
            //     Colors.red,
            //   ],
            //   stops: [
            //     .4,
            //     .8,
            //     1,
            //   ],
            //   begin: Alignment.topLeft,
            //   end: Alignment.bottomCenter,
            // ),
            boxShadow: [
              BoxShadow(
                color: Colors.green.withOpacity(
                  .50,
                ),
                blurRadius: 20,
                offset: const Offset(10, 20),
              ),
              BoxShadow(
                color: Colors.red.withOpacity(
                  .50,
                ),
                blurRadius: 10,
              ),
            ],
            // borderRadius: BorderRadius.only(
            //   topLeft: Radius.circular(30),
            //   bottomRight: Radius.circular(10),
            //   topRight: Radius.elliptical(50, 20),
            // ),
          ),
          padding: const EdgeInsets.all(10),
          child: const Text(
            "Flutter container",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
