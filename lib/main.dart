import 'package:flutter/material.dart';
import 'package:learning/gradient_container.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  // BuildContext added as parameter
  Widget build(context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: GradientContainer(
              'Hello World!!', [Colors.teal, Color.fromARGB(255, 12, 14, 13)])),
    );
  }
}
