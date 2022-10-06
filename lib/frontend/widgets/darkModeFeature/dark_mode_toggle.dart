import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yabatech_search/frontend/widgets/darkModeFeature/dark_mode_light_mode.dart';

class DarkModeToggle{

  onClicked(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Switch.adaptive(
      value: themeProvider.isDarkMode,
      onChanged: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
    );
  }
}