import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nuntium/AppTheme/ThemeColors.dart';
import 'package:nuntium/Screens/OnBoarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const OnBoardingScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors().purplePrimary,
      body: Center(
        child: Container(
          height: 96,
          width: 120,
          decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/images/logo.png'))),
        ),
      ),
    );
  }
}
