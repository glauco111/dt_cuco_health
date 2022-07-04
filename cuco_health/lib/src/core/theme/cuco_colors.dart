import 'package:flutter/material.dart';

import 'cuco_colors_dark.dart';
import 'cuco_colors_light.dart';
import 'i_cuco_colors.dart';

class CucoColors {
  CucoColors._();

  static ICucoColors of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? CucoColorsLight()
        : CucoColorsDark();
  }
}
