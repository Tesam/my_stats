import 'package:flutter/material.dart';

ThemeData appLightTheme(){
  TextTheme _textTheme = TextTheme(
    headline3: TextStyle(
        fontFamily: 'Open Sans',
        fontSize: 50.0,
        letterSpacing: 2.0,
        color: Colors.white,
        fontWeight: FontWeight.w300
    )
  );

  return ThemeData(
    textTheme: _textTheme,
  );
}