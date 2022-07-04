import 'package:flutter/material.dart';

abstract class ICucoColors {
  final Color primary;
  final Color secundary;
  final Color background;
  final Color text;
  final Color emphasisBackground;
  final MaterialColor black;

  ICucoColors(
      {required this.primary,
      required this.secundary,
      required this.background,
      required this.text,
      required this.emphasisBackground,
      required this.black});
}
