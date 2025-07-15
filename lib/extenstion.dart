import 'package:flutter/material.dart';
import 'package:portfolio/apptextstyle.dart';
import 'package:portfolio/style/apppadding.dart';
import 'package:portfolio/style/themeprovider.dart';
import 'package:provider/provider.dart';

enum FormFactorType { mobile, desktop }

extension StyleContext on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);
  double get width => mq.size.width;
  double get height => mq.size.height;
  FormFactorType get formFactor {
    if (width < 900) {
      return FormFactorType.mobile;
    } else {
      return FormFactorType.desktop;
    }
  }

  bool get isMobile => formFactor == FormFactorType.mobile;
  bool get isDestop => formFactor == FormFactorType.desktop;

  ThemeData get theme => Theme.of(this);

  ThemeService get themeService => Provider.of<ThemeService>(this);

  AppPadding get appPaddings {
    switch (formFactor) {
      case FormFactorType.mobile:
        return SmallPadding();
      case FormFactorType.desktop:
        return LargePadding();
    }
  }

  AppTextStyle get textStyle {
    switch (formFactor) {
      case FormFactorType.mobile:
        return SmallTextStyles();
      case FormFactorType.desktop:
        return LargeTextStyle();
    }
  }
}
