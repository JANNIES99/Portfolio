import 'package:flutter/material.dart';
import 'package:portfolio/extenstion.dart';
import 'package:portfolio/features/home/presentation/heroimage.dart';
import 'package:portfolio/features/home/presentation/herotext.dart';
import 'package:portfolio/style/apppadding.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Flutter"),
        context.isDesktop ? _LargeHero() : _SmallHero(),
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
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 140),
          child: HeroImage(),
        ),
        SizedBox(height: Insets.xl),
        const HeroText(),
        SizedBox(height: Insets.xxl),
      ],
    );
  }
}

class _LargeHero extends StatelessWidget {
  const _LargeHero();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: HeroImage()),
        SizedBox(height: Insets.xxxl),
        Expanded(flex: 2, child: Column(children: [HeroText()])),
      ],
    );
  }
}
