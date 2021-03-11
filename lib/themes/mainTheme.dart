import 'package:flutter/material.dart';

ThemeData mainTheme(context) {
  return ThemeData(
    scaffoldBackgroundColor: Colors.black,
    textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
        ),
  );
}
