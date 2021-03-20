import 'package:flutter/material.dart';
import 'package:neo_site/utils/pages.dart';
import '../index.dart';

class ContactPage extends StatefulWidget {
  static String route = '/contact/';
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultPage(
      isUnderConstruction: true,
      backPageRoute: IndexPage.route,
      body: Container(),
    );
  }
}
