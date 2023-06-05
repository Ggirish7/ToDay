import 'package:flutter/material.dart';

// ThemeData lightTheme = ThemeData(
//   brightness: Brightness.light,
//   colorScheme: const ColorScheme.light(
//     primary: Color(0xFF0B2404),
//     secondary: Color(0xFFe5fbdf),
//     primaryContainer: Colors.black,
//     secondaryContainer: Color.fromARGB(255, 194, 226, 185),
//   ),
// );

// ThemeData darkTheme = ThemeData(
//   brightness: Brightness.dark,
//   colorScheme: const ColorScheme.dark(
//     primary: Color(0xFF060d02),
//     secondary: Color(0xFFf3fced),
//     primaryContainer: Colors.black,
//     secondaryContainer: Color.fromARGB(255, 193, 203, 187),
//   ),
// );

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF212121),
    secondary: Colors.white,
    primaryContainer: Colors.black,
    secondaryContainer: Color.fromARGB(255, 222, 218, 218),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFF121212),
    secondary: Color(0xFFB8B8B8),
    primaryContainer: Colors.black,
    secondaryContainer: Color(0xFF898989),
  ),
);
