import 'package:flutter/material.dart';
import 'package:practice_with_ostad/rabbil/task_manager_app/style/style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          screenBackground(context),
          Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get Started With',
                  style: heading1Text(colorDarkBlue),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Learn with rabbil hasan',
                  style: heading4Text(colorLightGray),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
