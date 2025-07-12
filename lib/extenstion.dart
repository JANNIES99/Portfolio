import 'package:flutter/material.dart';
import 'package:portfolio/apptextstyle.dart';

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

  AppTextStyle get textStyle {
    switch (formFactor) {
      case FormFactorType.mobile:
        return SmallTextStyles();
      case FormFactorType.desktop:
        return LargeTextStyle();
    }
  }
}
