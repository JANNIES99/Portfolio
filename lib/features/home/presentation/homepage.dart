import 'package:flutter/material.dart';
import 'package:portfolio/features/home/presentation/herowidget.dart';
import 'package:portfolio/widgets/appbar/myappbar.dart';
import 'package:portfolio/widgets/backgroundblur.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const BackgroundBlur(),
            const HeroWidget(),
            const MyAppBar(),
          ],
        ),
      ),
    );
  }
}
