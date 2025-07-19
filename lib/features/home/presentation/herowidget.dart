import 'package:flutter/material.dart';
import 'package:portfolio/style/apppadding.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("Flutter"),
        //context.isDesktop? _LargeHero(): _SmallHero(),
      ],
    );
  }
}

class _SmallHero extends StatelessWidget {
  const _SmallHero();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(constraints: const BoxConstraints(maxWidth: 140)),
        SizedBox(height: Insets.xl),
        //HeroTexts(),
        SizedBox(height: Insets.xxl),
        //SmallHeroButtons(),
      ],
    );
  }
}
