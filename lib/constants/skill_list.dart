import 'package:flutter/material.dart';

class SkillList {
  static List<Skill> get items =>[
    
  ];
}

class Skill {
  Skill({required this.name, required this.logo});

  final String name;
  final Image logo;
}
