import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  static String route = '';

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Anthony Suárez',
              textScaleFactor: 1.8,
            ),
            Text(
              '[software developer]',
              textScaleFactor: 1.2,
            ),
            Container(height: 50),
            Column(
              children: [
                TextButton(onPressed: () {}, child: Text('bio')),
                TextButton(onPressed: () {}, child: Text('dev')),
                TextButton(onPressed: () {}, child: Text('contact')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
