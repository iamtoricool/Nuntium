import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuntium/Screens/Extras/ProfileScreenItem.dart';

import '../../AppTheme/ThemeColors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors().white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 28, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Profile',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 24,
                          color: ThemeColors().blackPrimary,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 72,
                          width: 72,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/images/avatar.jpg'))),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Eren Turkmen',
                                style: GoogleFonts.sourceSansPro(
                                    fontSize: 18,
                                    color: ThemeColors().blackPrimary,
                                    fontWeight: FontWeight.w600)),
                            Text(
                              'ertuken@gmail.com',
                              style: GoogleFonts.sourceSansPro(
                                  fontSize: 16,
                                  color: ThemeColors().greyPrimary),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const ProfileOptions()
            ],
          ),
        ),
      ),
    );
  }
}
