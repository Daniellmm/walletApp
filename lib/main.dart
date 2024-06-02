import 'package:flutter/material.dart';
import 'package:new_project/controllers/bottom_nav.dart';
import 'package:new_project/pages/Auth%20pages/signin.dart';
import 'package:new_project/pages/splash/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: OnboardingScreen()
    );
  }
}

