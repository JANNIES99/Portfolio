import 'package:flutter/material.dart';
import 'package:portfolio/extenstion.dart';
import 'package:portfolio/style/apppadding.dart';

class BackgroundBlur extends StatelessWidget {
  const BackgroundBlur({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: -(context.width / 2 / 2),
      top: -(context.width / 2 / 2) + Insets.xxxl,
      child: Container(
        width: context.width / 2,
        height: context.width / 2,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              blurRadius: 200,
              spreadRadius: 100,
              color: context.theme.colorScheme.primary.withValues(alpha: 0.4),
            ),
          ],
        ),
      ),
    );
  }
}
