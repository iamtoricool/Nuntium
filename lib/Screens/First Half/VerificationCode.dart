import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pinput/pinput.dart';
import '../../AppTheme/ThemeColors.dart';
import 'CreateNewPassword.dart';
import 'SignIn.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({super.key});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 72),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 88,
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Verification Code ✅',
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 24,
                        color: ThemeColors().blackPrimary,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 300,
                    child: Text(
                      'You need to enter 4-digit code we send to your email adress.',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 16, color: ThemeColors().greyPrimary),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Pinput(
                  defaultPinTheme: PinTheme(
                      textStyle: GoogleFonts.sourceSansPro(
                          fontSize: 16, color: ThemeColors().blackPrimary),
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                          color: ThemeColors().greyLighter,
                          borderRadius: BorderRadius.circular(10))),
                  focusedPinTheme: PinTheme(
                      textStyle: GoogleFonts.sourceSansPro(
                          color: ThemeColors().purplePrimary),
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: ThemeColors().purplePrimary))),
                )),
            const SizedBox(
              height: 16,
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
                    'Confirm',
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 16, color: ThemeColors().white),
                  ),
                ).onTap(() => const CreateNewPasswordScreen().launch(context))),
            const SizedBox(
              height: 380,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn’t receive an email? ",
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 16, color: ThemeColors().blackLighter),
                ),
                Text(
                  'Send again',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 16,
                      color: ThemeColors().blackPrimary,
                      fontWeight: FontWeight.w600),
                ).onTap(() => const SignInScreen().launch(context))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
