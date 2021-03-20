import 'package:flutter/material.dart';
import 'package:neo_site/utils/pages.dart';
import 'package:neo_site/routes/index.dart';

class UnderConstructionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultPage(
      backPageRoute: IndexPage.route,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "page under construction",
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
            Text("you might as well come back later"),
            Icon(Icons.favorite),
          ],
        ),
      ),
    );
  }
}
