import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  MySingleChildScrollView({super.key});

  final containers = List.generate(
    18,
    (index) => Container(
      width: 100,
      height: 100,
      color: Colors.primaries[index],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                // physics: const BouncingScrollPhysics(),
                child: Row(
                  children: containers,
                ),
              ),
            ),
            const Text("Hola"),
            Expanded(
              child: SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(),
                    ),
                    ...containers,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
