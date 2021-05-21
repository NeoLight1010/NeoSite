import 'package:flutter/material.dart';
import 'package:neo_site/utils/dataLoader.dart';
import 'package:neo_site/utils/pages.dart';
import 'package:neo_site/routes/index.dart';
import 'package:neo_site/utils/widgets.dart';
import 'package:yaml/yaml.dart';

/// Generates a list of ProjectItems given a YamlList with the projects' data.
List<Widget> _generateProjectItems(YamlList data) {
  return List<Widget>.generate(
      data.length, (index) => ProjectItem(title: data[index]["title"]));
}

class DevPage extends StatefulWidget {
  static String route = '/dev/';
  @override
  _DevPageState createState() => _DevPageState();
}

class _DevPageState extends State<DevPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultPage(
      title: "dev",
      future: loadData('data/dev.yaml'),
      backPageRoute: IndexPage.route,
      body: (context, data) => GridView.count(
        children: _generateProjectItems(data["projects"]),
        crossAxisCount: 3,
      ),
    );
  }
}
