import 'package:flutter/material.dart';
import 'package:neo_site/routes/underConstruction.dart';

class ContactPage extends StatefulWidget {
  static String route = '/contact/';
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  bool isUnderConstruction = true;

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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _getMainWidget(isUnderConstruction);
  }
}
