import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:islami/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<ThemeProvider>(context);

    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
        color: pro.mode == ThemeMode.light
            ? AppTheme.whiteColor
            : AppTheme.darkPrimaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                context.setLocale(Locale("ar"));
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("arabic".tr(),
                      style: context.locale == Locale("ar")
                          ? Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: pro.mode == ThemeMode.light
                                    ? AppTheme.lightPrimaryColor
                                    : AppTheme.goldColor,
                              )
                          : Theme.of(context).textTheme.headlineSmall),
                  context.locale == Locale("ar")
                      ? Icon(
                          Icons.done,
                          size: 30,
                          color: pro.mode == ThemeMode.light
                              ? AppTheme.lightPrimaryColor
                              : AppTheme.goldColor,
                        )
                      : SizedBox(),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () {
                context.setLocale(Locale("en"));
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("english".tr(),
                      style: context.locale == Locale("en")
                          ? Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: pro.mode == ThemeMode.light
                                    ? AppTheme.lightPrimaryColor
                                    : AppTheme.goldColor,
                              )
                          : Theme.of(context).textTheme.headlineSmall),
                  context.locale == Locale("en")
                      ? Icon(
                          Icons.done,
                          size: 30,
                          color: pro.mode == ThemeMode.light
                              ? AppTheme.lightPrimaryColor
                              : AppTheme.goldColor,
                        )
                      : SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
