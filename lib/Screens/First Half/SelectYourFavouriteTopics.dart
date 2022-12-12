import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuntium/Screens/Extras/FavouriteTopics.dart';

import '../../AppTheme/ThemeColors.dart';

class SelectFavouriteTopics extends StatefulWidget {
  const SelectFavouriteTopics({super.key});

  @override
  State<SelectFavouriteTopics> createState() => _SelectFavouriteTopicsState();
}

class _SelectFavouriteTopicsState extends State<SelectFavouriteTopics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 72,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 88,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select your favorite topics',
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
                      'Select some of your favorite topics to let us suggest better news for you.',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 16, color: ThemeColors().greyPrimary),
                    ),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height / 1.5,
              width: double.maxFinite,
              child: const FavouriteTopics(),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
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
            )
          ],
        ),
      ),
    ));
  }
}
