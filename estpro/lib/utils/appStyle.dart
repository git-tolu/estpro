
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:js';
// bool condition = false;
// Color myColor;

// if (condition) {
//   myColor = Colors.white;
// } else {
//   myColor = Colors.black;
// }
// bool isDarkMode = MediaQuery.of(context as BuildContext).platformBrightness == Brightness.dark;
// Color myColor;

// if (isDarkMode) {
//   myColor = Colors.white;
// } else {
//   myColor = Colors.black;
// }

ThemeMode currentThemeMode(BuildContext context) {
  final MediaQueryData mediaQueryData = MediaQuery.of(context);
  final double devicePixelRatio = mediaQueryData.devicePixelRatio;
  final double textScaleFactor = mediaQueryData.textScaleFactor;
  final EdgeInsets padding = mediaQueryData.padding;
  final double deviceWidth = mediaQueryData.size.width;

  if (deviceWidth * devicePixelRatio / textScaleFactor >= 600.0) {
    // If device is in tablet mode, return system theme
    return ThemeMode.system;
  } else if (mediaQueryData.platformBrightness == Brightness.dark) {
    // If device is in dark mode, return dark theme
    return ThemeMode.dark;
    bool isDarkMode = true;
  } else {
    // If device is in light mode, return light theme
    return ThemeMode.light;
    bool isDarkMode = false;
  }
}



class Styles {
  static Color toggle =  isDarkMode ? Colors.white : Colors.black;
  static Color white =  Colors.white;
  static Color black =  Colors.black;
  static List<Color> bgColor =  [Color(0xFF068540), Color(0xFFFFF7F00)];
  static Color shade = const Color.fromRGBO(0, 0, 0, 0.03);
  static get isDarkMode => null;
}

