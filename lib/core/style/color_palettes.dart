import 'package:flutter/material.dart';

class ColorPalettes {
  const ColorPalettes._();

  static const _primaryValue = 0xff6e78f7;

  static const primary = Color(_primaryValue);
  static const black = Color(0xff313450);
  static const darkGrey = Color(0xff898a8f);
  static const grey = Color(0xff94a5a6);
  static const lightGrey = Color(0xfff5f5f5);
  static const divider = Color(0xffECECEC);
  static const bgGrey = Color(0xffFBFBFB);

  static const greyBackground = lightGrey;

  static const primarySwatch = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(_primaryValue),
      100: Color(_primaryValue),
      200: Color(_primaryValue),
      300: Color(_primaryValue),
      400: Color(_primaryValue),
      500: Color(_primaryValue),
      600: Color(_primaryValue),
      700: Color(_primaryValue),
      800: Color(_primaryValue),
      900: Color(_primaryValue),
    },
  );
}
