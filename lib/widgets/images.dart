import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyImages extends StatelessWidget {
  const MyImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "assets/images/avatar.png",
              width: 200,
              height: 400,
              // fit: BoxFit.fill,
            ),
            Image.network(
              "https://blog.back4app.com/wp-content/uploads/2020/09/flutter-backend.png",
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
            CachedNetworkImage(
              imageUrl:
                  "https://blog.back4app.com/wp-content/uploads/2020/09/flutter-backend.png",
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ],
        ),
      ),
    );
  }
}
