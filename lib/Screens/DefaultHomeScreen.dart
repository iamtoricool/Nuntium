import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:nuntium/Screens/Extras/CustomTabBar.dart';
import 'package:nuntium/Screens/Second%20Half/BookmarksScreen.dart';
import 'package:nuntium/Screens/Second%20Half/Categories.dart';
import 'package:nuntium/Screens/Second%20Half/Homepage.dart';
import 'package:nuntium/Screens/Second%20Half/ProfileScreen.dart';
import '../AppTheme/ThemeColors.dart';

class DefaultHomeScreen extends StatefulWidget {
  const DefaultHomeScreen({super.key});

  @override
  State<DefaultHomeScreen> createState() => _DefaultHomeScreenState();
}

class _DefaultHomeScreenState extends State<DefaultHomeScreen> {
  int currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> navScreenList = [
    const HomepageScreen(),
    const CategoriesScreen(),
    const CustomTabBar(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navScreenList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: ThemeColors().purplePrimary,
          unselectedItemColor: ThemeColors().greyLight,
          currentIndex: currentIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.category),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.bookmark),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconlyLight.profile),
              label: '',
            )
          ]),
    );
  }
}
