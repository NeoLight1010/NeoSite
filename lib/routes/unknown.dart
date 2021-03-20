import 'package:flutter/material.dart';
import 'package:neo_site/utils/pages.dart';
import 'package:neo_site/routes/index.dart';

class UnknownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultPage(
      backPageRoute: IndexPage.route,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '404',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            Text('This page does not exist'),
          ],
        ),
      ),
    );
  }
}
