import 'package:flutter/material.dart';
import 'package:neo_site/utils/pages.dart';
import 'package:neo_site/routes/index.dart';
import 'package:neo_site/utils/widgets.dart';

List<Widget> _generateProjectItems() {
  return List<Widget>.filled(5, ProjectItem(title: "Project name"));
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
        backPageRoute: IndexPage.route,
        body: (context, data) => GridView.count(
              children: _generateProjectItems(),
              crossAxisCount: 3,
            ));
  }
}
