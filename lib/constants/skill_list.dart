import 'package:flutter/material.dart';

class SkillList {
  static List<Skill> get items => [
    Skill(
      name: "Flutter",
      logo: Image.asset("assets/icons/flutter.png", fit: BoxFit.cover),
    ),
    Skill(
      name: "Dart",
      logo: Image.asset("assets/icons/dart.png", fit: BoxFit.cover),
    ),
    Skill(
      name: "Python",
      logo: Image.asset("assets/icons/python.png", fit: BoxFit.cover),
    ),
    Skill(
      name: "Numpy",
      logo: Image.asset("assets/icons/numpy.png", fit: BoxFit.cover),
    ),
    Skill(
      name: "LangChain",
      logo: Image.asset("assets/icons/langchain.png", fit: BoxFit.cover),
    ),
    Skill(
      name: "C",
      logo: Image.asset("assets/icons/C.png", fit: BoxFit.cover),
    ),
  ];
}

class Skill {
  Skill({required this.name, required this.logo});

  final String name;
  final Image logo;
}
