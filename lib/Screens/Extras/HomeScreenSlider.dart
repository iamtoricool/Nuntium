import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:nuntium/AppTheme/ThemeColors.dart';

class HomeScreenSlider extends StatefulWidget {
  const HomeScreenSlider({super.key});

  @override
  State<HomeScreenSlider> createState() => _HomeScreenSliderState();
}

List<String> networkImage = [
  'https://images.unsplash.com/photo-1519042436644-24f7355f7fdb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1920&q=1080',
  "https://images.unsplash.com/photo-1529253355930-ddbe423a2ac7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1920&q=1080"
];

class _HomeScreenSliderState extends State<HomeScreenSlider> {
  @override
  Widget build(BuildContext context) {
    return HorizontalList(
        physics: const BouncingScrollPhysics(),
        itemCount: networkImage.length,
        itemBuilder: ((context, index) => Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Container(
                height: 256,
                width: 256,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(networkImage[index]))),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xff262626).withOpacity(0.5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 24, top: 24),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.bookmark_border_outlined,
                            color: ThemeColors().white,
                            size: 30,
                          ),
                        ),
                      ),
                      const SizedBox(height: 110),
                      Padding(
                        padding: const EdgeInsets.only(left: 24, bottom: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'POLITICS',
                              style: GoogleFonts.sourceSansPro(
                                  fontSize: 12,
                                  color: ThemeColors().white,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'The latest situation in the presidential election',
                              style: GoogleFonts.sourceSansPro(
                                  fontSize: 16,
                                  color: ThemeColors().white,
                                  fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )));
  }
}
