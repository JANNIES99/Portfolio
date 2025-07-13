import 'package:flutter/material.dart';
import 'package:portfolio/widgets/appbar/myappbar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MyAppBar());
  }
}
