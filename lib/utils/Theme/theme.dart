import 'package:flutter/material.dart';

ThemeData LightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary: Colors.black,
    secondary: Colors.grey.shade900,
  ),
);
ThemeData DarkMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: Colors.black,
      primary: Colors.white,
      secondary: Colors.grey.shade700,
    ));
