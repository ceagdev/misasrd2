import 'package:flutter/material.dart';

class MyTheme {
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    fontFamily: 'Montserrat',

    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
      displayMedium: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 18.0),
      bodyMedium: TextStyle(fontSize: 16.0),
    ),

  );

  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blueGrey,
    fontFamily: 'Montserrat',
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
      displayMedium: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 18.0),
      bodyMedium: TextStyle(fontSize: 16.0),
    ),
  );
}
