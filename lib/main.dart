import 'package:flutter/material.dart';
import 'package:portfolio/features/home/presentation/homepage.dart';
import 'package:portfolio/style/apptheme.dart';
import 'package:portfolio/style/themeprovider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeService(),
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
      themeMode: Provider.of<ThemeService>(context).themeMode,
      home: Homepage(),
      theme: AppTheme().lightTheme,
    );
  }
}
