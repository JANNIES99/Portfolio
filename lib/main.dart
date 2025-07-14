import 'package:flutter/material.dart';
import 'package:portfolio/homepage.dart';
import 'package:portfolio/style/apptheme.dart';
import 'package:portfolio/style/themeprovider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: AppTheme().darkTheme,
      themeMode: ThemeMode.light,
      home: Homepage(),
      theme: AppTheme().lightTheme,
      //Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
