import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuntium/AppTheme/ThemeColors.dart';

class RecommendedList extends StatefulWidget {
  const RecommendedList({super.key});

  @override
  State<RecommendedList> createState() => _RecommendedListState();
}

class _RecommendedListState extends State<RecommendedList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recommended for you',
                style: GoogleFonts.sourceSansPro(
                    color: ThemeColors().blackPrimary,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              const Text('See All'),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Container(
                height: 96,
                width: double.maxFinite,
                child: Row(children: [
                  Container(
                    height: 96,
                    width: 96,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/london.jpg'))),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'UI/UX Design',
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 14, color: ThemeColors().greyPrimary),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                            'A Simple Trick For Creating Color Palettes Quickly',
                            style: GoogleFonts.sourceSansPro(
                                wordSpacing: 0,
                                letterSpacing: 0,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: ThemeColors().blackPrimary))
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
