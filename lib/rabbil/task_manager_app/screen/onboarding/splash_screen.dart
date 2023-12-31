import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../style/style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          screenBackground(context),
          Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: SvgPicture.asset(
                'assets/images/logo.svg',
                alignment: Alignment.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
