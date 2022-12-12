import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuntium/AppTheme/ThemeColors.dart';

import '../../Auth/GetResources/Category List/category_list.dart';

List<String> favTopic = [
  "🏈   Sports",
  "⚖️   Politics",
  "🌞   Life",
  "🎮   Gaming",
  "🐻   Animals",
  "🌴   Nature",
  "🍔   Food",
  "🎨   Art",
  "📜   History",
  "👗   Fashion",
  "👗   Fashion",
  "😷   Covid-19",
  "⚔️   Middle East"
];

class FavouriteTopics extends StatefulWidget {
  const FavouriteTopics({super.key});

  @override
  State<FavouriteTopics> createState() => _FavouriteTopicsState();
}

class _FavouriteTopicsState extends State<FavouriteTopics> {
  List<int> selectedTopic = [];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 16 / 9),
        itemCount: favTopic.length,
        itemBuilder: ((context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  if (selectedTopic.contains(index)) {
                    selectedTopic.remove(index);
                  } else {
                    selectedTopic.add(index);
                  }
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 72,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: selectedTopic.contains(index)
                        ? ThemeColors().purplePrimary
                        : ThemeColors().greyLighter),
                child: Text(
                  favTopic[index],
                  style: GoogleFonts.sourceSansPro(
                      fontSize: 16,
                      color: selectedTopic.contains(index)
                          ? ThemeColors().white
                          : ThemeColors().greyDarker,
                      decoration: TextDecoration.none),
                ),
              ),
            )));
  }
}
