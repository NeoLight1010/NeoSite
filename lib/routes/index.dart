import 'package:flutter/material.dart';
import 'package:neo_site/routes/bio/bio.dart';
import 'package:neo_site/routes/dev/dev.dart';
import 'package:neo_site/routes/contact/contact.dart';

class IndexPage extends StatefulWidget {
  static String route = '/';

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
                TextButton(
                    onPressed: () =>
                        Navigator.of(context).popAndPushNamed(BioPage.route),
                    child: Text('bio')),
                TextButton(
                    onPressed: () =>
                        Navigator.of(context).popAndPushNamed(DevPage.route),
                    child: Text('dev')),
                TextButton(
                    onPressed: () => Navigator.of(context)
                        .popAndPushNamed(ContactPage.route),
                    child: Text('contact')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
