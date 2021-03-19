import 'package:flutter/material.dart';
import 'package:neo_site/routes/underConstruction.dart';
import 'package:neo_site/routes/bio/_data.dart';
import 'package:neo_site/utils/widgets.dart';

class BioPage extends StatefulWidget {
  static String route = '/bio/';
  @override
  _BioPageState createState() => _BioPageState();
}

class _BioPageState extends State<BioPage> {
  final bool isUnderConstruction = false;
  String _description = Data.description;

  Widget _getMainWidget(bool isUnderConstruction) {
    if (isUnderConstruction) {
      return UnderConstructionPage();
    }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('bio'),
      ),
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

  @override
  Widget build(BuildContext context) {
    return _getMainWidget(isUnderConstruction);
  }
}
