import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../AppTheme/ThemeColors.dart';

class BookMarkList extends StatefulWidget {
  const BookMarkList({super.key});

  @override
  State<BookMarkList> createState() => _BookMarkListState();
}

class _BookMarkListState extends State<BookMarkList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                  Text('A Simple Trick For Creating Color Palettes Quickly',
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
    );
  }
}
