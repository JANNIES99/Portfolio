abstract class AppPadding {
  double get horiPadding;
}

class LargePadding extends AppPadding {
  @override
  double get horiPadding => 50;
}

class SmallPadding extends AppPadding {
  @override
  double get horiPadding => 16;
}
