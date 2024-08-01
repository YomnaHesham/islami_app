import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/home_tabs/ahadeth/hadeth_model.dart';

class HadethDetails extends StatelessWidget {
  static const String routName = "hadethDetails";

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;
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
                Text(
                  model.title,
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


                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListView.builder(itemBuilder: (context, index) {
                      return Text(
                        model.content[index],
                        style: Theme.of(context).textTheme.titleMedium,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                      );
                    },itemCount: model.content.length,),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
