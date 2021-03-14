import 'package:flutter/material.dart';
import 'package:neo_site/routes/underConstruction.dart';

class BioPage extends StatefulWidget {
  static String route = '/bio/';
  @override
  _BioPageState createState() => _BioPageState();
}

class _BioPageState extends State<BioPage> {
  final bool isUnderConstruction = true;

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
        title: Text(
          'bio',
          textScaleFactor: .8,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _getMainWidget(isUnderConstruction);
  }
}
