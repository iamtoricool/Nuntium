import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:nuntium/Screens/Extras/HomeScreenSlider.dart';
import 'package:nuntium/Screens/Extras/Recommendedforyou.dart';
import 'package:nuntium/Screens/Second%20Half/ArticlePageScreen.dart';
import '../../AppTheme/ThemeColors.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 52),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                height: 168,
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Browse',
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 24,
                          color: ThemeColors().blackPrimary,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 300,
                      child: Text(
                        'Discover things of this world',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 16, color: ThemeColors().greyPrimary),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    AppTextField(
                      textFieldType: TextFieldType.NAME,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(IconlyLight.search),
                          suffixIcon: const Icon(
                            Icons.mic_none_outlined,
                          ),
                          hintText: 'Search',
                          hintStyle: GoogleFonts.sourceSansPro(
                              color: ThemeColors().greyPrimary,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                          enabledBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          filled: true,
                          fillColor: ThemeColors().greyLighter,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),

              // Container(child: CustomTabBar()),
              const SizedBox(
                height: 24,
              ),
              const HomeScreenSlider(),
              // const HomeScreenList(),
              const RecommendedList()
                  .onTap(() => const ArticlePageScreen().launch(context))
            ],
          ),
        ),
      ),
    );
  }
}
