import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuntium/AppTheme/ThemeColors.dart';

class HomeScreenList extends StatefulWidget {
  const HomeScreenList({super.key});

  @override
  State<HomeScreenList> createState() => _HomeScreenListState();
}

class _HomeScreenListState extends State<HomeScreenList> {
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
              padding: const EdgeInsets.only(bottom: 24),
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Container(
                  height: 272,
                  width: 336,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(14),
                        bottomRight: Radius.circular(14)),
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.3),
                            BlendMode.luminosity),
                        fit: BoxFit.cover,
                        image: const AssetImage('assets/images/newyork.jpg')),
                  ),
                ),
                Container(
                  height: 272 / 3.5,
                  width: 336,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            flex: 4,
                            child: Text(
                              'A Simple Trick For Creating Color Palettes Quickly',
                              style: GoogleFonts.sourceSansPro(
                                  fontSize: 16,
                                  color: ThemeColors().blackPrimary,
                                  fontWeight: FontWeight.w700),
                            )),
                        const Expanded(
                            flex: 1,
                            child: Icon(Icons.bookmark_border_outlined))
                      ],
                    ),
                  ),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
