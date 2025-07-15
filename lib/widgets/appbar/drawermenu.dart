import 'package:flutter/material.dart';
import 'package:portfolio/extenstion.dart';
import 'package:portfolio/widgets/appbar/myappbar.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.theme.colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: context.theme.colorScheme.surface.withValues(alpha: 0.4),
            blurRadius: 6,
            spreadRadius: 3,
          ),
        ],
      ),
      child: const SmallMenu(),
    );
  }
}
