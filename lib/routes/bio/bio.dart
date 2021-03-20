import 'package:flutter/material.dart';
import 'package:neo_site/routes/bio/_data.dart';
import 'package:neo_site/utils/widgets.dart';
import 'package:neo_site/utils/pages.dart';
import '../index.dart';

class BioPage extends StatefulWidget {
  static String route = '/bio/';
  @override
  _BioPageState createState() => _BioPageState();
}

class _BioPageState extends State<BioPage> {
  String _description = Data.description;

  @override
  Widget build(BuildContext context) {
    return DefaultPage(
      backPageRoute: IndexPage.route,
      title: "bio",
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Column(
              children: [
                Text(_description),
                Divider(
                  height: 50,
                ),
                DoubleRowTitleList(title: 'Certificates', list: [
                  'freeCodeCamp Full Stack Dev. (x/y)',
                  'IBM/Coursera Data Science Professional',
                  'Climatón EC finalist'
                ]),
                Divider(
                  height: 50,
                ),
                DoubleRowTitleList(
                  title: 'Programming/Markup Languages',
                  list: [
                    'Python',
                    'Javascript',
                    'Dart',
                    'C++',
                    'HTML/CSS',
                  ],
                ),
                Divider(
                  height: 50,
                ),
                DoubleRowTitleList(title: "Developer Skills", list: [
                  "Git",
                  "Django",
                  "Databases (Document-Oriented, Relational)",
                  "APIs (REST, GraphQL)",
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
