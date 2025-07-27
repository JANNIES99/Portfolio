import 'package:flutter/material.dart';
import 'package:portfolio/extenstion.dart';

class HomeSkillList extends StatelessWidget {
  const HomeSkillList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class _DesktopSkillList extends StatelessWidget {
  const _DesktopSkillList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(
        horizontal: context.appPaddings.horiPadding,
      ),
    );
  }
}
