import 'package:flutter/material.dart';
import 'package:practice_with_ostad/rabbil/task_manager_app/screen/onboarding/email_varification_screen.dart';
import 'package:practice_with_ostad/rabbil/task_manager_app/screen/onboarding/login_screen.dart';
import 'package:practice_with_ostad/rabbil/task_manager_app/screen/onboarding/pin_verification_screen.dart';
import 'package:practice_with_ostad/rabbil/task_manager_app/screen/onboarding/regitration_screen.dart';
import 'package:practice_with_ostad/rabbil/task_manager_app/screen/onboarding/set_password_screen.dart';
import 'package:practice_with_ostad/rabbil/task_manager_app/screen/onboarding/splash_screen.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Manager',
      initialRoute: '/login',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/registration': (context) => const RegistrationScreen(),
        '/emailVerification': (context) => const EmailVerificationScreen(),
        '/pinVerification': (context) => const PinVerificationScreen(),
        '/setPassword': (context) => const SetPasswordScreen(),
      },
    );
  }
}
