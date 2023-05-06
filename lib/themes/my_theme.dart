import 'package:flutter/material.dart';

class MyTheme {
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    fontFamily: 'Montserrat',
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
      headline2: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
      bodyText1: TextStyle(fontSize: 18.0),
      bodyText2: TextStyle(fontSize: 16.0),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blueGrey,
    fontFamily: 'Montserrat',
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
      headline2: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
      bodyText1: TextStyle(fontSize: 18.0),
      bodyText2: TextStyle(fontSize: 16.0),
    ),
  );
}
