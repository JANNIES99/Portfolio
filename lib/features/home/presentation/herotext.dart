import 'package:flutter/material.dart';
import 'package:portfolio/extenstion.dart';
import 'package:portfolio/widgets/appbar/seotext.dart';

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
        //SEOtext()
      ],
    );
  }
}
