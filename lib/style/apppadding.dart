abstract class AppPadding {
  double get padding;
}

class LargePadding extends AppPadding {
  @override
  double get padding => 50;
}

class SmallPadding extends AppPadding {
  @override
  double get padding => 16;
}
