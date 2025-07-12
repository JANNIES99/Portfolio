import 'package:flutter/widgets.dart';

abstract class AppTextStyle {
  TextStyle get titleLgBold;
  TextStyle get titleMdMedium;
  TextStyle get titleSmBold;
  TextStyle get bodyLgBold;
  TextStyle get bodyLgMedium;
  TextStyle get bodyMdMedium;
}

class SmallTextStyles extends AppTextStyle {
  @override
  // TODO: implement bodyLgBold
  TextStyle get bodyLgBold =>
      const TextStyle(fontSize: 14, fontWeight: FontWeight.bold);

  @override
  // TODO: implement bodyLgMedium
  TextStyle get bodyLgMedium =>
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w500);

  @override
  // TODO: implement bodyMdMedium
  TextStyle get bodyMdMedium =>
      const TextStyle(fontSize: 12, fontWeight: FontWeight.w500);

  @override
  // TODO: implement titleLgBold
  TextStyle get titleLgBold =>
      const TextStyle(fontSize: 14, fontWeight: FontWeight.bold);

  @override
  // TODO: implement titleMdMedium
  TextStyle get titleMdMedium => throw UnimplementedError();

  @override
  // TODO: implement titleSmBold
  TextStyle get titleSmBold => throw UnimplementedError();
}
