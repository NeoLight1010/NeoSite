import 'package:flutter/material.dart';
import 'package:neo_site/themes/mainTheme.dart';
import 'package:neo_site/routes/index.dart';

void main() {
  runApp(NeoSite());
}

class NeoSite extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Anthony Suárez / NeoLight",
      darkTheme: mainTheme(context),
      themeMode: ThemeMode.dark,
      home: IndexPage(),
    );
  }
}
