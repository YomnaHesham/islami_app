import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<ThemeProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/radio_image.png"),
        SizedBox(
          height: 32,
        ),
        Text(
          "إذاعة القرآن الكريم",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        SizedBox(
          height: 32,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.skip_previous,
                color: pro.mode == ThemeMode.light
                    ? AppTheme.lightPrimaryColor
                    : AppTheme.goldColor,
                size: 32,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_arrow,
                color: pro.mode == ThemeMode.light
                    ? AppTheme.lightPrimaryColor
                    : AppTheme.goldColor,
                size: 48,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.skip_next,
                color: pro.mode == ThemeMode.light
                    ? AppTheme.lightPrimaryColor
                    : AppTheme.goldColor,
                size: 32,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
