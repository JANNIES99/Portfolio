import 'package:flutter/material.dart';

class IconMenuList {
  static List<IconMenu> get items => [
    IconMenu(
      title: "Sourcecode",
      url: "https://github.com/JANNIES99/Portfolio",
      icon: ImageIcon(AssetImage("assets/icons/sourcecode.png")),
    ),
    IconMenu(
      title: "GitHub",
      url: "https://github.com/JANNIES99",
      icon: ImageIcon(AssetImage("assets/icons/github.png")),
    ),
    IconMenu(
      title: "LinkedIn",
      url: "https://www.linkedin.com/in/jannies-varghese-676788321/",
      icon: ImageIcon(AssetImage("assets/icons/linkedin.png")),
    ),
  ];
}

class IconMenu {
  final String title;
  final String url;
  final ImageIcon icon;

  IconMenu({required this.title, required this.url, required this.icon});
}

// class AppMenuList {
//   static List<AppMenu> get items => [
//     AppMenu(title: "Home", url: "/"),
//     AppMenu(title: "Projects", url: "/projects"),
//     AppMenu(
//       title: "/certificates",
//       url: "https://www.linkedin.com/in/jannies-varghese-676788321/",
//     ),
//   ];
// }

// class AppMenu {
//   final String title;
//   final String url;

//   AppMenu({required this.title, required this.url});
// }
