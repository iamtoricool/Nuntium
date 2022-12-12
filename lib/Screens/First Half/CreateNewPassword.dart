import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../AppTheme/ThemeColors.dart';
import 'SignIn.dart';
import 'VerificationCode.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
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
                    'Create New Password 🔒',
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
                      'You can create a new password, please dont forget it too.',
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
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) => value == null || value.isEmpty
                        ? 'Please enter new password'
                        : null,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outline),
                        hintText: 'New Password',
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
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) => value == null || value.isEmpty
                        ? 'Please enter new password'
                        : null,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outline),
                        hintText: 'Repeat New Password',
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
                    'Confirm',
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 16, color: ThemeColors().white),
                  ),
                ).onTap(() => const VerificationCodeScreen().launch(context))),
            const SizedBox(
              height: 300,
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
