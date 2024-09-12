import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int tsbehCount = 0;
  String tsbeh = "سبحان الله";
  double rotationAngle = 0.0;

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<ThemeProvider>(context);

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 73,
                  ),
                  GestureDetector(
                    onTap: () {
                      rotationAngle += 10 * 3.14 / 180;
                      tsbehCount++;
                      if (tsbehCount >= 0 && tsbehCount <= 33) {
                        tsbeh = "سبحان الله";
                      } else if (tsbehCount > 33 && tsbehCount <= 66) {
                        tsbeh = "الحمد لله";
                      } else if (tsbehCount > 66 && tsbehCount <= 99) {
                        tsbeh = "الله أكبر";
                      } else {
                        tsbeh = "سبحان الله";
                        tsbehCount = 0;
                      }
                      setState(() {});
                    },
                    child: Transform.rotate(
                      angle: rotationAngle,
                      child: Image.asset(
                        pro.mode == ThemeMode.light
                            ? "assets/images/body_sebha_logo.png"
                            : "assets/images/body_sebha_dark.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset(
                pro.mode == ThemeMode.light
                    ? "assets/images/head_sebha_logo.png"
                    : "assets/images/head_sebha_dark.png",
                fit: BoxFit.contain,
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "عدد التسبيحات",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: pro.mode == ThemeMode.light
                  ? AppTheme.lightPrimaryColor.withOpacity(0.57)
                  : AppTheme.darkPrimaryColor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              tsbehCount.toString(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:  pro.mode == ThemeMode.light
                  ?AppTheme.lightPrimaryColor
                  : AppTheme.goldColor,

            ),
            onPressed: () {
              tsbehCount++;
              if (tsbehCount >= 0 && tsbehCount <= 33) {
                tsbeh = "سبحان الله";
              } else if (tsbehCount > 33 && tsbehCount <= 66) {
                tsbeh = "الحمد لله";
              } else if (tsbehCount > 66 && tsbehCount <= 99) {
                tsbeh = "الله أكبر";
              } else {
                tsbeh = "سبحان الله";
                tsbehCount = 0;
              }
              setState(() {});
            },
            child: Text(
              tsbeh,
              style: GoogleFonts.inder(
                fontWeight: FontWeight.w400,
                fontSize: 25,
                color: pro.mode == ThemeMode.light
                    ?AppTheme.whiteColor
                    : AppTheme.blackColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
