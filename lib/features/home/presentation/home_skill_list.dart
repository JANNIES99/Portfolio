import 'package:flutter/material.dart';
import 'package:portfolio/constants/skill_list.dart';
import 'package:portfolio/extenstion.dart';
import 'package:portfolio/features/skill/presentation/skill_item.dart';

class HomeSkillList extends StatelessWidget {
  const HomeSkillList({super.key});

  @override
  Widget build(BuildContext context) {
    return const _DesktopSkillList();
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

      child: Column(
        children: [
          SizedBox(height: 100),
          Text("Skill and Technologies", style: context.textStyle.titleLgBold),
          Wrap(
            alignment: WrapAlignment.center,
            children:
                SkillList.items
                    .map((e) => SkillItem(name: e.name, image: e.logo))
                    .toList(),
          ),
        ],
      ),
    );
  }
}
