// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyTheme {
  final ThemeData themeOne = ThemeData(
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.red,
      elevation: 0.0,
    ),
    cardTheme: CardTheme(
        color: Colors.amber,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0))),
    brightness: Brightness.light,
    // visualDensity: VisualDensity.standard,
    // primarySwatch: Colors.purple,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.amberAccent,
        textStyle: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
  );
  final ThemeData greenLight = ThemeData(
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.green,
      elevation: 0.0,
    ),
    cardTheme: CardTheme(
        color: Colors.green,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0))),
    brightness: Brightness.light,
    // visualDensity: VisualDensity.standard,
    // primarySwatch: Colors.purple,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.green,
        textStyle: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
  );
  final ThemeData greenDark = ThemeData(
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.green,
      elevation: 0.0,
    ),
    cardTheme: CardTheme(
        color: Colors.green,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0))),
    brightness: Brightness.dark,
    // visualDensity: VisualDensity.standard,
    // primarySwatch: Colors.purple,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.green,
        textStyle: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
  );
}
