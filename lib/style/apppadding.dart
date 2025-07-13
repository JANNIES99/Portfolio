class Insets {
  static const double maxWidth = 1280;
  static double get med => 12;
  static double get xs => 4;
}

abstract class AppPadding {
  double get horiPadding;
  double get vertHeight;
}

class LargePadding extends AppPadding {
  @override
  double get horiPadding => 70;
  @override
  double get vertHeight => 64;
}

class SmallPadding extends AppPadding {
  @override
  double get horiPadding => 16;
  @override
  double get vertHeight => 50;
}
