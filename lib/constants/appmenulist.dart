class AppMenuList {
  static List<AppMenu> get Items => [
    AppMenu(title: "Sourcecode", url: "https://github.com/JANNIES99/Portfolio"),
    AppMenu(title: "GitHub", url: "https://github.com/JANNIES99"),
    AppMenu(
      title: "LinkedIn",
      url: "https://www.linkedin.com/in/jannies-varghese-676788321/",
    ),
  ];
}

class AppMenu {
  final String title;
  final String? url;

  AppMenu({required this.title, required this.url});
}
