import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  18,
                  (index) => Container(
                    width: 100,
                    height: 100,
                    color: Colors.primaries[index],
                    alignment: Alignment.center,
                    child: Text("$index"),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                children: [
                  const TextField(),
                  const Text("Hi"),
                  Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 600,
                    color: Colors.red,
                  ),
                  Container(
                    height: 600,
                    color: Colors.green,
                  ),
                  Container(
                    height: 600,
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
