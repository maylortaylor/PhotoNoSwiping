import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color appPrimaryColor = const Color(0xFF000063);
  static const Color appSecondaryColor = const Color(0xFF005D43);

  static const Color accent1 = const Color(0xFF7E0098);
  static const Color accent2 = const Color(0xFF00976D);
  static const Color accent3 = const Color(0xFF0101A1);

  static const Color appError = const Color(0xFFd32f2f);
  static const Color appWarning = const Color(0xFFff9800);
  static const Color appCaution = const Color(0xFFfdd835);
  static const Color appSuccess = const Color(0xFF43a047);
  static const Color appInfo = const Color(0xFF64b5f6);

  static const Color appOffWhite = const Color(0xFFededed);
  static const Color appWhite = const Color(0xFFf6f6f6);
  static const Color appSmoke = const Color(0xFFF5F5F5);
  static const Color appLightGrey = const Color(0xFFbcbcbc);
  static const Color appGrey = const Color(0xFF9d9d9c);
  static const Color appDarkGrey = const Color(0xFF4a4a49);
  static const Color appBlack = const Color(0xFF000000);

  static const int _appSwatchDarkPrimaryValue = 0xFF20124D;
  static const MaterialColor appSwatchDark =
      MaterialColor(_appSwatchDarkPrimaryValue, <int, Color>{
    50: Color(0xFFE4E3EA),
    100: Color(0xFFBCB8CA),
    200: Color(0xFF9089A6),
    300: Color(0xFF635982),
    400: Color(0xFF413668),
    500: Color(_appSwatchDarkPrimaryValue),
    600: Color(0xFF1C1046),
    700: Color(0xFF180D3D),
    800: Color(0xFF130A34),
    900: Color(0xFF0B0525),
  });

  static const int _appSwatchPrimaryValue = 0xFF6200ea;
  static const MaterialColor appSwatch =
      const MaterialColor(_appSwatchPrimaryValue, <int, Color>{
    50: Color(0xFFECE0FC),
    100: Color(0xFFD0B3F9),
    200: Color(0xFFB180F5),
    300: Color(0xFF914DF0),
    400: Color(0xFF7A26ED),
    500: Color(_appSwatchPrimaryValue),
    600: Color(0xFF5A00E7),
    700: Color(0xFF5000E4),
    800: Color(0xFF4600E1),
    900: Color(0xFF3400DB),
  });
}
