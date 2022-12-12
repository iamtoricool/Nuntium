import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:nuntium/AppTheme/ThemeColors.dart';
import 'package:nuntium/Screens/DefaultHomeScreen.dart';
import 'package:nuntium/Screens/First%20Half/SignIn.dart';

import 'OnBoarding.dart';

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
      () async {
        SharedPreferences sharedPreferences =
            await SharedPreferences.getInstance();
        var login = sharedPreferences.getString('token');
        final check = sharedPreferences.getBool('checking') ?? true;
        check
            ? Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (_) => const OnBoardingScreen()))
            : login.isEmptyOrNull
                ? Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) => const SignInScreen()))
                : Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const DefaultHomeScreen()));
      },
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
