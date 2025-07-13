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
