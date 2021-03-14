import 'package:flutter/material.dart';

ThemeData mainTheme(context) {
  return ThemeData(
    scaffoldBackgroundColor: Colors.black,
    textTheme: _textTheme(context),
    appBarTheme: _appBarTheme(context),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.hovered) ||
                states.contains(MaterialState.focused))
              return _colorScheme.onBackground;

            return _colorScheme.primary;
          },
        ),
      ),
    ),
    colorScheme: _colorScheme,
  );
}

final ColorScheme _colorScheme = ColorScheme.dark(
  background: Colors.black,
  onBackground: Colors.white,
  primary: Colors.red.shade700,
  secondary: Colors.cyan,
);

TextTheme _textTheme(context) {
  return Theme.of(context).textTheme.apply(
        fontFamily: 'FiraMono',
        bodyColor: _colorScheme.onBackground,
        fontSizeFactor: 1.7,
      );
}

AppBarTheme _appBarTheme(context) {
  return AppBarTheme.of(context).copyWith(
    backgroundColor: _colorScheme.background,
    centerTitle: true,
    textTheme: _textTheme(context),
  );
}
