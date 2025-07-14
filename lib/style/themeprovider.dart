import 'package:flutter/material.dart';
import 'package:portfolio/style/apptheme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = AppTheme().darkTheme;
  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == AppTheme().darkTheme) {
      themeData = AppTheme().lightTheme;
    } else {
      themeData = AppTheme().darkTheme;
    }
  }
}
