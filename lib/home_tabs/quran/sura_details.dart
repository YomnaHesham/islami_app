import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/home_tabs/quran/sura_details_model.dart';

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
    if (verses.isEmpty) {
      loadSuraFiles(model.suraNumber);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/default_bg.png"),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "إسلامي",
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(bottom: 98, left: 32, right: 32, top: 32),
          child: Card(
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
                      style: Theme.of(context).textTheme.titleLarge,
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
                      color: AppTheme.blackColor,
                    )
                  ],
                ),
                Divider(
                  color: AppTheme.lightPrimaryColor,
                  thickness: 1,
                  endIndent: 32,
                  indent: 32,
                ),
                SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Text(
                          "${verses[index]}(${index+1})",
                          style: Theme.of(context).textTheme.titleMedium,
                          textDirection: TextDirection.rtl,
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
