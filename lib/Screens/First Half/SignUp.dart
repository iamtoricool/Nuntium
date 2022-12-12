import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../AppTheme/ThemeColors.dart';
import 'SelectYourFavouriteTopics.dart';
import 'SignIn.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<SignUpScreen> {
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
                    'Welcome to Nuntium 👋',
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
                      'Hello, I guess you are new around here. You can start using the application after sign up.',
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
              child: Column(
                children: [
                  AppTextField(
                    textFieldType: TextFieldType.NAME,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.abc),
                        hintText: 'First Name',
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
                  const SizedBox(
                    height: 16,
                  ),
                  AppTextField(
                    textFieldType: TextFieldType.NAME,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person_outline_rounded),
                        hintText: 'Last Name',
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
                  const SizedBox(
                    height: 16,
                  ),
                  AppTextField(
                    textFieldType: TextFieldType.EMAIL,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person_outline_rounded),
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
                  const SizedBox(
                    height: 16,
                  ),
                  AppTextField(
                    textFieldType: TextFieldType.PASSWORD,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outline_rounded),
                        hintText: 'Password',
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
                  const SizedBox(
                    height: 16,
                  ),
                  AppTextField(
                    textFieldType: TextFieldType.PASSWORD,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outline_rounded),
                        hintText: 'Confirm Password',
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
                ],
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
                    'Sign Up',
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 16, color: ThemeColors().white),
                  ),
                ).onTap(() => const SelectFavouriteTopics().launch(context))),
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 16, color: ThemeColors().blackLighter),
                ),
                Text(
                  'Sign In',
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
