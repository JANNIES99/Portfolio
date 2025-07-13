import 'package:flutter/material.dart';
import 'package:portfolio/apptextstyle.dart';
import 'package:portfolio/constants/appmenulist.dart';
import 'package:portfolio/extenstion.dart';
import 'package:portfolio/style/apppadding.dart';
import 'package:portfolio/widgets/appbar/appbar_drawer_icon.dart';

bool value = false;

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: context.appPaddings.horiPadding,
      ),
      height: context.appPaddings.vertHeight,
      color: context.theme.appBarTheme.backgroundColor,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: Insets.maxWidth),
        child: Row(
          children: [
            AppLogo(),
            Spacer(),
            if (context.isDestop) LargeMenu(),
            Spacer(),
            ThemeToggle(),
            if (context.isMobile) AppBarDrawerIcon(),
          ],
        ),
      ),
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Portfolio", style: context.textStyle.titleLgBold);
  }
}

class LargeMenu extends StatelessWidget {
  const LargeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          AppMenuList.Items.map(
            (AppMenu e) => LargeAppBarMenuItem(text: e.title, url: e.url),
          ).toList(),
    );
  }
}

class LargeAppBarMenuItem extends StatelessWidget {
  const LargeAppBarMenuItem({super.key, required this.text, this.url});

  final String text;
  final String? url;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Insets.med,
          vertical: Insets.xs,
        ),
        child: Text(text, style: SmallTextStyles().bodyLgMedium),
      ),
    );
  }
}

class ThemeToggle extends StatefulWidget {
  const ThemeToggle({super.key});

  @override
  State<ThemeToggle> createState() => _ThemeToggleState();
}

class _ThemeToggleState extends State<ThemeToggle> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: (value) {
        setState(() {
          value = !value;
        });
      },
    );
  }
}
