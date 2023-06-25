import 'package:flutter/material.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Counter App',
      home: MyHomePage(),
    );
  }
}

/// Stateful widget
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyHomePageUI();
  }
}

class MyHomePageUI extends State<MyHomePage> {
  int myNum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My counter app'),
      ),
      body: Center(child: Text(myNum.toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myNum++;
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
