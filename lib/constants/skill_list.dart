import 'package:flutter/material.dart';

class SkillList {
  static List<Skill> get items => [
    Skill(name: "Flutter", logo: Image.asset("assets/icons/flutter.png")),
    Skill(name: "Dart", logo: Image.asset("assets/icons/dart.png")),
    Skill(name: "Python", logo: Image.asset("assets/icons/python.png")),
    Skill(name: "Numpy", logo: Image.asset("assets/icons/numpy.png")),
    Skill(name: "LangChain", logo: Image.asset("assets/icons/langchain.png")),
    Skill(name: "C", logo: Image.asset("assets/icons/C.png")),
  ];
}

class Skill {
  Skill({required this.name, required this.logo});

  final String name;
  final Image logo;
}
