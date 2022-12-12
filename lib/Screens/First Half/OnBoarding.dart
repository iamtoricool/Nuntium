import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuntium/AppTheme/ThemeColors.dart';
import 'package:nuntium/Screens/Extras/Sliders.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'WelcomeScreen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 79,
              ),
              child: Column(
                children: [
                  const WelcomeSlider(),
                  const SizedBox(
                    height: 34,
                  ),
                  Text(
                    'First to know',
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: ThemeColors().blackPrimary),
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
                  const SizedBox(
                    height: 64,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20),
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
                      ).onTap(() => const WelcomeScreen().launch(context)))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
