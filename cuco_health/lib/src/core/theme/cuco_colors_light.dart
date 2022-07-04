import 'dart:ui';

import 'package:flutter/material.dart';

import 'i_cuco_colors.dart';

class CucoColorsLight implements ICucoColors{
  @override
  Color get background => const Color(0xFFFFFFFF);

  @override
  Color get emphasisBackground => const Color(0xFFF3F3F4);

  @override
  Color get primary => const Color(0xFF0094DA);

  @override
  Color get secundary => const Color(0xFF90969A);

  @override
  Color get text => const Color(0xFF535353);

  @override
  final MaterialColor black = const MaterialColor(
    0xFF1D1F23,
    <int, Color>{
      50: Color(0xFFE4E4E5),
      100: Color(0xFFBBBCBD),
      200: Color(0xFF8E8F91),
      300: Color(0xFF616265),
      400: Color(0xFF3F4144),
      500: Color(0xFF1D1F23),
      600: Color(0xFF1A1B1F),
      700: Color(0xFF15171A),
      800: Color(0xFF111215),
      900: Color(0xFF0A0A0C),
    },
  );






}