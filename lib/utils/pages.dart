import 'package:flutter/material.dart';
import 'package:neo_site/routes/underConstruction.dart';

class DefaultPage extends StatelessWidget {
  final bool isUnderConstruction;
  final String backPageRoute;
  final String title;
  final Widget body;

  DefaultPage({
    this.isUnderConstruction: false,
    required this.backPageRoute,
    this.title: "",
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    if (this.isUnderConstruction) return UnderConstructionPage();

    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () =>
              Navigator.of(context).pushReplacementNamed(this.backPageRoute),
        ),
      ),
      body: this.body,
    );
  }
}
