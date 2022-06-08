import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFe34257),
    secondary: Color(0xFF41d3ab),
    onPrimary: Color(0xFFfbfbfb),
    onSecondary: Color(0xFF222831),
    error: Colors.red,
    onError: Color(0xFF1b1822),
    background: Color(0xFF222831),
    onBackground: Color(0xFF1b1822),
    surface: Color(0xFF405069),
    onSurface: Color(0xFF405069),
  ),
  scaffoldBackgroundColor: const Color(0xFF222831),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    backgroundColor: Color(0xFF222831),
    elevation: 0,
    iconTheme: IconThemeData(
      color: Color(0xFFe34257),
    ),
    titleTextStyle: TextStyle(
      color: Color(0xFFe34257),
      fontFamily: 'Pacifico',
      fontSize: 30,
    ),
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      color: Color(0xFFfbfbfb),
      fontSize: 30,
      fontFamily: 'Fresca',
    ),
    headline2: TextStyle(
      color: Color(0xFFfbfbfb),
      fontSize: 20,
      fontFamily: 'Fresca',
    ),
    headline3: TextStyle(
      color: Color(0xFFfbfbfb),
      fontSize: 16,
      fontFamily: 'Nunito',
      fontWeight: FontWeight.bold,
    ),
    headline4: TextStyle(
      color: Color(0xFFfbfbfb),
      fontSize: 14,
      fontFamily: 'Nunito',
      fontWeight: FontWeight.bold,
    ),
    headline5: TextStyle(
      color: Color(0xFFfbfbfb),
      fontSize: 12,
      fontFamily: 'Nunito',
      fontWeight: FontWeight.bold,
    ),
    headline6: TextStyle(
      color: Color(0xFFfbfbfb),
      fontSize: 10,
      fontFamily: 'Nunito',
      fontWeight: FontWeight.bold,
    ),
  ),
);
// ThemeData theme = ThemeData(
//   colorScheme: const ColorScheme(
//     brightness: Brightness.light,
//     primary: Color(0xFF4c4197),
//     onPrimary: Color(0xFF41d3ab),
//     secondary: Color(0xFF41d3ab),
//     onSecondary: Color(0xFF1b1822),
//     error: Colors.red,
//     onError: Color(0xFF1b1822),
//     background: Color(0xFFfbfbfb),
//     onBackground: Color(0xFF1b1822),
//     surface: Color(0xFFf5f5f5),
    // onSurface: Color(0xFF222831),
//   ),
//   scaffoldBackgroundColor: const Color(0xFFfbfbfb),
//   appBarTheme: const AppBarTheme(
//     centerTitle: true,
//     backgroundColor: Color(0xFFfbfbfb),
//     elevation: 0,
//     iconTheme: IconThemeData(
//       color: Color(0xFF4c4197),
//     ),
//     titleTextStyle: TextStyle(
//       color: Color(0xFF4c4197),
//       fontFamily: 'Pacifico',
//       fontSize: 30,
//     ),
//   ),
//   textTheme: const TextTheme(
//     headline1: TextStyle(
//       color: Color(0xFF222831),
//       fontSize: 30,
//       fontFamily: 'Fresca',
//     ),
//     headline2: TextStyle(
//       color: Color(0xFF222831),
//       fontSize: 20,
//       fontFamily: 'Fresca',
//     ),
//     headline3: TextStyle(
//       color: Color(0xFF222831),
//       fontSize: 16,
//       fontFamily: 'Nunito',
//       fontWeight: FontWeight.bold,
//     ),
//     headline4: TextStyle(
//       color: Color(0xFF222831),
//       fontSize: 14,
//       fontFamily: 'Nunito',
//       fontWeight: FontWeight.bold,
//     ),
//     headline5: TextStyle(
//       color: Color(0xFF222831),
//       fontSize: 12,
//       fontFamily: 'Nunito',
//       fontWeight: FontWeight.bold,
//     ),
//     headline6: TextStyle(
//       color: Color(0xFF222831),
//       fontSize: 10,
//       fontFamily: 'Nunito',
//       fontWeight: FontWeight.bold,
//     ),
//   ),
// );
