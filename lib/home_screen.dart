import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/app_theme.dart';

import 'package:islami/home_tabs/ahadeth.dart';
import 'package:islami/home_tabs/quran.dart';
import 'package:islami/home_tabs/radio.dart';
import 'package:islami/home_tabs/sebha.dart';
import 'package:islami/home_tabs/settings.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = "home";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    AhadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/default_bg.png"),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "إسلامى",
          ),
        ),
        body: Container(
          child: tabs[selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/icon_quran.png"),
              ),
              label: "Quran",
              backgroundColor: AppTheme.lightPrimaryColor,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/icon_hadeth.png"),
              ),
              label: "Hadeth",
              backgroundColor: AppTheme.lightPrimaryColor,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/icon_sebha.png"),
              ),
              label: "Sebha",
              backgroundColor: AppTheme.lightPrimaryColor,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/icon_radio.png"),
              ),
              label: "Radio",
              backgroundColor: AppTheme.lightPrimaryColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
              backgroundColor: AppTheme.lightPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
