import 'package:flutter/material.dart';
import 'package:portfolio/constants/herotext.dart';
import 'package:portfolio/extenstion.dart';
import 'package:portfolio/style/apppadding.dart';
import 'package:portfolio/widgets/appbar/seotext.dart';
import 'package:portfolio/widgets/typingtext.dart';

class HeroText extends StatelessWidget {
  const HeroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          context.isDesktop
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.center,
      children: [
        TypingText(
          HeroInfo.position,
          textAlign: context.isDesktop ? TextAlign.left : TextAlign.center,
          style: context.textStyle.titleLgBold.copyWith(
            color: context.theme.colorScheme.onBackground,
          ),
          //textRendererStyle: TextRendererStyle.header2,
        ),
        SizedBox(height: Insets.xxl),
        SEOtext(
          HeroInfo.introduction,
          textAlign: context.isDesktop ? TextAlign.left : TextAlign.center,
          style: context.textStyle.titleMdMedium.copyWith(
            color: context.theme.colorScheme.onBackground,
          ),
          //textRendererStyle: TextRendererStyle.header1,
        ),
        SizedBox(height: Insets.xl),
        SEOtext(
          HeroInfo.aboutme,
          textAlign: context.isDesktop ? TextAlign.left : TextAlign.center,
          style: context.textStyle.titleMdMedium.copyWith(
            color: context.theme.colorScheme.onSurface,
          ),
          //textRendererStyle: TextRendererStyle.header3,
        ),
      ],
    );
  }
}
