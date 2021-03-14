import 'package:flutter/material.dart';
import 'package:neo_site/themes/mainTheme.dart';
import 'package:url_strategy/url_strategy.dart';

// Route imports.
import 'package:neo_site/routes/index.dart';
import 'package:neo_site/routes/bio/bio.dart';
import 'package:neo_site/routes/dev/dev.dart';
import 'package:neo_site/routes/contact/contact.dart';

void main() {
  setPathUrlStrategy();
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
      initialRoute: IndexPage.route,
      routes: {
        IndexPage.route: (context) => IndexPage(),
        BioPage.route: (context) => BioPage(),
        DevPage.route: (context) => DevPage(),
        ContactPage.route: (context) => ContactPage(),
      },
    );
  }
}
