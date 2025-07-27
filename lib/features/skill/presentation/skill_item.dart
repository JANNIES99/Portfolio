import 'package:flutter/material.dart';
import 'package:portfolio/extenstion.dart';
import 'package:portfolio/style/apppadding.dart';

class SkillItem extends StatelessWidget {
  const SkillItem({super.key, required this.name, required this.image});
  final String name;
  final Image image;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: AspectRatio(
        aspectRatio: 0.7,
        child: Column(
          children: [
            AspectRatio(aspectRatio: 1, child: ClipRRect(child: image)),
            SizedBox(height: Insets.xxl),
            Text(
              name,
              style: context.textStyle.bodyLgBold.copyWith(
                color: context.theme.colorScheme.onBackground,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
