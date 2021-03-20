import 'package:flutter/material.dart';

class UnderConstructionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      )),
    );
  }
}
