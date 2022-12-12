import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuntium/AppTheme/ThemeColors.dart';
import 'package:nuntium/Auth/SignInAuth/sign_in_auth.dart';
import 'package:nuntium/Screens/Extras/LanguageScreen.dart';
import 'package:nuntium/Screens/First%20Half/SignIn.dart';

class ProfileOptions extends StatefulWidget {
  const ProfileOptions({super.key});

  @override
  State<ProfileOptions> createState() => _ProfileOptionsState();
}

class _ProfileOptionsState extends State<ProfileOptions> {
  bool swithState = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          height: 56,
          width: 336,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ThemeColors().greyLighter),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Notifications',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 16, color: ThemeColors().greyDarker)),
              CupertinoSwitch(
                activeColor: ThemeColors().purplePrimary,
                thumbColor: ThemeColors().white,
                trackColor: Colors.black12,
                value: swithState,
                onChanged: (value) => setState(() => swithState = value),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          padding: const EdgeInsets.all(16),
          height: 56,
          width: 336,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ThemeColors().greyLighter),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Language',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 16, color: ThemeColors().greyDarker)),
              const Icon(
                Icons.arrow_forward_ios,
                size: 14,
              )
            ],
          ),
        ).onTap(() => const LanguageScreen().launch(context)),
        const SizedBox(
          height: 16,
        ),
        Container(
          padding: const EdgeInsets.all(16),
          height: 56,
          width: 336,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ThemeColors().greyLighter),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Change Password',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 16, color: ThemeColors().greyDarker)),
              const Icon(
                Icons.arrow_forward_ios,
                size: 14,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Container(
          padding: const EdgeInsets.all(16),
          height: 56,
          width: 336,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ThemeColors().greyLighter),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Privacy',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 16, color: ThemeColors().greyDarker)),
              const Icon(
                Icons.arrow_forward_ios,
                size: 14,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          padding: const EdgeInsets.all(16),
          height: 56,
          width: 336,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ThemeColors().greyLighter),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Terms & Conditions',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 16, color: ThemeColors().greyDarker)),
              const Icon(
                Icons.arrow_forward_ios,
                size: 14,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Container(
          padding: const EdgeInsets.all(16),
          height: 56,
          width: 336,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ThemeColors().greyLighter),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Sign Out',
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 16, color: ThemeColors().greyDarker)),
              const Icon(
                Icons.exit_to_app,
                size: 20,
              )
            ],
          ),
        ).onTap(() async {
          var response = await AppCallSignIn().signOut();
          if (response) {
            await SignInScreen().launch(context, isNewTask: true);
            toast('Logged Out Successfully');
          } else {
            toast('Something went wrong');
          }
        }),
      ],
    );
  }
}
