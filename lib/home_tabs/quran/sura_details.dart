import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/home_tabs/quran/sura_details_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:islami/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routName = "suraDetails";

  SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as SuraDetailsModel;
    var pro = Provider.of<ThemeProvider>(context);

    if (verses.isEmpty) {
      loadSuraFiles(model.suraNumber);
    }
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
          margin: EdgeInsets.only(bottom: 98, left: 32, right: 32, top: 32),
          child: Card(
            color: pro.mode == ThemeMode.light
                ? AppTheme.whiteColor
                : AppTheme.darkPrimaryColor,
            child: Column(
              children: [
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "سورة ${model.suraName}",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: pro.mode == ThemeMode.light
                                ? AppTheme.whiteColor
                                : AppTheme.goldColor,
                          ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_circle,
                        size: 24,
                      ),
                      color:  pro.mode == ThemeMode.light
                          ?  AppTheme.blackColor
                          : AppTheme.goldColor,
                    )
                  ],
                ),
                Divider(
                  color:  pro.mode == ThemeMode.light
                      ? AppTheme.lightPrimaryColor
                      : AppTheme.goldColor,
                  thickness: 1,
                  endIndent: 32,
                  indent: 32,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Text(
                          "${verses[index]}(${index + 1})",
                          style: Theme.of(context).textTheme.titleMedium,
                          // textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                        );
                      },
                      itemCount: verses.length,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  loadSuraFiles(int index) async {
    String suraFile =
        await rootBundle.loadString("assets/files/${index + 1}.txt");

    List<String> suraLine = suraFile.split("\n");

    verses = suraLine;
    setState(() {});
  }
}
