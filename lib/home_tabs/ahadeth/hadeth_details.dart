import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';

class HadethDetails extends StatelessWidget {
  static const String routName = "hadethDetails";

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
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
        body: Card(
          child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              Text(
                "الحديث الأول",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                width: 24,
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
            ],
          ),
        ),
      ),
    );
  }
}
