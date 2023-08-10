import 'package:flutter/material.dart';

class CustomTextTheme {
  static const String _dmSansFontFamily = 'DMSans';

  static const TextStyle headline1 = TextStyle(
    fontFamily: _dmSansFontFamily,
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle headline2 = TextStyle(
    fontFamily: _dmSansFontFamily,
    fontSize: 28.0,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle headline3 = TextStyle(
    fontFamily: _dmSansFontFamily,
    fontSize: 24.0,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle headline4 = TextStyle(
    fontFamily: _dmSansFontFamily,
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle bodyText1 = TextStyle(
    fontFamily: _dmSansFontFamily,
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle bodyText2 = TextStyle(
    fontFamily: _dmSansFontFamily,
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle caption = TextStyle(
    fontFamily: _dmSansFontFamily,
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
  );

}
