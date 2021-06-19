import 'package:flutter/material.dart';
import 'package:mici/ui/resources/colors.resources.dart';

class MyAppTheme {}

ThemeData buildThemeData() {
  final baseTheme = ThemeData(
    textTheme: TextTheme(
      button: TextStyle(fontSize: 20.0, fontFamily: 'AvenirNext', color: Colors.white),
      headline1:
          TextStyle(color: Colors.white, fontFamily: 'AvenirNext', fontSize: 40.0, height: 0.9),
      headline2: TextStyle(fontFamily: 'AvenirNext', color: Colors.white, fontSize: 45.0),
      subtitle1: TextStyle(color: Colors.white70, fontSize: 16.0, fontWeight: FontWeight.w600),
      subtitle2:
          TextStyle(color: Colors.grey[200], fontWeight: FontWeight.w600, fontFamily: 'AvenirNext'),
      bodyText1: TextStyle(fontFamily: 'AvenirNext', fontSize: 16, color: Colors.black),
    ),
  );

  return baseTheme.copyWith(
      primaryColor: primaryColor,
      primaryColorDark: primaryColor,
      primaryColorLight: primaryColor,
      accentColor: secondaryColor);
}
