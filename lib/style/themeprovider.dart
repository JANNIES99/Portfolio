// import 'package:flutter/material.dart';
// import 'package:portfolio/style/apptheme.dart';

// class ThemeProvider with ChangeNotifier {
//   ThemeData _themeData = AppTheme().darkTheme;
//   ThemeData get themeData => _themeData;

//   set themeData(ThemeData themeData) {
//     _themeData = themeData;
//     notifyListeners();
//   }

//   void toggleTheme() {
//     if (_themeData == AppTheme().darkTheme) {
//       themeData = AppTheme().lightTheme;
//     } else {
//       themeData = AppTheme().darkTheme;
//     }
//   }
// }

import 'package:flutter/material.dart';

class ThemeService extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system; // Default to system theme

  ThemeMode get themeMode => _themeMode;

  void toggleTheme() {
    _themeMode =
        _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners(); // Notify listeners that the theme has changed
  }

  // You can also add a method to set a specific theme
  void setTheme(ThemeMode mode) {
    if (_themeMode != mode) {
      _themeMode = mode;
      notifyListeners();
    }
  }
}
