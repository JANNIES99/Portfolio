import 'package:flutter/material.dart';

class ProjectList {
  static List<Project> get item => [];
}

//
class Project {
  Project({
    required this.name,
    required this.description,
    required this.githubURL,
    required this.images,
  });
  final String name;
  final String description;
  final String githubURL;
  final List<Image> images;
}
