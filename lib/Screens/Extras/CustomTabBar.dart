import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:nuntium/AppTheme/ThemeColors.dart';
import 'package:nuntium/Screens/Extras/FavouriteTopics.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with TickerProviderStateMixin {
  List<int> selectedIndex = [0];
  @override
  Widget build(BuildContext context) {
    TabController _tabController =
        TabController(length: favTopic.length, vsync: this);
    return Center(
        child: HorizontalList(
      itemCount: favTopic.length,
      itemBuilder: (context, index) => Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        alignment: Alignment.center,
        height: 32,
        // width: 81,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: selectedIndex.contains(index)
                ? ThemeColors().purplePrimary
                : ThemeColors().greyLighter),
        child: Text('${favTopic[index]}'),
      ).onTap(() {
        if (selectedIndex.isNotEmpty) {
          if (selectedIndex.contains(index)) {
            selectedIndex.remove(index);
          } else {
            if (selectedIndex.isEmpty) {
              selectedIndex.add(index);
            } else {
              selectedIndex.removeAt(0);
              selectedIndex.add(index);
            }
          }
        } else {
          selectedIndex.add(0);
        }
        setState(() {});
      }),
    ));
  }
}
