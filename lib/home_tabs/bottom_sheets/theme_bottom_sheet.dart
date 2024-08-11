import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:islami/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

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
                pro.changeTheme(ThemeMode.light);
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "light".tr(),
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: pro.mode == ThemeMode.light
                            ? AppTheme.lightPrimaryColor
                            : AppTheme.whiteColor),
                  ),
                  pro.mode == ThemeMode.light
                      ? Icon(Icons.done,
                          size: 30, color: AppTheme.lightPrimaryColor)
                      : SizedBox(),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () {
                pro.changeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "dark".tr(),
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: pro.mode == ThemeMode.light
                              ? AppTheme.blackColor
                              : AppTheme.goldColor,
                        ),
                  ),
                  pro.mode == ThemeMode.dark
                      ? Icon(Icons.done, size: 30, color: AppTheme.goldColor)
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
