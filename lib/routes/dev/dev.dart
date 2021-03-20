import 'package:flutter/material.dart';
import 'package:neo_site/utils/pages.dart';
import 'package:neo_site/routes/index.dart';

class DevPage extends StatefulWidget {
  static String route = '/dev/';
  @override
  _DevPageState createState() => _DevPageState();
}

class _DevPageState extends State<DevPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultPage(
      isUnderConstruction: true,
      backPageRoute: IndexPage.route,
      body: Container(),
    );
  }
}
