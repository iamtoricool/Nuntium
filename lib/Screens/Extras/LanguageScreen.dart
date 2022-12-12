import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../AppTheme/ThemeColors.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

List<String> languages = [
  'English',
  'Turkish',
  'German',
  'Spanish',
];

List<int> selectedLanguage = [];

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.arrow_back,
          color: ThemeColors().greyPrimary,
        ).onTap(() => Navigator.pop(context)),
        elevation: 0,
        title: Text('Language',
            style: GoogleFonts.sourceSansPro(
                fontSize: 16, color: ThemeColors().greyDarker)),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (context, index) => Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              height: 56,
              width: 336,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: selectedLanguage.contains(index)
                      ? ThemeColors().purplePrimary
                      : ThemeColors().greyLighter),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(languages[index],
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 16,
                          color: selectedLanguage.contains(index)
                              ? ThemeColors().white
                              : ThemeColors().greyDarker)),
                  selectedLanguage.contains(index)
                      ? Icon(
                          Icons.done,
                          size: 20,
                          color: ThemeColors().white,
                        )
                      : const Text('')
                ],
              ),
            ).onTap(() {
              selectedLanguage.removeRange(0, selectedLanguage.length);
              selectedLanguage.add(index);
              setState(() {});
            }),
          ],
        ),
      ),
    );
  }
}
