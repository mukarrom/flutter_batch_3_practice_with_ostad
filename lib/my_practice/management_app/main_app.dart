import 'package:flutter/material.dart';
import 'package:practice_with_ostad/my_practice/management_app/screens/deshboard_screen.dart';

class ManagementApp extends StatelessWidget {
  const ManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Management App',
      home: ManagementDashboardScreen(),
    );
  }
}
