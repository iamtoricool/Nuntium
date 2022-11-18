import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:nuntium/AppTheme/ThemeColors.dart';
import 'package:nuntium/Screens/ForgotPassword.dart';
import 'package:nuntium/Screens/SelectYourFavouriteTopics.dart';
import 'package:nuntium/Screens/SignUp.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 72,
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back 👋',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 24,
                          color: ThemeColors().blackPrimary,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'I am happy to see you again. You can continue where you left off by logging in',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 16, color: ThemeColors().greyPrimary),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  child: Column(
                    children: [
                      Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) =>
                                    value == null || value.isEmpty
                                        ? 'Please enter your email'
                                        : null,
                                decoration: InputDecoration(
                                    prefixIcon:
                                        const Icon(Icons.email_outlined),
                                    hintText: 'Email Address',
                                    hintStyle: GoogleFonts.sourceSansPro(
                                        color: ThemeColors().greyPrimary,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent)),
                                    filled: true,
                                    fillColor: ThemeColors().greyLighter,
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.values[0],
                                validator: (value) =>
                                    value == null || value.isEmpty
                                        ? 'Please enter your password'
                                        : null,
                                decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.lock_outline),
                                    hintText: 'Password',
                                    hintStyle: GoogleFonts.sourceSansPro(
                                        color: ThemeColors().greyPrimary,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent)),
                                    filled: true,
                                    fillColor: ThemeColors().greyLighter,
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'Forgot Password?',
                                    style: GoogleFonts.sourceSansPro(
                                        color: ThemeColors().greyPrimary,
                                        fontSize: 16),
                                  ).onTap(() => const ForgotPasswordScreen()
                                      .launch(context))),
                            ],
                          )),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 56,
                        width: 336,
                        decoration: BoxDecoration(
                            color: ThemeColors().purplePrimary,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Sign In',
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 16, color: ThemeColors().white),
                        ),
                      ).onTap(() => const SelectYourFavouriteTopicsScreen()
                          .launch(context)),
                      const SizedBox(
                        height: 48,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              'or',
                              style: GoogleFonts.sourceSansPro(
                                  fontSize: 16,
                                  color: ThemeColors().greyPrimary),
                            ),
                            const SizedBox(
                              height: 48,
                            ),

                            //Sign In with Google Button
                            Container(
                              padding: const EdgeInsets.all(16),
                              height: 56,
                              width: 336,
                              decoration: BoxDecoration(
                                  color: ThemeColors().white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: ThemeColors().greyLighter,
                                      width: 2)),
                              child: Row(
                                children: [
                                  const Image(
                                      height: 24,
                                      width: 24,
                                      image: AssetImage(
                                        'assets/images/google-logo.png',
                                      )),
                                  const SizedBox(
                                    width: 52,
                                  ),
                                  Text(
                                    'Sign In with Google',
                                    style: GoogleFonts.sourceSansPro(
                                        fontSize: 16,
                                        color: ThemeColors().greyDarker),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),

                            //Sign In with Facebook Button
                            Container(
                              padding: const EdgeInsets.all(16),
                              height: 56,
                              width: 336,
                              decoration: BoxDecoration(
                                  color: ThemeColors().white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: ThemeColors().greyLighter,
                                      width: 2)),
                              child: Row(
                                children: [
                                  const Image(
                                      height: 24,
                                      width: 24,
                                      image: AssetImage(
                                        'assets/images/facebook-logo.png',
                                      )),
                                  const SizedBox(
                                    width: 52,
                                  ),
                                  Text(
                                    'Sign In with Facebook',
                                    style: GoogleFonts.sourceSansPro(
                                        fontSize: 16,
                                        color: ThemeColors().greyDarker),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't have an account? ",
                                  style: GoogleFonts.sourceSansPro(
                                      fontSize: 16,
                                      color: ThemeColors().blackLighter),
                                ),
                                Text(
                                  'Sign Up',
                                  style: GoogleFonts.sourceSansPro(
                                      fontSize: 16,
                                      color: ThemeColors().blackPrimary,
                                      fontWeight: FontWeight.w600),
                                ).onTap(
                                    () => const SignUpScreen().launch(context))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
