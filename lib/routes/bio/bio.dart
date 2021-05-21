import 'package:flutter/material.dart';
import 'package:neo_site/utils/dataLoader.dart';
import 'package:neo_site/utils/widgets.dart';
import 'package:neo_site/utils/pages.dart';
import '../index.dart';

class BioPage extends StatefulWidget {
  static String route = '/bio/';
  @override
  _BioPageState createState() => _BioPageState();
}

class _BioPageState extends State<BioPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultPage(
      backPageRoute: IndexPage.route,
      title: "bio",
      future: loadData("data/bio.yaml"),
      body: (context, data) => SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Column(
              children: [
                Text(data["description"]),
                Divider(
                  height: 50,
                ),
                DoubleRowTitleList(
                  title: 'Certificates',
                  list: data["certificates"].cast<String>(),
                ),
                Divider(
                  height: 50,
                ),
                DoubleRowTitleList(
                  title: 'Programming/Markup Languages',
                  list: data["programming-langs"].cast<String>(),
                ),
                Divider(
                  height: 50,
                ),
                DoubleRowTitleList(
                    title: "Developer Skills",
                    list: data["developer-skills"].cast<String>())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
