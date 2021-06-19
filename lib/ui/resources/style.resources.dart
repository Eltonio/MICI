import 'package:flutter/material.dart';
import 'package:mici/ui/resources/colors.resources.dart';

extension CustomInputDecoration on InputDecorationTheme {
  InputDecoration get inputHead1 {
    return InputDecoration(
      labelStyle: TextStyle(color: Colors.grey[300]),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: secondaryColor),
      ),
    );
  }

  InputDecoration get inputOnWhiteBg {
    return InputDecoration(
      labelStyle: TextStyle(color: Colors.white),
      errorStyle: TextStyle(color: Colors.redAccent),
      fillColor: Colors.transparent,
      filled: true,
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: gradientEnd),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: gradientEnd),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: gradientStart),
      ),
    );
  }
}
