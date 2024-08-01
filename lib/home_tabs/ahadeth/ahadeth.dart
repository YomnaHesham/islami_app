import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/home_tabs/ahadeth/hadeth_details.dart';
import 'package:islami/home_tabs/ahadeth/hadeth_model.dart';

class AhadethTab extends StatefulWidget {
  AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Image.asset("assets/images/hadeth_logo.png"),
        Divider(
          color: AppTheme.lightPrimaryColor,
          thickness: 3,
        ),
        Text(
          "الأحاديث",
          style: Theme.of(context).textTheme.headlineSmall,
          textAlign: TextAlign.center,
        ),
        Divider(
          color: AppTheme.lightPrimaryColor,
          thickness: 3,
        ),
        SizedBox(
          height: 12,
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => InkWell(
              onTap: () => Navigator.of(context).pushNamed(
                HadethDetails.routName,
                arguments: allAhadeth[index],
              ),
              child: Text(
                allAhadeth[index].title,
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
            ),
            itemCount: allAhadeth.length,
            separatorBuilder: (context, index) => SizedBox(
              height: 16,
            ),
          ),
        ),
      ],
    );
  }

  loadHadethFile() async {
    String hadethFile = await rootBundle.loadString("assets/files/ahadeth.txt");

    List<String> ahadeth = hadethFile.split("#");
    for (int i = 0; i < ahadeth.length; i++) {
      String hadethOne = ahadeth[i];

      List<String> hadethLines = hadethOne.trim().split("\n");

      String hadethTitle = hadethLines[0];

      hadethLines.remove(0);

      List<String> hadethContent = hadethLines;

      HadethModel hadethModel =
          HadethModel(content: hadethContent, title: hadethTitle);

      allAhadeth.add(hadethModel);
    }
    setState(() {});
  }
}
