import 'package:flutter/material.dart';
import 'package:portfolio/homepage.dart';
import 'package:portfolio/style/apptheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      home: Homepage(),
      theme: ThemeData(),
    );
  }
}
