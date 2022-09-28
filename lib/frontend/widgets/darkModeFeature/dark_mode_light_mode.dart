import 'package:flutter/material.dart';
import 'package:yabatech_search/colors/colors.dart';

class MyThemes {
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: backgroundColor,
      primaryColor: Colors.black,
      secondaryHeaderColor: footerColor,
      colorScheme: const ColorScheme.dark(),
      // iconTheme: const IconThemeData(color: Color(0xff123524)),
      iconTheme: const IconThemeData(color: Color(0xff32cd32)));

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    colorScheme: const ColorScheme.light(),
    iconTheme: const IconThemeData(color: Color(0xff228b22)),
  );
}

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
