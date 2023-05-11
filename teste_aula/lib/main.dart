import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _makeSquare(600, 100, Colors.red),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _makeSquare(100, 100, Colors.green),
            _makeSquare(100, 100, Colors.blueGrey),
          ],
        ),
        _makeSquare(600, 100, Colors.yellow),
      ],
    ));
  }
}

class MySquare extends StatelessWidget {
  final Color color;
  final double height;
  final double width;

  const MySquare({
    super.key,
    required this.height,
    required this.width,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return const Container(
      width: w,
      height: h,
      color: c,
      child: const Text('exemplo'),
    );
  }
}
