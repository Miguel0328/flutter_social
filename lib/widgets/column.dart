import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: Colors.black,
      ),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(
          vertical: 55,
        ),
        child: Center(
          child: Container(
            color: Colors.green,
            child: Column(
              children: [
                const Text("Hola"),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Mundo",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // const Spacer(),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 100,
                    margin: const EdgeInsets.only(
                      top: 20,
                    ),
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    margin: const EdgeInsets.only(
                      top: 20,
                    ),
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
