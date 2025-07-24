import 'package:flutter/material.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: AspectRatio(
        aspectRatio: 0.8,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(250)),
          child: Image.asset('assets/images/me.jpeg', fit: BoxFit.cover),
        ),
      ),
    );
  }
}
