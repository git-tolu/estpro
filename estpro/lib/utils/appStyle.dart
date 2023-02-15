
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:js';
bool condition = false;
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


class Styles {
  static Color toggle =  condition ? Colors.white : Colors.black;
  static Color white =  Colors.white;
  static Color black =  Colors.black;
  static List<Color> bgColor =  [Color(0xFF068540), Color(0xFFFFF7F00)];
  static Color shade = const Color.fromRGBO(0, 0, 0, 0.03);
  
}
