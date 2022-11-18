import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:nuntium/Screens/VerificationCode.dart';

import '../AppTheme/ThemeColors.dart';
import 'SignIn.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
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
                    'Forgot Password 🤔',
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
                      'We need your email adress so we can send you the password reset code.',
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
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: (value) => value == null || value.isEmpty
                    ? 'Please enter your email'
                    : null,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email_outlined),
                    hintText: 'Email Address',
                    hintStyle: GoogleFonts.sourceSansPro(
                        color: ThemeColors().greyPrimary,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    filled: true,
                    fillColor: ThemeColors().greyLighter,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
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
                    'Next',
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 16, color: ThemeColors().white),
                  ),
                ).onTap(() => const VerificationCodeScreen().launch(context))),
            const SizedBox(
              height: 380,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Remember the password? ",
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 16, color: ThemeColors().blackLighter),
                ),
                Text(
                  'Try again',
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
