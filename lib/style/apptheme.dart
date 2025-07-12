import 'package:flutter/material.dart';
import 'package:portfolio/style/appcolors.dart';

class AppTheme {
  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.darkBackgroundColor,
    appBarTheme: AppBarTheme(color: AppColors.grey[900]),
  );
}
