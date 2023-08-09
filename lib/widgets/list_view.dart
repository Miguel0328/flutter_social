import 'package:flutter/material.dart';
import 'package:flutter_social/widgets/list_view_builder.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            IconButton(
              onPressed: () {
                final route = MaterialPageRoute(builder: (_) {
                  return const MyListViewBuilder();
                });
                Navigator.push(context, route);
              },
              icon: const Icon(Icons.login),
            ),
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
            ListView(
              shrinkWrap: true,
              children: List.generate(
                5,
                (index) => Container(
                  margin: const EdgeInsets.all(5),
                  color: Colors.blue,
                  height: 50,
                ),
              ),
            ),
            Container(
              color: Colors.red,
              height: 150,
            ),
            Container(
              color: Colors.green,
              height: 450,
            ),
          ],
        ),
      ),
    );
  }
}
