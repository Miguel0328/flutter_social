import 'package:flutter/material.dart';
import 'package:flutter_social/social_ui/social_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SocialUI(),
    );
  }
}
