import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/home_tabs/ahadeth/hadeth_details.dart';

class AhadethTab extends StatelessWidget {
  int hadethNumber = 1;

  AhadethTab({super.key});

  @override
  Widget build(BuildContext context) {
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
              ),
              child: Text(
                "الحديث رقم $hadethNumber",
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
            ),
            itemCount: 50,
            separatorBuilder: (context, index) => SizedBox(
              height: 16,
            ),
          ),
        ),
      ],
    );
  }
}
