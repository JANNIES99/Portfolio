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
  TextStyle get bodyLgBold => const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    fontFamily: "JetBrainsMono",
  );

  @override
  TextStyle get bodyLgMedium => const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: "JetBrainsMono",
  );

  @override
  TextStyle get bodyMdMedium => const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: "JetBrainsMono",
  );

  @override
  TextStyle get titleLgBold => const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: "JetBrainsMono",
  );

  @override
  TextStyle get titleMdMedium => const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: "JetBrainsMono",
  );

  @override
  TextStyle get titleSmBold => const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontFamily: "JetBrainsMono",
  );
}

class LargeTextStyle extends AppTextStyle {
  @override
  TextStyle get bodyLgBold => const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    fontFamily: "JetBrainsMono",
  );

  @override
  TextStyle get bodyLgMedium => const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: "JetBrainsMono",
  );

  @override
  TextStyle get bodyMdMedium => const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: "JetBrainsMono",
  );

  @override
  TextStyle get titleLgBold => const TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    fontFamily: "JetBrainsMono",
  );

  @override
  TextStyle get titleMdMedium => const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: "JetBrainsMono",
  );

  @override
  TextStyle get titleSmBold => const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    fontFamily: "JetBrainsMono",
  );
}
