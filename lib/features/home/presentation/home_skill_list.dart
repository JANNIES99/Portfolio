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
      // child: Row(
      //   children: [
      //     Expanded(
      //       child: SkillItem(
      //         name: SkillList.items[0].name,
      //         image: SkillList.items[0].logo,
      //       ),
      //     ),
      //     Expanded(
      //       child: SkillItem(
      //         name: SkillList.items[1].name,
      //         image: SkillList.items[1].logo,
      //       ),
      //     ),
      //     Expanded(
      //       child: SkillItem(
      //         name: SkillList.items[2].name,
      //         image: SkillList.items[2].logo,
      //       ),
      //     ),
      //     Expanded(
      //       child: SkillItem(
      //         name: SkillList.items[3].name,
      //         image: SkillList.items[3].logo,
      //       ),
      //     ),
      //     Expanded(
      //       child: SkillItem(
      //         name: SkillList.items[4].name,
      //         image: SkillList.items[4].logo,
      //       ),
      //     ),
      //     Expanded(
      //       child: SkillItem(
      //         name: SkillList.items[5].name,
      //         image: SkillList.items[5].logo,
      //       ),
      //     ),
      //   ],
      // ),
      child: Row(
        children:
            SkillList.items
                .map(
                  (e) =>
                      Expanded(child: SkillItem(name: e.name, image: e.logo)),
                )
                .toList(),
      ),
    );
  }
}
