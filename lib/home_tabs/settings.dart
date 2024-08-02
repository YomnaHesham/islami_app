import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/home_tabs/bottom_sheets/language_bottom_sheet.dart';
import 'package:islami/home_tabs/bottom_sheets/theme_bottom_sheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "اللغة",
            style: Theme.of(context).textTheme.headlineSmall,
            textDirection: TextDirection.rtl,
          ),
          SizedBox(
            height: 16,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                isDismissible: true,
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return LanguageBottomSheet();
                },
              );
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: AppTheme.lightPrimaryColor,
                ),
                borderRadius: BorderRadius.circular(16),
                color: Colors.transparent,
              ),
              child: Text(
                "عربي",
                textDirection: TextDirection.rtl,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
          SizedBox(
            height: 48,
          ),
          Text(
            "النمط",
            style: Theme.of(context).textTheme.headlineSmall,
            textDirection: TextDirection.rtl,
          ),
          SizedBox(
            height: 16,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                isDismissible: true,
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return ThemeBottomSheet();
                },
              );
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: AppTheme.lightPrimaryColor,
                ),
                borderRadius: BorderRadius.circular(16),
                color: Colors.transparent,
              ),
              child: Text(
                "نهاري",
                textDirection: TextDirection.rtl,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
