import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:islami/home_tabs/ahadeth/ahadeth.dart';
import 'package:islami/home_tabs/quran/quran.dart';
import 'package:islami/home_tabs/radio.dart';
import 'package:islami/home_tabs/sebha.dart';
import 'package:islami/home_tabs/settings.dart';
import 'package:islami/providers/theme_provider.dart';
import 'package:provider/provider.dart';

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
    var pro = Provider.of<ThemeProvider>(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(pro.mode == ThemeMode.light
              ? "assets/images/default_bg.png"
              : "assets/images/dark_bg.png"),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "islami".tr(),
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
              label: "quran".tr(),
              backgroundColor: pro.mode == ThemeMode.light
                  ? AppTheme.lightPrimaryColor
                  : AppTheme.darkPrimaryColor,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/icon_hadeth.png"),
              ),
              label: "ahadeth".tr(),
              backgroundColor: pro.mode == ThemeMode.light
                  ? AppTheme.lightPrimaryColor
                  : AppTheme.darkPrimaryColor,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/icon_sebha.png"),
              ),
              label: "sebha".tr(),
              backgroundColor: pro.mode == ThemeMode.light
                  ? AppTheme.lightPrimaryColor
                  : AppTheme.darkPrimaryColor,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/icon_radio.png"),
              ),
              label: "radio".tr(),
              backgroundColor: pro.mode == ThemeMode.light
                  ? AppTheme.lightPrimaryColor
                  : AppTheme.darkPrimaryColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "settings".tr(),
              backgroundColor: pro.mode == ThemeMode.light
                  ? AppTheme.lightPrimaryColor
                  : AppTheme.darkPrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
