import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../AppTheme/ThemeColors.dart';
import 'SignIn.dart';

class SelectYourFavouriteTopicsScreen extends StatefulWidget {
  const SelectYourFavouriteTopicsScreen({super.key});

  @override
  State<SelectYourFavouriteTopicsScreen> createState() =>
      _SelectYourFavouriteTopicsScreenState();
}

class _SelectYourFavouriteTopicsScreenState
    extends State<SelectYourFavouriteTopicsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Flexible(
      fit: FlexFit.tight,
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
          // FavouriteTopics(),
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
    ));
  }
}
