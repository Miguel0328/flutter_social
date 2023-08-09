import 'package:flutter/material.dart';

class MyListViewBuilder extends StatelessWidget {
  const MyListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    const names = ["Nombre 1", "Nombre 2", "Nombre 3"];

    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemCount: names.length,
        itemBuilder: (_, index) => Container(
          height: 100,
          color: Colors.green,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(5),
          child: Text(names[index]),
        ),
        separatorBuilder: (_, int index) {
          return const Divider();
        },
      ),
      // body: ListView.builder(
      //   itemCount: 1000,
      //   itemBuilder: (_, index) => Container(
      //     height: 100,
      //     color: Colors.green,
      //     alignment: Alignment.center,
      //     margin: const EdgeInsets.all(5),
      //     child: Text("$index"),
      //   ),
      // ),
    );
  }
}
