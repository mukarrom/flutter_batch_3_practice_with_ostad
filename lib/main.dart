import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          children: [
            Container(
              color: Colors.green,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.green,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.green,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.green,
              width: 50,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
