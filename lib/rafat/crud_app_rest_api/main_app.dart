import 'package:flutter/material.dart';

import 'home_screen.dart';

class CrudRestApiWithRafat extends StatelessWidget {
  const CrudRestApiWithRafat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
