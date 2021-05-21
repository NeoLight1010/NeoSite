import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neo_site/routes/bio/_data.dart';
import 'package:neo_site/utils/widgets.dart';
import 'package:neo_site/utils/pages.dart';
import 'package:yaml/yaml.dart';
import '../index.dart';

Future<dynamic> _loadData() async {
  final _yamlStr = await rootBundle.loadString("data/bio.yaml");
  return loadYaml(_yamlStr);
}

class BioPage extends StatefulWidget {
  static String route = '/bio/';
  @override
  _BioPageState createState() => _BioPageState();
}

class _BioPageState extends State<BioPage> {
  String _description = Data.description;
  final data = _loadData();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _loadData(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data;

            return DefaultPage(
              backPageRoute: IndexPage.route,
              title: data["title"],
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
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}
