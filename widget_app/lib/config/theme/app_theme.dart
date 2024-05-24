import 'package:flutter/material.dart';

const List<Color> colorList = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.pink,
];

class AppTheme {

  final int selectedColor;
  

  AppTheme({required this.selectedColor}):assert(selectedColor >= 0 && selectedColor < colorList.length);

  ThemeData getThemeData() {
    return ThemeData(
      brightness: Brightness.dark, // Add this line
      colorScheme: ColorScheme.fromSeed(
        seedColor: colorList[selectedColor],
        brightness: Brightness.dark, // And this line
      ),
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        centerTitle: false,
      ),
    );
  }

}