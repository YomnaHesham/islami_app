import 'package:flutter/material.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routName = "suraDetails";

  const SuraDetailsScreen({super.key});

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
        body: Center(
          child: Card(
            child: Text("suraName"),
          ),
        ),
      ),
    );
  }
}
