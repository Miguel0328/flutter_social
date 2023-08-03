import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(),
      child: Container(
        color: Colors.white,
        child: Center(
          child: Container(
            color: Colors.grey,
            width: 400,
            height: 400,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Positioned(
                  top: 10,
                  // left: 10,
                  right: 10,
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.amber,
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                ),
                const Positioned(
                  bottom: 0,
                  child: Text("Hola"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
