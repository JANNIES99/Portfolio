import 'package:flutter/material.dart';
import 'package:portfolio/extenstion.dart';

bool value = false;

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [AppLogo(), Spacer(), AppMenu(), Spacer(), ThemeToggle()],
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

class AppMenu extends StatelessWidget {
  const AppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Home"),
        SizedBox(width: 10),
        Text("GitHub"),
        SizedBox(width: 10),
        Text("Linkedin"),
      ],
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
