import 'package:flutter/material.dart';

ThemeData light = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color.fromRGBO(52, 199, 89, 1), 
    onPrimary: Colors.white,
    background: Colors.white, 
    onBackground: Colors.black,
    error: Colors.red, 
    onError: Colors.white, 
    secondary: Color.fromRGBO(250, 103, 47, 1),
    onSecondary: Colors.white, 
    surface: Colors.white, 
    onSurface: Colors.black, 
  ),
);
