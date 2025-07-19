import 'package:flutter/material.dart';
import 'package:portfolio/apptextstyle.dart';
import 'package:portfolio/constants/appmenulist.dart';
import 'package:portfolio/extenstion.dart';
import 'package:portfolio/style/apppadding.dart';
import 'package:portfolio/style/themeprovider.dart';
//import 'package:portfolio/widgets/appbar/appbar_drawer_icon.dart';
//import 'package:portfolio/widgets/appbar/drawermenu.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

bool value = false;

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 200),
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            horizontal: context.appPaddings.horiPadding,
          ),
          height: context.appPaddings.vertHeight,
          color: context.theme.appBarTheme.backgroundColor!.withValues(
            alpha: 0.5,
          ),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: Insets.maxWidth),
            child: Row(
              children: [
                AppLogo(),
                Spacer(),
                //if (context.isDesktop) LargeMenu(),
                //Spacer(),
                IconMenu(),
                ThemeToggle(),
                //if (context.isMobile) AppBarDrawerIcon(),
              ],
            ),
          ),
        ),
        //if (!context.isDesktop) DrawerMenu(),
      ],
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
          AppMenuList.items
              .map(
                (AppMenu e) => LargeAppBarMenuItem(text: e.title, url: e.url),
              )
              .toList(),
    );
  }
}

class IconMenu extends StatelessWidget {
  const IconMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...IconMenuList.items.map(
          (var e) =>
              IconAppBarMenuItem(text: e.title, url: e.url, icon: e.icon),
        ),
      ],
    );
  }
}

class SmallMenu extends StatelessWidget {
  const SmallMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          AppMenuList.items
              .map(
                (AppMenu e) => LargeAppBarMenuItem(text: e.title, url: e.url),
              )
              .toList(),
    );
  }
}

class LargeAppBarMenuItem extends StatelessWidget {
  const LargeAppBarMenuItem({super.key, required this.text, required this.url});

  final String text;
  final String url;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final Uri uri = Uri.parse(url);
        if (!await launchUrl(uri, webOnlyWindowName: '_self')) {
          throw "Can not reach url";
        }
      },
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

class IconAppBarMenuItem extends StatelessWidget {
  const IconAppBarMenuItem({
    super.key,
    required this.text,
    required this.url,
    required this.icon,
  });

  final String text;
  final String url;
  final ImageIcon icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final Uri uri = Uri.parse(url);
        if (!await launchUrl(uri, webOnlyWindowName: '_self')) {
          throw "Can not reach url";
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Insets.med,
          vertical: Insets.xs,
        ),
        child: icon,
      ),
    );
  }
}

class SmallAppBarMenuItem extends StatelessWidget {
  const SmallAppBarMenuItem({super.key, required this.text, this.url});

  final String text;
  final String? url;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (url != null) {
          final Uri uri = Uri.parse(url!);
          if (!await launchUrl(uri, webOnlyWindowName: '_self')) {
            throw "Can not reach url";
          }
        }
      },
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
    final themeService = Provider.of<ThemeService>(context, listen: false);
    return IconButton(
      onPressed: () {
        themeService.toggleTheme();
      },
      icon: Icon(themeService.themeIcon),
    );
  }
}
