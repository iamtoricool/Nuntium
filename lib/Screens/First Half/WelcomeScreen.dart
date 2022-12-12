import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:nuntium/AppTheme/ThemeColors.dart';

import 'SignIn.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 154, bottom: 75),
          height: 272,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/3d-illustration.png'))),
        ),
        Container(
          child: Column(
            children: [
              Text(
                'Nuntium',
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    color: ThemeColors().blackPrimary,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                alignment: Alignment.topCenter,
                height: 48,
                width: 216,
                child: Text(
                  'All news in one place, be the first to know last news',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 16, color: ThemeColors().greyPrimary),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Container(
              alignment: Alignment.center,
              height: 56,
              width: 336,
              decoration: BoxDecoration(
                  color: ThemeColors().purplePrimary,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                'Next',
                style: GoogleFonts.sourceSansPro(
                    fontSize: 16, color: ThemeColors().white),
              ),
            ).onTap(() async {
              SharedPreferences sharedPreferences =
                  await SharedPreferences.getInstance();
              final check = sharedPreferences.setBool('checking', false);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const SignInScreen()),
                  (route) => false);
            }))
      ],
    ));
  }
}
