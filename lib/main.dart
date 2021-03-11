import 'package:flutter/material.dart';
import 'package:neo_site/themes/mainTheme.dart';

void main() {
  runApp(NeoSite());
}

class NeoSite extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: mainTheme(context),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("hello"),
      ),
    );
  }
}
