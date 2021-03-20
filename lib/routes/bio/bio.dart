import 'package:flutter/material.dart';
import 'package:neo_site/routes/underConstruction.dart';
import 'package:neo_site/routes/bio/_data.dart';

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
