import 'package:flutter/material.dart';

ThemeData appLightTheme(){
  TextTheme _textTheme = TextTheme(
    headline3: TextStyle(
        fontFamily: 'Open Sans',
        fontSize: 50.0,
        letterSpacing: 2.0,
        color: Colors.white,
        fontWeight: FontWeight.w300
    ),
    subtitle1: TextStyle(
      fontFamily: 'Open Sans',
      fontSize: 16.0,
      letterSpacing: 1.0,
      fontWeight: FontWeight.w400
    )
  );

  ElevatedButtonThemeData _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          )
      ),
    ),
  );

  return ThemeData(
    textTheme: _textTheme,
    colorScheme: ColorScheme.light(),
    primaryColor: Color.fromRGBO(255, 128, 101, 1),
    primaryColorLight: Color.fromRGBO(255, 144, 89, 0.2),
    elevatedButtonTheme: _elevatedButtonTheme
  );
}