import 'package:flutter/material.dart';
import 'package:neo_site/routes/underConstruction.dart';

class DefaultPage extends StatelessWidget {
  final Future<dynamic>? future;
  final bool isUnderConstruction;
  final String backPageRoute;
  final String title;
  final Widget Function(BuildContext, dynamic data) body;

  DefaultPage({
    this.future,
    this.isUnderConstruction: false,
    required this.backPageRoute,
    this.title: "",
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    if (this.isUnderConstruction) return UnderConstructionPage();

    return FutureBuilder(
        future: this.future,
        builder: (context, AsyncSnapshot snapshot) {
          final _data = snapshot.data;

          if (snapshot.hasData || this.future == null) {
            return Scaffold(
              appBar: AppBar(
                title: Text(this.title),
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () => Navigator.of(context)
                      .pushReplacementNamed(this.backPageRoute),
                ),
              ),
              body: this.body(context, _data),
            );
          }

          return CircularProgressIndicator();
        });
  }
}
