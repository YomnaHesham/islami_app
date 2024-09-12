import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/home_tabs/bottom_sheets/language_bottom_sheet.dart';
import 'package:islami/home_tabs/bottom_sheets/theme_bottom_sheet.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:islami/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<ThemeProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "language".tr(),
            style: Theme.of(context).textTheme.headlineSmall,
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
                  color: pro.mode == ThemeMode.light
                      ? AppTheme.lightPrimaryColor
                      : AppTheme.goldColor,
                ),
                borderRadius: BorderRadius.circular(16),
                color: Colors.transparent,
              ),
              child: Text(
                context.locale == Locale("en") ? "english".tr() : "arabic".tr(),
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
          SizedBox(
            height: 48,
          ),
          Text(
            "theme".tr(),
            style: Theme.of(context).textTheme.headlineSmall,
            // textDirection: TextDirection.rtl,
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
                  color: pro.mode == ThemeMode.light
                      ? AppTheme.lightPrimaryColor
                      : AppTheme.goldColor,
                ),
                borderRadius: BorderRadius.circular(16),
                color: Colors.transparent,
              ),
              child: Text(
                pro.mode == ThemeMode.light ? "light".tr() : "dark".tr(),
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
